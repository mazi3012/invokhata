import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import '../database/isar_service.dart';
import '../database/schemas/einvoice.dart';
import '../database/schemas/einvoice_payload.dart';
import '../database/schemas/invoice.dart';
import '../database/schemas/party.dart';
import '../services/settings_service.dart';
import 'india_gst.dart';

/// Service for generating e-invoice JSON for NIC portal
class EInvoiceService {
  /// Generate e-invoice payload from an invoice
  static EInvoicePayload generatePayload({
    required Invoice invoice,
    required Party party,
    required AppSettings settings,
    String supplyType = 'B2B',
  }) {
    String finalSupplyType = supplyType;
    if (party.gstin != null &&
        party.gstin!.isNotEmpty &&
        settings.taxId.isNotEmpty) {
      final sellerState = settings.taxId.substring(0, 2);
      final buyerState = party.gstin!.substring(0, 2);
      if (sellerState != buyerState) {
        finalSupplyType = 'B2B';
      }
    }

    final sellerStateCode = gstStateCodeFromState(settings.businessState) ??
        (settings.taxId.length >= 2 ? settings.taxId.substring(0, 2) : '00');
    final buyerStateCode = gstStateCodeFromState(party.state) ??
        (party.gstin != null && party.gstin!.length >= 2
            ? party.gstin!.substring(0, 2)
            : '00');

    final sellerDetails = EInvoicePartyDetails(
      gstin: settings.taxId,
      legalName: settings.businessName,
      tradeName: settings.businessName,
      address1: settings.businessAddress,
      address2: null,
      city: settings.businessAddress.split(',').last.trim(),
      state: settings.businessState,
      pincode: '000000',
      stateCode: sellerStateCode,
      phone: settings.businessPhone,
      email: null,
    );

    final buyerDetails = EInvoicePartyDetails(
      gstin: party.gstin?.isNotEmpty == true ? party.gstin! : 'URP',
      legalName: party.name,
      tradeName: party.name,
      address1: party.address ?? '',
      city: party.address?.split(',').last.trim() ?? '',
      state: party.state ?? '',
      pincode: '000000',
      stateCode: buyerStateCode,
      phone: party.phoneNumber,
      email: party.email,
    );

    final itemDetails = <EInvoiceItemDetails>[];
    for (int i = 0; i < invoice.items.length; i++) {
      final item = invoice.items[i];
      itemDetails.add(EInvoiceItemDetails(
        serialNumber: i + 1,
        productDescription: item.itemName ?? 'Item ${i + 1}',
        hsnCode: item.hsnCode ?? '',
        quantity: item.quantity,
        unit: 'NOS',
        unitPrice: item.unitPrice,
        taxableValue: item.taxableAmount,
        supplyType: 'Goods',
        totalValue: item.totalPrice,
        cgstRate: invoice.taxMode == 'intra_state' ? item.gstRate / 2 : 0,
        sgstRate: invoice.taxMode == 'intra_state' ? item.gstRate / 2 : 0,
        igstRate: invoice.taxMode == 'inter_state' ? item.gstRate : 0,
        cgstAmount: invoice.taxMode == 'intra_state' ? item.cgstAmount : 0,
        sgstAmount: invoice.taxMode == 'intra_state' ? item.sgstAmount : 0,
        igstAmount: invoice.taxMode == 'inter_state' ? item.igstAmount : 0,
        cessRate: item.cessRate,
        cessAmount: item.cessAmount,
      ));
    }

    final valueDetails = EInvoiceValueDetails(
      basicValue: invoice.subtotal,
      cgstAmount: invoice.totalCgst,
      sgstAmount: invoice.totalSgst,
      igstAmount: invoice.totalIgst,
      cessAmount: invoice.items.fold<double>(0.0, (sum, it) => sum + it.cessAmount),
      totalValue: invoice.grandTotal,
      discountAmount: invoice.discountAmount,
      grandTotal: invoice.grandTotal,
    );

    return EInvoicePayload(
      transactionDetails: EInvoiceTransactionDetails(supplyType: finalSupplyType),
      documentDetails: EInvoiceDocumentDetails(
        invoiceType: 'INV',
        invoiceNumber: invoice.invoiceNumber,
        invoiceDate: DateFormat('dd/MM/yyyy').format(invoice.invoiceDate),
      ),
      sellerDetails: sellerDetails,
      buyerDetails: buyerDetails,
      itemList: itemDetails,
      valueDetails: valueDetails,
      paymentDetails: EInvoicePaymentDetails(
        paymentMode: invoice.paymentMode,
      ),
    );
  }

  /// Generate JSON string for e-invoice
  static String generateJson({
    required Invoice invoice,
    required Party party,
    required AppSettings settings,
  }) {
    final payload = generatePayload(
      invoice: invoice,
      party: party,
      settings: settings,
    );
    return const JsonEncoder.withIndent('  ').convert(payload.toJson());
  }

  /// Save e-invoice record
  static Future<EInvoice> saveEInvoice({
    required int invoiceId,
    required String invoiceNumber,
    required DateTime invoiceDate,
    String? irn,
    String? ackNumber,
    DateTime? ackDate,
    String status = 'pending',
  }) async {
    final eInvoice = EInvoice()
      ..invoiceId = invoiceId
      ..invoiceNumber = invoiceNumber
      ..invoiceDate = invoiceDate
      ..irn = irn
      ..ackNumber = ackNumber
      ..ackDate = ackDate
      ..status = status
      ..createdAt = DateTime.now();

    await IsarService.isar.writeTxn(() async {
      await IsarService.isar.eInvoices.put(eInvoice);
    });

    return eInvoice;
  }

  /// Get e-invoice by invoice ID
  static Future<EInvoice?> getByInvoiceId(int invoiceId) async {
    return await IsarService.isar.eInvoices
        .filter()
        .invoiceIdEqualTo(invoiceId)
        .findFirst();
  }

  /// Update e-invoice with IRN
  static Future<void> updateWithIrn({
    required int eInvoiceId,
    required String irn,
    required String ackNumber,
    required DateTime ackDate,
    String? signedInvoiceJson,
    String? qrCodeData,
  }) async {
    await IsarService.isar.writeTxn(() async {
      final eInvoice = await IsarService.isar.eInvoices.get(eInvoiceId);
      if (eInvoice != null) {
        eInvoice
          ..irn = irn
          ..ackNumber = ackNumber
          ..ackDate = ackDate
          ..signedInvoiceJson = signedInvoiceJson
          ..qrCodeData = qrCodeData
          ..status = 'generated'
          ..updatedAt = DateTime.now();
        await IsarService.isar.eInvoices.put(eInvoice);
      }
    });
  }

  /// Cancel e-invoice
  static Future<void> cancelEInvoice({
    required int eInvoiceId,
    required String reason,
  }) async {
    await IsarService.isar.writeTxn(() async {
      final eInvoice = await IsarService.isar.eInvoices.get(eInvoiceId);
      if (eInvoice != null) {
        eInvoice
          ..status = 'cancelled'
          ..cancelledReason = reason
          ..cancelledDate = DateTime.now()
          ..updatedAt = DateTime.now();
        await IsarService.isar.eInvoices.put(eInvoice);
      }
    });
  }
}
