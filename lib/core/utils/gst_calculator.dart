class GstCalculationResult {
  final double taxableAmount;
  final double cgst;
  final double sgst;
  final double igst;
  final double totalGst;
  final double grandTotal;

  GstCalculationResult({
    required this.taxableAmount,
    required this.cgst,
    required this.sgst,
    required this.igst,
    required this.totalGst,
    required this.grandTotal,
  });
}

class GstCalculator {
  static GstCalculationResult calculateItemTax({
    required double unitPrice,
    required double quantity,
    required double gstRatePercent,
    required bool isInterState, // true = IGST, false = CGST + SGST
    bool isTaxInclusive = false,
  }) {
    final cleanPrice = (!unitPrice.isFinite || unitPrice < 0) ? 0.0 : unitPrice;
    final cleanQty = (!quantity.isFinite || quantity < 0) ? 0.0 : quantity;
    final cleanRate = (!gstRatePercent.isFinite || gstRatePercent < 0)
        ? 0.0
        : gstRatePercent;

    final double rawTotal = cleanPrice * cleanQty;
    double taxableAmount = rawTotal;
    double totalGst = 0.0;

    if (isTaxInclusive && cleanRate > 0) {
      taxableAmount = rawTotal / (1 + (cleanRate / 100));
      totalGst = rawTotal - taxableAmount;
    } else if (!isTaxInclusive && cleanRate > 0) {
      totalGst = taxableAmount * (cleanRate / 100);
    }

    double cgst = 0.0;
    double sgst = 0.0;
    double igst = 0.0;

    if (isInterState) {
      igst = totalGst;
    } else {
      cgst = totalGst / 2;
      sgst = totalGst / 2;
    }

    return GstCalculationResult(
      taxableAmount: taxableAmount,
      cgst: cgst,
      sgst: sgst,
      igst: igst,
      totalGst: totalGst,
      grandTotal: taxableAmount + totalGst,
    );
  }
}
