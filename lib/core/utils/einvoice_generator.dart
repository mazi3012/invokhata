import 'dart:convert';
import 'einvoice_schema.dart';

class EInvoiceGenerator {
  // Convert EInvoiceSchema to JSON
  String generateJson(EInvoiceSchema schema) {
    final Map<String, dynamic> data = {
      'Version': schema.version,
      'IRN': schema.irn,
      'SupplyType': schema.supplyType,
      'DocumentType': schema.documentType,
      'InvoiceNumber': schema.invoiceNumber,
      'InvoiceDate': schema.invoiceDate.toIso8601String(),
      'SellerDetails': {
        'Name': schema.sellerName,
        'GSTIN': schema.sellerGstin,
        'Address': schema.sellerAddress,
      },
      'BuyerDetails': {
        'Name': schema.buyerName,
        'GSTIN': schema.buyerGstin,
        'Address': schema.buyerAddress,
      },
      'TaxDetails': {
        'TaxableValue': schema.taxableValue,
        'CGST': schema.cgst,
        'SGST': schema.sgst,
        'IGST': schema.igst,
        'Cess': schema.cess,
        'TotalValue': schema.totalValue,
      },
    };

    // Optional fields
    if (schema.dispatchDetails != null) {
      data['DispatchDetails'] = schema.dispatchDetails;
    }
    if (schema.shipToDetails != null) {
      data['ShipToDetails'] = schema.shipToDetails;
    }

    return json.encode(data);
  }
}