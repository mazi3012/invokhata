import 'dart:convert';
import 'package:invokhata/core/database/schemas/eway_bill.dart';

class EWayBillExportService {
  // Convert E-Way Bill object to JSON
  String exportEWayBillToJson(EWayBill ewayBill) {
    final Map<String, dynamic> data = {
      'ewayBillNumber': ewayBill.ewayBillNumber,
      'ewayBillDate': ewayBill.ewayBillDate?.toIso8601String(),
      'validUpto': ewayBill.validUpto?.toIso8601String(),
      'transporterName': ewayBill.transporterName,
      'transporterId': ewayBill.transporterId,
      'vehicleNumber': ewayBill.vehicleNumber,
      'placeOfDispatch': ewayBill.dispatchFromAddress ?? ewayBill.dispatchFromState,
      'distance': ewayBill.distance,
      'supplyType': ewayBill.supplyType,
      'subSupplyType': ewayBill.subSupplyType,
      'documentType': ewayBill.documentType,
      'taxableValue': ewayBill.taxableValue,
      'cgst': ewayBill.cgst,
      'sgst': ewayBill.sgst,
      'igst': ewayBill.igst,
      'totalValue': ewayBill.totalValue,
      'status': ewayBill.status,
      'createdAt': ewayBill.createdAt.toIso8601String(),
    };

    return json.encode(data);
  }

  // Export a list of E-Way Bills to JSON
  String exportAllEWayBillsToJson(List<EWayBill> ewayBills) {
    return json.encode(ewayBills.map((e) => exportEWayBillToJsonObject(e)).toList());
  }

  // Convert E-Way Bill to Map (helper function)
  Map<String, dynamic> exportEWayBillToJsonObject(EWayBill ewayBill) {
    return {
      'ewayBillNumber': ewayBill.ewayBillNumber,
      'ewayBillDate': ewayBill.ewayBillDate?.toIso8601String(),
      'validUpto': ewayBill.validUpto?.toIso8601String(),
      'transporterName': ewayBill.transporterName,
      'transporterId': ewayBill.transporterId,
      'vehicleNumber': ewayBill.vehicleNumber,
      'placeOfDispatch': ewayBill.dispatchFromAddress ?? ewayBill.dispatchFromState,
      'distance': ewayBill.distance,
      'supplyType': ewayBill.supplyType,
      'subSupplyType': ewayBill.subSupplyType,
      'documentType': ewayBill.documentType,
      'taxableValue': ewayBill.taxableValue,
      'cgst': ewayBill.cgst,
      'sgst': ewayBill.sgst,
      'igst': ewayBill.igst,
      'totalValue': ewayBill.totalValue,
      'status': ewayBill.status,
      'createdAt': ewayBill.createdAt.toIso8601String(),
    };
  }
}