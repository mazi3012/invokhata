import 'dart:convert';
import 'dart:typed_data';

import 'package:archive/archive.dart';
import 'package:intl/intl.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import '../../../../core/database/schemas/purchase.dart';
import '../../../../core/services/settings_service.dart';
import '../../../../core/utils/einvoice_generator.dart';
import '../../../../core/utils/einvoice_schema.dart';
import '../../../../core/utils/india_gst.dart';
import 'gst_report_models.dart';
import 'gst_report_validator.dart';

enum GstExportFormat { pdf, xlsx, gstr1Json, gstr3bJson }

class GstExportArtifact {
  final String fileName;
  final String mimeType;
  final Uint8List bytes;
  final GstValidationResult validation;

  const GstExportArtifact({
    required this.fileName,
    required this.mimeType,
    required this.bytes,
    required this.validation,
  });
}

class GstExportException implements Exception {
  final GstValidationResult validation;

  const GstExportException(this.validation);

  @override
  String toString() =>
      'GST export blocked by ${validation.errorCount} error(s).';
}

class GstExportService {
  const GstExportService._();
  static String exportEInvoice(EInvoiceSchema schema) {
    final EInvoiceGenerator generator = EInvoiceGenerator();
    return generator.generateJson(schema);
  }

  static List<String> exportBatchEInvoices(List<EInvoiceSchema> schemas) {
    return schemas.map(exportEInvoice).toList();
  }
  static Map<String, dynamic> generateRCMReportData(double rcmLiability, double rcmITC) {
    return {
      'rcmLiability': rcmLiability,
      'rcmITCClaimed': rcmITC,
    };
  }

  static Map<String, dynamic> gstr1Map(GstReportData data, AppSettings settings) =>
      _gstr1(data, settings);

  static Map<String, dynamic> generateRCMReport(double liability, double itc) {
    return {
      'liabilityUnderRCM': liability,
      'itcOnRCM': itc,
    };
  }

  static Future<Map<String, dynamic>> generateRCMSummary(
      List<Purchase> purchases) async {
    double totalRCMLiability = 0.0;
    double totalRCMCredit = 0.0;

    for (final purchase in purchases) {
      if (purchase.isReverseCharge && !purchase.rcmPaid) {
        totalRCMLiability += purchase.rcmTaxAmount;
      }

      if (purchase.rcmPaid) {
        totalRCMCredit += purchase.rcmTaxAmount;
      }
    }

    return generateRCMReport(totalRCMLiability, totalRCMCredit);
  }
  static Map<String, dynamic> gstr3bMap(GstReportData data, AppSettings settings) =>
      _gstr3b(data, settings);


  static Future<Uint8List> generatePdfBytes({
    required GstReportData data,
    required AppSettings settings,
  }) async {
    final validation = GstReportValidator.validate(
      data: data,
      settings: settings,
      tab: GstReportType.gstr1,
    );
    return _pdf(data, settings, validation);
  }

  static Future<GstExportArtifact> export({
    required GstReportData data,
    required AppSettings settings,
    required GstExportFormat format,
    required GstReportType tab,
  }) async {
    final validation = GstReportValidator.validate(
      data: data,
      settings: settings,
      tab: tab,
      requireReturnPeriod: format == GstExportFormat.gstr1Json ||
          format == GstExportFormat.gstr3bJson,
    );
    final isJson = format == GstExportFormat.gstr1Json ||
        format == GstExportFormat.gstr3bJson;
    if (isJson && validation.hasErrors) throw GstExportException(validation);

    switch (format) {
      case GstExportFormat.pdf:
        return GstExportArtifact(
          fileName: _fileName(data, 'GST_Report', 'pdf'),
          mimeType: 'application/pdf',
          bytes: await _pdf(data, settings, validation),
          validation: validation,
        );
      case GstExportFormat.xlsx:
        return GstExportArtifact(
          fileName: _fileName(data, 'GST_Report', 'xlsx'),
          mimeType:
              'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
          bytes: _xlsx(data, settings, validation),
          validation: validation,
        );
      case GstExportFormat.gstr1Json:
        return GstExportArtifact(
          fileName: _fileName(data, 'GSTR1', 'json'),
          mimeType: 'application/json',
          bytes: Uint8List.fromList(utf8.encode(
            const JsonEncoder.withIndent('  ').convert(_gstr1(data, settings)),
          )),
          validation: validation,
        );
      case GstExportFormat.gstr3bJson:
        return GstExportArtifact(
          fileName: _fileName(data, 'GSTR3B', 'json'),
          mimeType: 'application/json',
          bytes: Uint8List.fromList(utf8.encode(
            const JsonEncoder.withIndent('  ').convert(_gstr3b(data, settings)),
          )),
          validation: validation,
        );
    }
  }

  /// Packages the human-readable reports and both return payloads into one
  /// archive. The JSON files use their own strict validation profiles; this
  /// prevents an "Export All" action from silently including an invalid
  /// statutory payload while still allowing PDF/XLSX review exports.
  static Future<GstExportArtifact> exportAll({
    required GstReportData data,
    required AppSettings settings,
  }) async {
    final artifacts = <GstExportArtifact>[
      await export(
        data: data,
        settings: settings,
        format: GstExportFormat.pdf,
        tab: GstReportType.gstr1,
      ),
      await export(
        data: data,
        settings: settings,
        format: GstExportFormat.xlsx,
        tab: GstReportType.gstr1,
      ),
      await export(
        data: data,
        settings: settings,
        format: GstExportFormat.gstr1Json,
        tab: GstReportType.gstr1,
      ),
      await export(
        data: data,
        settings: settings,
        format: GstExportFormat.gstr3bJson,
        tab: GstReportType.gstr3b,
      ),
    ];
    final archive = Archive();
    for (final artifact in artifacts) {
      archive.add(ArchiveFile.bytes(artifact.fileName, artifact.bytes));
    }
    return GstExportArtifact(
      fileName: _fileName(data, 'GST_Reports_All', 'zip'),
      mimeType: 'application/zip',
      bytes: Uint8List.fromList(ZipEncoder().encodeBytes(archive)),
      validation: GstValidationResult([
        ...artifacts.expand((artifact) => artifact.validation.issues),
      ]),
    );
  }

  static String _fileName(GstReportData data, String prefix, String extension) {
    final start = DateFormat('yyyyMMdd').format(data.startDate);
    final end = DateFormat('yyyyMMdd').format(data.endDate);
    return '${prefix}_${start}_$end.$extension';
  }

  static Map<String, dynamic> _gstr1(
    GstReportData data,
    AppSettings settings,
  ) {
    final b2b = <Map<String, dynamic>>[];
    final b2cl = <Map<String, dynamic>>[];
    final b2cs = <Map<String, dynamic>>[];
    final exp = <Map<String, dynamic>>[];

    for (final document in data.sales) {
      final invoice = {
        'inum': document.documentNumber,
        'idt': _gstDate(document.documentDate),
        'val': _round(document.documentTotal),
        'pos': document.placeOfSupplyCode ?? '',
        'rchrg': document.isReverseCharge ? 'Y' : 'N',
        'inv_typ': _gstr1InvoiceType(document.invoiceType),
        'itms': document.lines.map(_itemJson).toList(),
      };
      if (document.isB2B) {
        b2b.add({
          'ctin': document.partyGstin,
          'inv': [invoice]
        });
      } else if (document.isInterState && document.documentTotal >= 100000) {
        b2cl.add({
          'pos': document.placeOfSupplyCode ?? '',
          'inv': [invoice]
        });
      } else {
        for (final line in document.lines) {
          b2cs.add({
            'sply_ty': document.isInterState ? 'INTER' : 'INTRA',
            'pos': document.placeOfSupplyCode ?? '',
            'typ': 'OE',
            'txval': _round(line.taxableValue),
            'iamt': _round(line.igst),
            'camt': _round(line.cgst),
            'samt': _round(line.sgst),
            'csamt': _round(line.cess),
            'rt': _round(line.gstRate),
          });
        }
      }
      // Export invoices need explicit export metadata in a legally filed
      // return. There is no export/port model yet, so do not guess EXPWP/EXPWOP.
      if (document.invoiceType == 'export') {
        exp.add({
          'exp_typ': 'EXPWP',
          'inv': [invoice],
          '_review':
              'Confirm export type, port code and shipping bill before filing.',
        });
      }
    }

    final cdnr = <Map<String, dynamic>>[];
    final cdnur = <Map<String, dynamic>>[];

    for (final document in data.creditNotes) {
      final isCredit = document.noteType != 'debit_note';
      final noteTypeChar = isCredit ? 'C' : 'D';
      final note = {
        'ntty': noteTypeChar,
        'nt_num': document.documentNumber,
        'nt_dt': _gstDate(document.documentDate),
        'p_gst': 'N',
        'val': _round(document.documentTotal),
        'pos': document.placeOfSupplyCode ?? '',
        'rchrg': document.isReverseCharge ? 'Y' : 'N',
        'inv_typ': 'R',
        'inum': document.originalInvoiceNumber ?? '',
        'idt': document.originalInvoiceDate != null
            ? _gstDate(document.originalInvoiceDate!)
            : '',
        'itms': document.lines.map(_itemJson).toList(),
      };

      if (document.isB2B) {
        cdnr.add({
          'ctin': document.partyGstin,
          'nt': [note],
        });
      } else {
        cdnur.add({
          'typ': (document.isInterState && document.documentTotal >= 100000)
              ? 'B2CL'
              : 'B2CS',
          'ntty': noteTypeChar,
          'nt_num': document.documentNumber,
          'nt_dt': _gstDate(document.documentDate),
          'p_gst': 'N',
          'val': _round(document.documentTotal),
          'pos': document.placeOfSupplyCode ?? '',
          'inum': document.originalInvoiceNumber ?? '',
          'idt': document.originalInvoiceDate != null
              ? _gstDate(document.originalInvoiceDate!)
              : '',
          'itms': document.lines.map(_itemJson).toList(),
        });
      }
    }

    final docIssueList = <Map<String, dynamic>>[
      {
        'doc_num': 1,
        'from': data.sales.isEmpty ? '' : data.sales.last.documentNumber,
        'to': data.sales.isEmpty ? '' : data.sales.first.documentNumber,
        'totnum': data.sales.length,
        'cancel': 0,
        'net_issue': data.sales.length,
      },
    ];

    if (data.creditNotes.isNotEmpty) {
      final cnList = data.creditNotes
          .where((n) => n.noteType != 'debit_note')
          .toList();
      if (cnList.isNotEmpty) {
        docIssueList.add({
          'doc_num': 4, // GST doc_num 4 is Credit Note
          'from': cnList.last.documentNumber,
          'to': cnList.first.documentNumber,
          'totnum': cnList.length,
          'cancel': 0,
          'net_issue': cnList.length,
        });
      }
      final dnList = data.creditNotes
          .where((n) => n.noteType == 'debit_note')
          .toList();
      if (dnList.isNotEmpty) {
        docIssueList.add({
          'doc_num': 5, // GST doc_num 5 is Debit Note
          'from': dnList.last.documentNumber,
          'to': dnList.first.documentNumber,
          'totnum': dnList.length,
          'cancel': 0,
          'net_issue': dnList.length,
        });
      }
    }

    return {
      'gstin': normalizeGstin(settings.taxId),
      'fp': data.endDate.month.toString().padLeft(2, '0') +
          data.endDate.year.toString(),
      'version': 'GSTN_SCHEMA_REVIEW_REQUIRED',
      'b2b': b2b,
      'b2cl': b2cl,
      'b2cs': b2cs,
      'cdnr': cdnr,
      'cdnur': cdnur,
      'exp': exp,
      'hsn': {
        'data': data.hsnSummary
            .map((summary) => {
                  'hsn_sc': summary.hsnSac == 'MISSING' ? '' : summary.hsnSac,
                  'desc': summary.description,
                  'uqc': summary.unit.toUpperCase(),
                  'qty': _round(summary.quantity),
                  'txval': _round(summary.taxableValue),
                  'iamt': _round(summary.igst),
                  'camt': _round(summary.cgst),
                  'samt': _round(summary.sgst),
                  'csamt': _round(summary.cess),
                  'rt': _round(summary.gstRate),
                })
            .toList(),
      },
      'doc_issue': {
        'doc_det': docIssueList,
      },
      '_notes': [
        'Credit/debit notes (CDNR & CDNUR) are included from the local database.',
        'Validate this payload against the current GST Portal offline schema before filing.',
      ],
    };
  }

  static Map<String, dynamic> _gstr3b(
    GstReportData data,
    AppSettings settings,
  ) {
    final outward = <String, dynamic>{
      'txval': _round(data.salesSummary.taxableValue),
      'iamt': _round(data.salesSummary.igst),
      'camt': _round(data.salesSummary.cgst),
      'samt': _round(data.salesSummary.sgst),
      'csamt': _round(data.salesSummary.cess),
    };
    final interStateB2c = data.sales
        .where((document) => !document.isB2B && document.isInterState)
        .fold<double>(
            0, (total, document) => total + document.documentTaxableValue);
    final otherState = data.sales
        .where((document) => !document.isB2B && document.isInterState)
        .fold<_StateSupplyTotals>(_StateSupplyTotals(), (totals, document) {
      final code = document.placeOfSupplyCode ?? 'UNMAPPED';
      final existing = totals.byState.putIfAbsent(
        code,
        () => _StateSupplyTotals(),
      );
      existing.taxableValue += document.documentTaxableValue;
      existing.igst += document.documentIgst;
      return totals;
    });

    return {
      'gstin': normalizeGstin(settings.taxId),
      'fp': data.endDate.month.toString().padLeft(2, '0') +
          data.endDate.year.toString(),
      'version': 'GSTN_SCHEMA_REVIEW_REQUIRED',
      'sup_details': {
        'osup_det': outward,
        'osup_zero': _emptyTaxRow(),
        'osup_nil_exmp': _emptyTaxRow(),
        'isup_rev': _reverseChargeRow(data),
        'others': _emptyTaxRow(),
      },
      'inter_sup': {
        'unreg_details': otherState.byState.entries
            .where((entry) => entry.key != 'UNMAPPED')
            .map((entry) => {
                  'pos': entry.key,
                  'txval': _round(entry.value.taxableValue),
                  'iamt': _round(entry.value.igst),
                })
            .toList(),
        'unmapped_value': _round(interStateB2c -
            otherState.byState.entries
                .where((entry) => entry.key != 'UNMAPPED')
                .fold<double>(
                    0, (sum, entry) => sum + entry.value.taxableValue)),
        'comp_details': <Map<String, dynamic>>[],
        'uin_details': <Map<String, dynamic>>[],
      },
      'itc_elg': {
        'itcavl': <Map<String, dynamic>>[
          {
            'ty': 'OTH',
            'iamt': 0,
            'camt': 0,
            'samt': 0,
            'csamt': 0,
            '_note':
                'Eligible ITC requires GSTR-2B and taxpayer review; local purchases are not auto-claimed.',
          },
        ],
        'itc_rev': <Map<String, dynamic>>[],
        'itc_net': _emptyTaxRow(),
        'itc_inelg': <Map<String, dynamic>>[],
      },
      'inward_sup': {
        'isup_details': <Map<String, dynamic>>[],
      },
      'tax_liab': {
        'interest': 0,
        'late_fee': 0,
      },
      '_notes': [
        '3B is a summary return. Confirm auto-populated GSTR-1/1A and GSTR-2B values on the GST Portal.',
        'This offline payload is a review aid, not a claim that local purchase tax is eligible ITC.',
      ],
    };
  }

  static Map<String, dynamic> _reverseChargeRow(GstReportData data) {
    final reverse =
        data.purchases.where((document) => document.isReverseCharge);
    return {
      'txval': _round(reverse.fold<double>(
          0, (total, document) => total + document.documentTaxableValue)),
      'iamt': _round(reverse.fold<double>(
          0, (total, document) => total + document.documentIgst)),
      'camt': _round(reverse.fold<double>(
          0, (total, document) => total + document.documentCgst)),
      'samt': _round(reverse.fold<double>(
          0, (total, document) => total + document.documentSgst)),
      'csamt': _round(reverse.fold<double>(
          0, (total, document) => total + document.documentCess)),
    };
  }

  static Map<String, dynamic> _emptyTaxRow() => {
        'txval': 0,
        'iamt': 0,
        'camt': 0,
        'samt': 0,
        'csamt': 0,
      };

  static Map<String, dynamic> _itemJson(GstLineRecord line) => {
        'num': 1,
        'itm_det': {
          'rt': _round(line.gstRate),
          'txval': _round(line.taxableValue),
          'iamt': _round(line.igst),
          'hsn_sc': line.hsnSac ?? '',
          'qty': _round(line.quantity),
          'uqc': line.unit.toUpperCase(),
          'camt': _round(line.cgst),
          'samt': _round(line.sgst),
          'csamt': _round(line.cess),
        },
      };

  static String _gstr1InvoiceType(String invoiceType) {
    switch (invoiceType) {
      case 'tax_invoice':
        return 'R';
      case 'bill_of_supply':
        return 'SEWP';
      default:
        return invoiceType;
    }
  }

  static String _gstDate(DateTime value) =>
      DateFormat('dd-MM-yyyy').format(value);

  static dynamic _round(double value) => double.parse(value.toStringAsFixed(2));

  static Future<Uint8List> _pdf(
    GstReportData data,
    AppSettings settings,
    GstValidationResult validation,
  ) async {
    final document = pw.Document();
    final moneyFormat = NumberFormat.currency(
      symbol: settings.currencySymbol,
      decimalDigits: 2,
    );
    document.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4.landscape,
        margin: const pw.EdgeInsets.all(28),
        build: (context) => [
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
            children: [
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Text(settings.businessName,
                      style: pw.TextStyle(
                          fontSize: 19, fontWeight: pw.FontWeight.bold)),
                  pw.SizedBox(height: 4),
                  pw.Text(
                      'GST report · ${data.startDate.day}/${data.startDate.month}/${data.startDate.year} – '
                      '${data.endDate.day}/${data.endDate.month}/${data.endDate.year}'),
                  if (settings.taxId.isNotEmpty)
                    pw.Text('GSTIN: ${settings.taxId}'),
                ],
              ),
              pw.Text(
                  'Prepared ${DateFormat('dd MMM yyyy, HH:mm').format(DateTime.now())}'),
            ],
          ),
          pw.SizedBox(height: 18),
          pw.TableHelper.fromTextArray(
            headers: const [
              'Direction',
              'Documents',
              'Taxable value',
              'CGST',
              'SGST',
              'IGST',
              'Cess',
              'Total tax'
            ],
            data: [
              _summaryPdfRow('Sales', data.salesSummary, moneyFormat),
              _summaryPdfRow('Purchases', data.purchaseSummary, moneyFormat),
            ],
            headerStyle: pw.TextStyle(
                fontWeight: pw.FontWeight.bold, color: PdfColors.white),
            headerDecoration:
                const pw.BoxDecoration(color: PdfColor.fromInt(0xFF357ABD)),
            cellAlignments: {0: pw.Alignment.centerLeft},
          ),
          pw.SizedBox(height: 18),
          pw.Text('HSN / SAC summary',
              style:
                  pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
          pw.SizedBox(height: 8),
          pw.TableHelper.fromTextArray(
            headers: const [
              'HSN/SAC',
              'Description',
              'Qty',
              'Rate',
              'Taxable',
              'CGST',
              'SGST',
              'IGST',
              'Cess'
            ],
            data: data.hsnSummary
                .take(30)
                .map((summary) => [
                      summary.hsnSac == 'MISSING' ? 'Missing' : summary.hsnSac,
                      summary.description,
                      summary.quantity.toStringAsFixed(2),
                      '${summary.gstRate.toStringAsFixed(2)}%',
                      moneyFormat.format(summary.taxableValue),
                      moneyFormat.format(summary.cgst),
                      moneyFormat.format(summary.sgst),
                      moneyFormat.format(summary.igst),
                      moneyFormat.format(summary.cess),
                    ])
                .toList(),
            headerStyle: pw.TextStyle(
                fontWeight: pw.FontWeight.bold, color: PdfColors.white),
            headerDecoration:
                const pw.BoxDecoration(color: PdfColor.fromInt(0xFF4A90D9)),
            cellStyle: const pw.TextStyle(fontSize: 8),
          ),
          pw.SizedBox(height: 18),
          pw.Text('Validation',
              style:
                  pw.TextStyle(fontSize: 14, fontWeight: pw.FontWeight.bold)),
          ...validation.issues.take(12).map((issue) => pw.Padding(
                padding: const pw.EdgeInsets.only(top: 4),
                child: pw.Text(
                    '${issue.isError ? 'ERROR' : 'REVIEW'} · ${issue.message}'
                    '${issue.documentNumber == null ? '' : ' (${issue.documentNumber})'}'),
              )),
          pw.SizedBox(height: 12),
          pw.Text(
              'Report only — review against the current GST Portal schema and records before filing.',
              style: const pw.TextStyle(fontSize: 8, color: PdfColors.grey700)),
        ],
      ),
    );
    return document.save();
  }

  static List<String> _summaryPdfRow(
    String label,
    GstTaxSummary summary,
    NumberFormat money,
  ) {
    return [
      label,
      summary.documentCount.toString(),
      money.format(summary.taxableValue),
      money.format(summary.cgst),
      money.format(summary.sgst),
      money.format(summary.igst),
      money.format(summary.cess),
      money.format(summary.totalTax),
    ];
  }

  static Uint8List _xlsx(
    GstReportData data,
    AppSettings settings,
    GstValidationResult validation,
  ) {
    final archive = Archive();
    final sharedStrings = <String>[];
    final summaryRows = <List<String>>[
      ['GST report', settings.businessName],
      [
        'Period',
        '${DateFormat('dd/MM/yyyy').format(data.startDate)} - ${DateFormat('dd/MM/yyyy').format(data.endDate)}'
      ],
      ['Business GSTIN', settings.taxId],
      [],
      [
        'Direction',
        'Documents',
        'Taxable value',
        'CGST',
        'SGST',
        'IGST',
        'Cess',
        'Total tax'
      ],
      _xlsxSummaryRow('Sales', data.salesSummary),
      _xlsxSummaryRow('Purchases', data.purchaseSummary),
    ];
    final hsnRows = <List<String>>[
      [
        'HSN/SAC',
        'Description',
        'Unit',
        'Quantity',
        'GST rate',
        'Taxable value',
        'CGST',
        'SGST',
        'IGST',
        'Cess'
      ],
      ...data.hsnSummary.map((summary) => [
            summary.hsnSac,
            summary.description,
            summary.unit,
            summary.quantity.toStringAsFixed(2),
            summary.gstRate.toStringAsFixed(2),
            summary.taxableValue.toStringAsFixed(2),
            summary.cgst.toStringAsFixed(2),
            summary.sgst.toStringAsFixed(2),
            summary.igst.toStringAsFixed(2),
            summary.cess.toStringAsFixed(2),
          ]),
    ];
    final documentRows = <List<String>>[
      [
        'Direction',
        'Document number',
        'Date',
        'Party',
        'GSTIN',
        'Place of supply',
        'Taxable value',
        'CGST',
        'SGST',
        'IGST',
        'Cess',
        'Total'
      ],
      ...data.filteredDocuments.map((document) => [
            document.direction.name,
            document.documentNumber,
            DateFormat('dd/MM/yyyy').format(document.documentDate),
            document.partyName,
            document.partyGstin ?? '',
            document.placeOfSupplyState ?? '',
            document.documentTaxableValue.toStringAsFixed(2),
            document.documentCgst.toStringAsFixed(2),
            document.documentSgst.toStringAsFixed(2),
            document.documentIgst.toStringAsFixed(2),
            document.documentCess.toStringAsFixed(2),
            document.documentTotal.toStringAsFixed(2),
          ]),
    ];
    final validationRows = <List<String>>[
      ['Severity', 'Code', 'Document', 'Message'],
      ...validation.issues.map((issue) => [
            issue.isError ? 'Error' : 'Review',
            issue.code,
            issue.documentNumber ?? '',
            issue.message,
          ]),
    ];

    final sheets = <String, List<List<String>>>{
      'Summary': summaryRows,
      'HSN Summary': hsnRows,
      'Documents': documentRows,
      'Validation': validationRows,
    };
    for (final rows in sheets.values) {
      for (final row in rows) {
        for (final value in row) {
          if (!sharedStrings.contains(value)) sharedStrings.add(value);
        }
      }
    }

    archive.add(ArchiveFile.string(
        '[Content_Types].xml', _contentTypes(sheets.length)));
    archive.add(ArchiveFile.string('_rels/.rels', _rootRelationships()));
    archive.add(
        ArchiveFile.string('xl/workbook.xml', _workbook(sheets.keys.toList())));
    archive.add(ArchiveFile.string(
        'xl/_rels/workbook.xml.rels', _workbookRelationships(sheets.length)));
    archive.add(ArchiveFile.string(
        'xl/sharedStrings.xml', _sharedStrings(sharedStrings)));
    archive.add(ArchiveFile.string('xl/styles.xml', _styles()));
    for (var index = 0; index < sheets.length; index++) {
      archive.add(ArchiveFile.string(
        'xl/worksheets/sheet${index + 1}.xml',
        _worksheet(sheets.values.elementAt(index), sharedStrings),
      ));
    }
    return Uint8List.fromList(ZipEncoder().encodeBytes(archive));
  }

  static List<String> _xlsxSummaryRow(String label, GstTaxSummary summary) => [
        label,
        summary.documentCount.toString(),
        summary.taxableValue.toStringAsFixed(2),
        summary.cgst.toStringAsFixed(2),
        summary.sgst.toStringAsFixed(2),
        summary.igst.toStringAsFixed(2),
        summary.cess.toStringAsFixed(2),
        summary.totalTax.toStringAsFixed(2),
      ];

  static String _xml(String value) => value
      .replaceAll('&', '&amp;')
      .replaceAll('<', '&lt;')
      .replaceAll('>', '&gt;')
      .replaceAll('"', '&quot;')
      .replaceAll("'", '&apos;');

  static String _contentTypes(int sheetCount) =>
      '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">
<Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/>
<Default Extension="xml" ContentType="application/xml"/>
<Override PartName="/xl/workbook.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml"/>
<Override PartName="/xl/sharedStrings.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.sharedStrings+xml"/>
<Override PartName="/xl/styles.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.styles+xml"/>
${List.generate(sheetCount, (index) => '<Override PartName="/xl/worksheets/sheet${index + 1}.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml"/>').join()}
</Types>''';

  static String _rootRelationships() =>
      '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
<Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="xl/workbook.xml"/>
</Relationships>''';

  static String _workbook(List<String> sheets) =>
      '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<workbook xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships">
<sheets>${List.generate(sheets.length, (index) => '<sheet name="${_xml(sheets[index])}" sheetId="${index + 1}" r:id="rId${index + 1}"/>').join()}</sheets>
</workbook>''';

  static String _workbookRelationships(int sheetCount) =>
      '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
${List.generate(sheetCount, (index) => '<Relationship Id="rId${index + 1}" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet" Target="worksheets/sheet${index + 1}.xml"/>').join()}
<Relationship Id="rId${sheetCount + 1}" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/sharedStrings" Target="sharedStrings.xml"/>
<Relationship Id="rId${sheetCount + 2}" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles" Target="styles.xml"/>
</Relationships>''';

  static String _sharedStrings(List<String> values) =>
      '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<sst xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main" count="${values.length}" uniqueCount="${values.length}">
${values.map((value) => '<si><t>${_xml(value)}</t></si>').join()}
</sst>''';

  static String _styles() =>
      '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<styleSheet xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main">
<fonts count="2"><font><sz val="11"/><name val="Aptos"/></font><font><b/><sz val="11"/><name val="Aptos"/></font></fonts>
<fills count="2"><fill><patternFill patternType="none"/></fill><fill><patternFill patternType="gray125"/></fill></fills>
<borders count="1"><border><left/><right/><top/><bottom/><diagonal/></border></borders>
<cellStyleXfs count="1"><xf numFmtId="0" fontId="0" fillId="0" borderId="0"/></cellStyleXfs>
<cellXfs count="2"><xf numFmtId="0" fontId="0" fillId="0" borderId="0"/><xf numFmtId="0" fontId="1" fillId="0" borderId="0"/></cellXfs>
</styleSheet>''';

  static String _worksheet(
      List<List<String>> rows, List<String> sharedStrings) {
    final xmlRows = <String>[];
    for (var rowIndex = 0; rowIndex < rows.length; rowIndex++) {
      final cells = <String>[];
      for (var columnIndex = 0;
          columnIndex < rows[rowIndex].length;
          columnIndex++) {
        final value = rows[rowIndex][columnIndex];
        if (value.isEmpty) continue;
        final reference = '${_columnName(columnIndex + 1)}${rowIndex + 1}';
        final sharedIndex = sharedStrings.indexOf(value);
        cells.add(
            '<c r="$reference" t="s"${rowIndex == 0 ? ' s="1"' : ''}><v>$sharedIndex</v></c>');
      }
      xmlRows.add('<row r="${rowIndex + 1}">${cells.join()}</row>');
    }
    return '''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<worksheet xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main"><sheetData>${xmlRows.join()}</sheetData></worksheet>''';
  }

  static String _columnName(int column) {
    var value = column;
    var name = '';
    while (value > 0) {
      final remainder = (value - 1) % 26;
      name = String.fromCharCode(65 + remainder) + name;
      value = (value - remainder - 1) ~/ 26;
    }
    return name;
  }
}

class _StateSupplyTotals {
  final byState = <String, _StateSupplyTotals>{};
  double taxableValue = 0;
  double igst = 0;
}
