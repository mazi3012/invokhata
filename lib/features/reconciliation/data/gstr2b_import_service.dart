import 'dart:convert';
import 'gstr2b_models.dart';

class Gstr2bImportService {
  List<Gstr2bInvoice> parseGstr2bJson(String jsonData) {
    final Map<String, dynamic> data = jsonDecode(jsonData);
    final List<dynamic> invoicesJson = data['invoices'] as List<dynamic>;

    return invoicesJson.map((invoiceJson) {
      return Gstr2bInvoice.fromJson(invoiceJson as Map<String, dynamic>);
    }).toList();
  }
}
