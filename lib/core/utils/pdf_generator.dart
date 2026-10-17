import 'dart:io';
import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:intl/intl.dart';
import '../database/schemas/invoice.dart';
import '../services/settings_service.dart';

/// Formal styles for Tally-like invoice
const _tableBorder = pw.Border(
  top: pw.BorderSide(),
  bottom: pw.BorderSide(),
  left: pw.BorderSide(),
  right: pw.BorderSide(),
);

class PdfGenerator {
  static String _amountInWords(double amount) {
    if (amount == 0) return 'Rupees Zero Only';
    int rupees = amount.floor();
    int paise = ((amount - rupees) * 100).round();
    String res = '${_convertToWords(rupees)} Rupees';
    if (paise > 0) res = '$res and ${_convertToWords(paise)} Paise';
    return '$res Only';
  }

  static String _convertToWords(int val) {
    if (val == 0) return '';
    final ones = ['', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen'];
    final tens = ['', '', 'Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety'];
    String words = '';
    
    if (val >= 10000000) { words += '${_convertToWords(val ~/ 10000000)} Crore '; val %= 10000000; }
    if (val >= 100000) { words += '${_convertToWords(val ~/ 100000)} Lakh '; val %= 100000; }
    if (val >= 1000) { words += '${_convertToWords(val ~/ 1000)} Thousand '; val %= 1000; }
    if (val >= 100) { words += '${_convertToWords(val ~/ 100)} Hundred '; val %= 100; }
    if (val > 0) {
      if (val < 20) { words += ones[val]; }
      else { words += '${tens[val ~/ 10]} ${ones[val % 10]}'; }
    }
    return words.trim();
  }


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
    final date = DateFormat('dd-MMM-yyyy').format(invoice.invoiceDate);
    final cur = _currencyLabel(settings.currencySymbol);
    final isInterState = invoice.taxMode == 'inter_state';

    return pw.Container(
      decoration: const pw.BoxDecoration(border: _tableBorder),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.stretch,
        children: [
          // Row 1: Tax Invoice Centered
          pw.Center(
            child: pw.Padding(
              padding: const pw.EdgeInsets.all(4),
              child: pw.Text(
                invoice.isGstInvoice ? 'TAX INVOICE' : 'INVOICE',
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 14),
              ),
            ),
          ),
          pw.Divider(thickness: 1),

          // Row 2: Header Split
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              // Left: Supplier
              pw.Expanded(
                flex: 1,
                child: pw.Container(
                  padding: const pw.EdgeInsets.all(8),
                  decoration: const pw.BoxDecoration(
                      border: pw.Border(right: pw.BorderSide())),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      if (logoBytes != null)
                        pw.Image(pw.MemoryImage(logoBytes), width: 50, height: 50, fit: pw.BoxFit.contain),
                      pw.Text(settings.businessName, style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 12)),
                      pw.Text(settings.businessAddress, style: const pw.TextStyle(fontSize: 10)),
                      if (settings.businessPhone.isNotEmpty)
                        pw.Text('Phone: ${settings.businessPhone}', style: const pw.TextStyle(fontSize: 10)),
                      if (settings.taxId.isNotEmpty)
                        pw.Text('GSTIN/UIN: ${settings.taxId}', style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 10)),
                      pw.Text('State Name: ${settings.businessState}', style: const pw.TextStyle(fontSize: 10)),
                    ],
                  )
                ),
              ),
              // Right: Invoice Details
              pw.Expanded(
                flex: 1,
                child: pw.Container(
                  padding: const pw.EdgeInsets.all(8),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text('Invoice No.', style: const pw.TextStyle(fontSize: 10)),
                          pw.Text('Dated', style: const pw.TextStyle(fontSize: 10)),
                        ],
                      ),
                      pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(invoice.invoiceNumber, style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 11)),
                          pw.Text(date, style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 11)),
                        ],
                      ),
                      pw.SizedBox(height: 10),
                      if (invoice.placeOfSupplyState.isNotEmpty)
                        pw.Text('Place of Supply: ${invoice.placeOfSupplyState}', style: const pw.TextStyle(fontSize: 10)),
                      if (invoice.isReverseCharge)
                        pw.Text('Reverse Charge: YES', style: const pw.TextStyle(fontSize: 10)),
                    ],
                  )
                )
              )
            ]
          ),
          pw.Divider(thickness: 1),

          // Row 3: Buyer Details
          pw.Container(
            padding: const pw.EdgeInsets.all(8),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text('Buyer (Bill to)', style: const pw.TextStyle(fontSize: 10)),
                pw.Text(invoice.partyName, style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 12)),
                if (invoice.partyPhone != null && invoice.partyPhone!.isNotEmpty)
                  pw.Text('Phone: ${invoice.partyPhone}', style: const pw.TextStyle(fontSize: 10)),
                if (invoice.partyGstin != null && invoice.partyGstin!.isNotEmpty)
                  pw.Text('GSTIN/UIN: ${invoice.partyGstin}', style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 10)),
                if (invoice.partyState != null && invoice.partyState!.isNotEmpty)
                  pw.Text('State Name: ${invoice.partyState}', style: const pw.TextStyle(fontSize: 10)),
              ],
            ),
          ),

          // Row 4: Items Table (Tally Style)
          pw.TableHelper.fromTextArray(
            headers: [
              'Sl No.',
              'Description of Goods',
              'HSN/SAC',
              'Quantity',
              'Rate',
              if (invoice.isGstInvoice) 'Taxable Value',
              if (invoice.isGstInvoice) ...[
                if (isInterState) 'IGST Amount'
                else ...['CGST Amount', 'SGST Amount']
              ],
              'Amount',
            ],
            data: invoice.items.asMap().entries.map((entry) {
              final idx = entry.key + 1;
              final item = entry.value;
              return [
                idx.toString(),
                item.itemName ?? '',
                item.hsnCode ?? '',
                item.quantity.toStringAsFixed(2),
                item.unitPrice.toStringAsFixed(2),
                if (invoice.isGstInvoice) item.taxableAmount.toStringAsFixed(2),
                if (invoice.isGstInvoice) ...[
                  if (isInterState) item.igstAmount.toStringAsFixed(2)
                  else ...[item.cgstAmount.toStringAsFixed(2), item.sgstAmount.toStringAsFixed(2)],
                ],
                item.totalPrice.toStringAsFixed(2),
              ];
            }).toList(),
            border: pw.TableBorder.all(width: 1),
            headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 9),
            cellStyle: const pw.TextStyle(fontSize: 9),
            headerDecoration: const pw.BoxDecoration(color: PdfColors.grey300),
            cellAlignment: pw.Alignment.centerRight,
            cellAlignments: {
              1: pw.Alignment.centerLeft,
              2: pw.Alignment.center,
              3: pw.Alignment.center,
            },
          ),
          
          // Row 5: Total
          pw.Container(
            padding: const pw.EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: const pw.BoxDecoration(border: pw.Border(bottom: pw.BorderSide())),
            child: pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text('Total', style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 10)),
                pw.Text('$cur ${invoice.grandTotal.toStringAsFixed(2)}', style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 11)),
              ]
            )
          ),

          // Row 6: Amount in words
          pw.Container(
            padding: const pw.EdgeInsets.all(8),
            decoration: const pw.BoxDecoration(border: pw.Border(bottom: pw.BorderSide())),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text('Amount Chargeable (in words)', style: const pw.TextStyle(fontSize: 9)),
                pw.Text('INR ${_amountInWords(invoice.grandTotal)}', style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 10)),
              ]
            )
          ),

          // Row 7: Declaration / Auth
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.Expanded(
                flex: 1,
                child: pw.Container(
                  padding: const pw.EdgeInsets.all(8),
                  decoration: const pw.BoxDecoration(border: pw.Border(right: pw.BorderSide())),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text('Declaration', style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 9)),
                      pw.SizedBox(height: 4),
                      pw.Text('We declare that this invoice shows the actual price of the goods described and that all particulars are true and correct.', style: const pw.TextStyle(fontSize: 9)),
                    ]
                  )
                )
              ),
              pw.Expanded(
                flex: 1,
                child: pw.Container(
                  padding: const pw.EdgeInsets.all(8),
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.end,
                    children: [
                      pw.Text('for ${settings.businessName}', style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 10)),
                      pw.SizedBox(height: 40),
                      pw.Text('Authorised Signatory', style: const pw.TextStyle(fontSize: 9)),
                    ]
                  )
                )
              )
            ]
          )
        ],
      )
    );
  }
}
