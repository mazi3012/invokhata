class EInvoiceSchema {
  late String version;
  late String irn; // Invoice Reference Number
  late String supplyType; // Supply Category (e.g., B2B, SEZ, Export)

  // Document Details
  late String documentType; // Invoice, Delivery Note, etc.
  late String invoiceNumber;
  late DateTime invoiceDate;

  // Seller Details
  late String sellerName;
  late String sellerGstin;
  late String sellerAddress;

  // Buyer Details
  late String buyerName;
  late String buyerGstin;
  late String buyerAddress;

  // Dispatch and Shipment (Optional)
  String? dispatchDetails;
  String? shipToDetails;

  // Payment
  late double taxableValue;
  late double cgst;
  late double sgst;
  late double igst;
  late double cess;
  late double totalValue;

  // Constructor
  EInvoiceSchema();
}