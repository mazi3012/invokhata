import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import '../database/isar_service.dart';
import '../database/schemas/eway_bill.dart';
import '../database/schemas/invoice.dart';
import '../database/schemas/party.dart';
import '../services/settings_service.dart';
import 'india_gst.dart';

/// Service for generating e-way bill JSON for GST portal
class EWayBillService {
  /// Statutory threshold for E-Way Bill generation under GST (₹50,000)
  static bool isEWayBillRequired(double totalAmount) => totalAmount > 50000;


  /// Generate e-way bill payload from invoice
  static Map<String, dynamic> generateFromInvoice({
    required Invoice invoice,
    required Party party,
    required AppSettings settings,
    String? vehicleNumber,
    String? transporterId,
    String? transporterName,
    double? distance,
  }) {
    final sellerStateCode = gstStateCodeFromState(settings.businessState) ??
        (settings.taxId.length >= 2 ? settings.taxId.substring(0, 2) : '00');
    final buyerStateCode = gstStateCodeFromState(party.state) ??
        (party.gstin != null && party.gstin!.length >= 2
            ? party.gstin!.substring(0, 2)
            : '00');

    final itemList = <Map<String, dynamic>>[];
    for (int i = 0; i < invoice.items.length; i++) {
      final item = invoice.items[i];
      itemList.add({
        'itemNo': i + 1,
        'productName': item.itemName ?? 'Item ${i + 1}',
        'hsnCode': item.hsnCode ?? '',
        'quantity': item.quantity,
        'unit': 'NOS',
        'taxableValue': item.taxableAmount,
        'sgstRate': invoice.taxMode == 'intra_state' ? item.gstRate / 2 : 0,
        'cgstRate': invoice.taxMode == 'intra_state' ? item.gstRate / 2 : 0,
        'igstRate': invoice.taxMode == 'inter_state' ? item.gstRate : 0,
      });
    }

    return {
      'supplyType': 'O',
      'subSupplyType': 1,
      'docType': 'INV',
      'docNo': invoice.invoiceNumber,
      'docDate': DateFormat('dd/MM/yyyy').format(invoice.invoiceDate),
      'fromTrdName': settings.businessName,
      'fromGstin': settings.taxId,
      'fromAddr1': settings.businessAddress,
      'fromPlace': settings.businessAddress.split(',').last.trim(),
      'fromStateCode': sellerStateCode,
      'toTrdName': party.name,
      'toGstin': party.gstin?.isNotEmpty == true ? party.gstin! : 'URP',
      'toAddr1': party.address ?? '',
      'toPlace': party.address?.split(',').last.trim() ?? '',
      'toStateCode': buyerStateCode,
      'totalValue': invoice.subtotal,
      'cgstValue': invoice.totalCgst,
      'sgstValue': invoice.totalSgst,
      'igstValue': invoice.totalIgst,
      'totInvValue': invoice.grandTotal,
      'itemList': itemList,
      'vehicleNo': vehicleNumber ?? '',
      'transMode': '1',
      'transDistance': distance ?? 0,
      'transporterName': transporterName ?? '',
      'transporterId': transporterId ?? '',
    };
  }

  /// Generate JSON string for e-way bill
  static String generateJson({
    required Invoice invoice,
    required Party party,
    required AppSettings settings,
    String? vehicleNumber,
    String? transporterId,
    String? transporterName,
    double? distance,
  }) {
    final data = generateFromInvoice(
      invoice: invoice,
      party: party,
      settings: settings,
      vehicleNumber: vehicleNumber,
      transporterId: transporterId,
      transporterName: transporterName,
      distance: distance,
    );
    return const JsonEncoder.withIndent('  ').convert(data);
  }

  /// Save e-way bill record
  static Future<EWayBill> saveEWayBill({
    required String documentNumber,
    required String documentType,
    required DateTime documentDate,
    int? documentId,
    String? partyName,
    String? partyGstin,
    double taxableValue = 0,
    double cgst = 0,
    double sgst = 0,
    double igst = 0,
    double totalValue = 0,
    String? vehicleNumber,
    String? transporterId,
    String? transporterName,
    double distance = 0,
    String supplyType = 'O',
    int subSupplyType = 1,
    String? ewayBillNumber,
    DateTime? validUpto,
  }) async {
    final eWayBill = EWayBill()
      ..documentId = documentId
      ..documentNumber = documentNumber
      ..documentType = documentType
      ..documentDate = documentDate
      ..partyName = partyName ?? ''
      ..partyGstin = partyGstin
      ..supplyType = supplyType
      ..subSupplyType = subSupplyType
      ..taxableValue = taxableValue
      ..cgst = cgst
      ..sgst = sgst
      ..igst = igst
      ..totalValue = totalValue
      ..vehicleNumber = vehicleNumber
      ..transporterId = transporterId
      ..transporterName = transporterName
      ..distance = distance
      ..ewayBillNumber = ewayBillNumber
      ..validUpto = validUpto
      ..status = ewayBillNumber != null ? 'generated' : 'pending'
      ..createdAt = DateTime.now();

    await IsarService.isar.writeTxn(() async {
      await IsarService.isar.eWayBills.put(eWayBill);
    });

    return eWayBill;
  }

  /// Get e-way bill by document ID
  static Future<EWayBill?> getByDocumentId(int documentId) async {
    return await IsarService.isar.eWayBills
        .filter()
        .documentIdEqualTo(documentId)
        .findFirst();
  }

  /// Update e-way bill with number from portal
  static Future<void> updateWithNumber({
    required int eWayBillId,
    required String ewayBillNumber,
    required DateTime validUpto,
  }) async {
    await IsarService.isar.writeTxn(() async {
      final eWayBill = await IsarService.isar.eWayBills.get(eWayBillId);
      if (eWayBill != null) {
        eWayBill
          ..ewayBillNumber = ewayBillNumber
          ..ewayBillDate = DateTime.now()
          ..validUpto = validUpto
          ..status = 'generated';
        await IsarService.isar.eWayBills.put(eWayBill);
      }
    });
  }

  /// Cancel e-way bill
  static Future<void> cancelEWayBill({
    required int eWayBillId,
    required String reason,
  }) async {
    await IsarService.isar.writeTxn(() async {
      final eWayBill = await IsarService.isar.eWayBills.get(eWayBillId);
      if (eWayBill != null) {
        eWayBill
          ..status = 'cancelled'
          ..cancelledReason = reason
          ..cancelledDate = DateTime.now();
        await IsarService.isar.eWayBills.put(eWayBill);
      }
    });
  }

  /// Get all pending e-way bills
  static Future<List<EWayBill>> getPendingEWayBills() async {
    return await IsarService.isar.eWayBills
        .filter()
        .statusEqualTo('pending')
        .findAll();
  }

  /// Check if e-way bill is required (value > 50,000)
  static bool isRequired(double invoiceValue) {
    return invoiceValue > 50000;
  }

  /// Validate vehicle number format
  static bool isValidVehicleNumber(String vehicleNo) {
    final regex = RegExp(r'^[A-Z]{2}\d{2}[A-Z]{2}\d{4}$');
    return regex.hasMatch(vehicleNo.toUpperCase());
  }
}
