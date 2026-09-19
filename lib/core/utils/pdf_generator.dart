import 'dart:io';
import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:intl/intl.dart';
import '../database/schemas/invoice.dart';
import '../services/settings_service.dart';

/// Brand blue used across printed invoices, matching AppColors.primary.
const _pdfBrandColor = PdfColor.fromInt(0xFF4A90D9);
const _pdfBrandDark = PdfColor.fromInt(0xFF357ABD);

class PdfGenerator {
  static String _currencyLabel(String currency) {
    switch (currency.trim()) {
      case '₹':
        return 'INR';
      case r'$':
        return 'USD';
      case '€':
        return 'EUR';
      case '£':
        return 'GBP';
      default:
        return currency.isEmpty ? 'INR' : currency;
    }
  }

  static Future<Uint8List> generatePdfBytes(
      Invoice invoice, AppSettings settings) async {
    final doc = pw.Document();
    final logoBytes = await _loadLogo(settings.logoPath);

    doc.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return _buildInvoiceContent(invoice, settings, logoBytes);
        },
      ),
    );

    return await doc.save();
  }

  static Future<Uint8List?> _loadLogo(String logoPath) async {
    if (logoPath.isEmpty) return null;
    final file = File(logoPath);
    if (!await file.exists()) return null;
    return file.readAsBytes();
  }

  static pw.Widget _buildInvoiceContent(
      Invoice invoice, AppSettings settings, Uint8List? logoBytes) {
    final date = DateFormat('dd/MM/yyyy hh:mm a').format(invoice.invoiceDate);
    final cur = _currencyLabel(settings.currencySymbol);
    final isInterState = invoice.taxMode == 'inter_state';

    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        // Header with dynamic business branding
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            if (logoBytes != null)
              pw.Padding(
                padding: const pw.EdgeInsets.only(right: 12),
                child: pw.Image(pw.MemoryImage(logoBytes),
                    width: 64, height: 64, fit: pw.BoxFit.contain),
              ),
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(settings.businessName,
                    style: pw.TextStyle(
                        fontSize: 20, fontWeight: pw.FontWeight.bold)),
                pw.SizedBox(height: 4),
                pw.Text(settings.businessAddress,
                    style: const pw.TextStyle(
                        fontSize: 10, color: PdfColors.grey700)),
                pw.Text('Ph: ${settings.businessPhone}',
                    style: const pw.TextStyle(
                        fontSize: 10, color: PdfColors.grey700)),
                if (settings.taxId.isNotEmpty)
                  pw.Text('Tax ID: ${settings.taxId}',
                      style: const pw.TextStyle(
                          fontSize: 10, color: PdfColors.grey700)),
                pw.Text('State: ${settings.businessState}',
                    style: const pw.TextStyle(
                        fontSize: 10, color: PdfColors.grey700)),
              ],
            ),
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.end,
              children: [
                pw.Text('TAX INVOICE',
                    style: pw.TextStyle(
                        fontSize: 18,
                        fontWeight: pw.FontWeight.bold,
                        color: _pdfBrandColor)),
                pw.SizedBox(height: 4),
                pw.Text('Invoice No: ${invoice.invoiceNumber}'),
                pw.Text('Date: $date'),
              ],
            ),
          ],
        ),
        pw.Divider(thickness: 1, height: 30),

        // Customer Info
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text('Billed To:',
                    style: pw.TextStyle(fontWeight: pw.FontWeight.bold)),
                pw.Text(invoice.partyName,
                    style: pw.TextStyle(
                        fontSize: 14, fontWeight: pw.FontWeight.bold)),
                if (invoice.partyPhone != null)
                  pw.Text('Phone: ${invoice.partyPhone}'),
                if (invoice.partyGstin != null)
                  pw.Text('GSTIN: ${invoice.partyGstin}'),
                if (invoice.partyState != null)
                  pw.Text('State: ${invoice.partyState}'),
              ],
            ),
          ],
        ),
        pw.SizedBox(height: 20),

        // Items Table
        pw.TableHelper.fromTextArray(
          headers: [
            'Item Description',
            'Qty',
            'Rate ($cur)',
            if (isInterState) 'IGST ($cur)' else 'CGST ($cur)',
            if (!isInterState) 'SGST ($cur)',
            'Total ($cur)',
          ],
          data: invoice.items.map((item) {
            return [
              item.itemName,
              item.quantity.toStringAsFixed(0),
              item.unitPrice.toStringAsFixed(2),
              isInterState
                  ? item.igstAmount.toStringAsFixed(2)
                  : item.cgstAmount.toStringAsFixed(2),
              if (!isInterState) item.sgstAmount.toStringAsFixed(2),
              item.totalPrice.toStringAsFixed(2),
            ];
          }).toList(),
          headerStyle: pw.TextStyle(
              fontWeight: pw.FontWeight.bold, color: PdfColors.white),
          headerDecoration: const pw.BoxDecoration(color: _pdfBrandDark),
          cellAlignment: pw.Alignment.centerRight,
          cellAlignments: {0: pw.Alignment.centerLeft},
        ),
        pw.SizedBox(height: 20),

        // Calculation & Totals Section
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.end,
          children: [
            pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.end,
              children: [
                pw.Text('Subtotal: $cur${invoice.subtotal.toStringAsFixed(2)}'),
                if (invoice.isGstInvoice && isInterState)
                  pw.Text('IGST: $cur${invoice.totalIgst.toStringAsFixed(2)}'),
                if (invoice.isGstInvoice && !isInterState) ...[
                  pw.Text('CGST: $cur${invoice.totalCgst.toStringAsFixed(2)}'),
                  pw.Text('SGST: $cur${invoice.totalSgst.toStringAsFixed(2)}'),
                ],
                if (invoice.discountAmount > 0)
                  pw.Text(
                      'Discount: -$cur${invoice.discountAmount.toStringAsFixed(2)}'),
                pw.Divider(thickness: 1),
                pw.Text(
                    'Grand Total: $cur${invoice.grandTotal.toStringAsFixed(2)}',
                    style: pw.TextStyle(
                        fontSize: 16, fontWeight: pw.FontWeight.bold)),
                pw.SizedBox(height: 8),
                pw.Text(
                    'Amount Paid: $cur${invoice.paidAmount.toStringAsFixed(2)}'),
                pw.Text(
                    'Balance Due: $cur${invoice.dueAmount.toStringAsFixed(2)}',
                    style: pw.TextStyle(
                        color: invoice.dueAmount > 0
                            ? PdfColors.red
                            : PdfColors.green)),
              ],
            ),
          ],
        ),
        pw.Spacer(),

        // Footer
        pw.Center(
          child: pw.Text('Thank you for your business! Powered by InvoKhata.',
              style:
                  const pw.TextStyle(fontSize: 10, color: PdfColors.grey700)),
        ),
      ],
    );
  }
}
