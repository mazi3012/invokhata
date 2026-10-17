import 'package:isar/isar.dart';
import 'package:uuid/uuid.dart';

part 'purchase.g.dart';

@embedded
class PurchaseLineItem {
  int? itemId;
  String? itemName;
  String? hsnCode;
  String unit = 'Pcs';
  double quantity = 1.0;
  double rate = 0.0;
  double unitPrice = 0.0;
  double gstRate = 0.0;
  String taxType = 'Without Tax';
  double taxableAmount = 0.0;
  double taxAmount = 0.0;
  double cgstRate = 0.0;
  double sgstRate = 0.0;
  double igstRate = 0.0;
  double cgstAmount = 0.0;
  double sgstAmount = 0.0;
  double igstAmount = 0.0;
  double cessRate = 0.0;
  double cessAmount = 0.0;
  String discountType = 'none'; // 'none' | 'percentage' | 'flat'
  double discountValue = 0.0;
  double discountAmount = 0.0;
  double totalAmount = 0.0;
  double totalPrice = 0.0;
}

@collection
class Purchase {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: false, caseSensitive: false)
  late String billNumber;

  @Index()
  int billSeq = 0;

  int? partyId;
  late DateTime purchaseDate;
  late String partyName;
  String? partyGstin;
  String? partyAddress;
  String? partyPhone;
  String? partyEmail;
  String? partyState;
  String invoiceType = 'tax_invoice';
  String gstType = 'regular';

  List<PurchaseLineItem> items = [];

  late double subtotal;
  late double taxAmount;
  late double discountAmount;
  late double grandTotal;
  
  double get totalAmount => grandTotal;
  set totalAmount(double value) => grandTotal = value;

  double totalDiscount = 0.0;
  double totalGst = 0.0;
  double totalCgst = 0.0;
  double totalSgst = 0.0;
  double totalIgst = 0.0;

  String paymentStatus = 'paid';

  bool isGstBill = false;
  String? taxMode; // 'intra_state' or 'inter_state'
  double? igstAmount;
  double? cgstAmount;
  double? sgstAmount;
  double? cessAmount;

  DateTime get invoiceDate => purchaseDate;
  set invoiceDate(DateTime value) => purchaseDate = value;

  // Reverse Charge Mechanism fields
  bool isReverseCharge = false;
  double rcmTaxAmount = 0.0;
  bool rcmPaid = false;
  DateTime? rcmPaymentDate;

  // E-Way Bill fields
  String? ewayBillNumber;
  DateTime? ewayBillDate;
  DateTime? ewayBillValidUpto;
  String? transporterName;
  String? transporterId;
  String? vehicleNumber;
  String? placeOfDispatch;
  String? stateOfDispatch;
  double? distance;
  String? supplyType;
  String? subSupplyType;
  String? documentType;

  // Export fields
  String? exportType; // WOP, WOP+E, CBW
  String? shippingBillNumber;
  DateTime? shippingBillDate;
  String? portCode;
  String? portName;
  String? exportCountry;
  double? foreignCurrencyAmount;
  String? foreignCurrency;
  double? exchangeRate;

  // Payment details
  String? paymentMode;
  String? paymentReference;
  DateTime? paymentDate;

  // Notes
  String? notes;

  // Metadata
  DateTime createdAt = DateTime.now();
  DateTime updatedAt = DateTime.now();

  Purchase();

  Purchase.create({
    required this.billNumber,
    required this.purchaseDate,
    required this.partyName,
    required this.subtotal,
    required this.taxAmount,
    required this.discountAmount,
    required this.grandTotal,
    this.partyId,
    this.partyGstin,
    this.partyAddress,
    this.partyPhone,
    this.partyEmail,
    this.items = const [],
    this.isGstBill = false,
    this.taxMode,
    this.igstAmount,
    this.cgstAmount,
    this.sgstAmount,
    this.cessAmount,
    this.isReverseCharge = false,
    this.rcmTaxAmount = 0.0,
    this.rcmPaid = false,
    this.rcmPaymentDate,
    this.ewayBillNumber,
    this.ewayBillDate,
    this.ewayBillValidUpto,
    this.transporterName,
    this.transporterId,
    this.vehicleNumber,
    this.placeOfDispatch,
    this.stateOfDispatch,
    this.distance,
    this.supplyType,
    this.subSupplyType,
    this.documentType,
    this.exportType,
    this.shippingBillNumber,
    this.shippingBillDate,
    this.portCode,
    this.portName,
    this.exportCountry,
    this.foreignCurrencyAmount,
    this.foreignCurrency,
    this.exchangeRate,
    this.paymentMode,
    this.paymentReference,
    this.paymentDate,
    this.notes,
  }) {
    const uuid = Uuid();
    billNumber = billNumber.isEmpty ? uuid.v4() : billNumber;
  }
}
