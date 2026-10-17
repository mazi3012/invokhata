import 'package:isar/isar.dart';
import '../../../../core/database/schemas/purchase.dart';
import 'gstr2b_models.dart';

class ReconciliationRepository {
  final Isar isar;

  ReconciliationRepository(this.isar);

  Future<List<ReconciliationResult>> reconcileGstr2bInvoices(List<Gstr2bInvoice> gstr2bInvoices) async {
    final purchases = await isar.purchases.where().findAll();
    final results = <ReconciliationResult>[];

    // Create maps for quick lookup
    final gstr2bMap = {for (var inv in gstr2bInvoices) inv.invoiceNumber: inv};
    final purchaseMap = {for (var pur in purchases) pur.billNumber: pur};

    // Check for matches and mismatches
    for (final gstr2b in gstr2bInvoices) {
      final purchase = purchaseMap[gstr2b.invoiceNumber];

      if (purchase != null) {
        // Check if amounts match
        if (gstr2b.totalTax == purchase.taxAmount) {
          results.add(ReconciliationResult(
            gstr2b: gstr2b,
            purchase: purchase,
            status: MatchStatus.matched,
            remarks: 'Amounts match',
          ));
        } else {
          results.add(ReconciliationResult(
            gstr2b: gstr2b,
            purchase: purchase,
            status: MatchStatus.mismatched,
            remarks: 'Amounts do not match',
          ));
        }
      } else {
        results.add(ReconciliationResult(
          gstr2b: gstr2b,
          purchase: null,
          status: MatchStatus.missingInBooks,
          remarks: 'Invoice not found in books',
        ));
      }
    }

    // Check for purchases not in GSTR-2B
    for (final purchase in purchases) {
      if (!gstr2bMap.containsKey(purchase.billNumber)) {
        results.add(ReconciliationResult(
          gstr2b: null,
          purchase: purchase,
          status: MatchStatus.missingIn2b,
          remarks: 'Invoice not found in GSTR-2B',
        ));
      }
    }

    return results;
  }

  ReconciliationSummary calculateSummary(List<ReconciliationResult> results) {
    int matchedCount = 0;
    int mismatchedCount = 0;
    int missingInBooksCount = 0;
    int missingIn2bCount = 0;
    double totalItc2b = 0.0;
    double totalItcBooks = 0.0;
    int totalIn2b = 0;
    int totalInBooks = 0;

    for (final result in results) {
      if (result.gstr2b != null) totalIn2b++;
      if (result.purchase != null) totalInBooks++;

      switch (result.status) {
        case MatchStatus.matched:
          matchedCount++;
          totalItc2b += result.gstr2b?.totalTax ?? 0.0;
          totalItcBooks += result.purchase?.taxAmount ?? 0.0;
          break;
        case MatchStatus.mismatched:
          mismatchedCount++;
          totalItc2b += result.gstr2b?.totalTax ?? 0.0;
          totalItcBooks += result.purchase?.taxAmount ?? 0.0;
          break;
        case MatchStatus.missingInBooks:
          missingInBooksCount++;
          totalItc2b += result.gstr2b?.totalTax ?? 0.0;
          break;
        case MatchStatus.missingIn2b:
          missingIn2bCount++;
          totalItcBooks += result.purchase?.taxAmount ?? 0.0;
          break;
      }
    }

    final eligibleItc = totalItcBooks - totalItc2b;
    final variance = totalItc2b - totalItcBooks;

    return ReconciliationSummary(
      totalIn2b: totalIn2b,
      totalInBooks: totalInBooks,
      matchedCount: matchedCount,
      mismatchedCount: mismatchedCount,
      missingInBooksCount: missingInBooksCount,
      missingIn2bCount: missingIn2bCount,
      totalItc2b: totalItc2b,
      totalItcBooks: totalItcBooks,
      eligibleItc: eligibleItc,
      variance: variance,
    );
  }
}
