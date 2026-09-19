import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/schemas/invoice.dart';
import '../../../../core/database/schemas/item.dart';
import '../../../../core/database/schemas/party.dart';
import '../../../../core/utils/gst_calculator.dart';
import '../../../../core/services/settings_service.dart';
import '../../../../core/utils/india_gst.dart';
import '../../data/pos_repository.dart';

final posRepositoryProvider = Provider((ref) => POSRepository());

class CartItem {
  final Item item;
  double quantity;
  double customUnitPrice;

  CartItem({
    required this.item,
    this.quantity = 1.0,
    required this.customUnitPrice,
  });

  double get totalTaxable => customUnitPrice * quantity;
}

enum DiscountMode { percentage, amount }

enum PaymentMode { cash, upi, card, bankTransfer, credit }

extension PaymentModeExtension on PaymentMode {
  String get label {
    switch (this) {
      case PaymentMode.cash:
        return 'Cash';
      case PaymentMode.upi:
        return 'UPI';
      case PaymentMode.card:
        return 'Card';
      case PaymentMode.bankTransfer:
        return 'Bank';
      case PaymentMode.credit:
        return 'Credit';
    }
  }
}

String _paymentModeToString(PaymentMode mode) {
  switch (mode) {
    case PaymentMode.cash:
      return 'cash';
    case PaymentMode.upi:
      return 'upi';
    case PaymentMode.card:
      return 'card';
    case PaymentMode.bankTransfer:
      return 'bank_transfer';
    case PaymentMode.credit:
      return 'credit';
  }
}

PaymentMode _stringToPaymentMode(String mode) {
  switch (mode) {
    case 'upi':
      return PaymentMode.upi;
    case 'card':
      return PaymentMode.card;
    case 'bank_transfer':
      return PaymentMode.bankTransfer;
    case 'credit':
      return PaymentMode.credit;
    default:
      return PaymentMode.cash;
  }
}

class CartState {
  final List<CartItem> items;
  final Party? selectedParty;
  final double discountAmount;
  final double discountPercent;
  final DiscountMode discountMode;
  final bool isGstInvoice;
  final String sellerState;
  final String taxMode;
  final String? placeOfSupplyState;
  final String paymentMode;
  final double paidAmount;

  CartState({
    this.items = const [],
    this.selectedParty,
    this.discountAmount = 0.0,
    this.discountPercent = 0.0,
    this.discountMode = DiscountMode.percentage,
    this.isGstInvoice = true,
    this.sellerState = '',
    this.taxMode = 'auto',
    this.placeOfSupplyState,
    this.paymentMode = 'cash',
    this.paidAmount = 0.0,
  });

  double get subtotal =>
      items.fold(0.0, (sum, cartItem) => sum + cartItem.totalTaxable);

  double get totalGst {
    if (!isGstInvoice) return 0.0;
    return items.fold(0.0, (sum, cartItem) {
      if (!cartItem.item.isGst) return sum;
      final res = GstCalculator.calculateItemTax(
        unitPrice: cartItem.customUnitPrice,
        quantity: cartItem.quantity,
        gstRatePercent: cartItem.item.gstRate,
        isInterState: isInterState,
      );
      return sum + res.totalGst;
    });
  }

  bool get isInterState {
    if (taxMode == 'igst') return true;
    if (taxMode == 'cgst_sgst') return false;
    final supplyState = placeOfSupplyState ?? selectedParty?.state;
    return supplyState != null &&
        supplyState.isNotEmpty &&
        sellerState.isNotEmpty &&
        supplyState != sellerState;
  }

  GstCalculationResult _calculate(CartItem cartItem) {
    if (!cartItem.item.isGst || !isGstInvoice) {
      return GstCalculationResult(
        taxableAmount: cartItem.totalTaxable,
        cgst: 0,
        sgst: 0,
        igst: 0,
        totalGst: 0,
        grandTotal: cartItem.totalTaxable,
      );
    }
    return GstCalculator.calculateItemTax(
      unitPrice: cartItem.customUnitPrice,
      quantity: cartItem.quantity,
      gstRatePercent: cartItem.item.gstRate,
      isInterState: isInterState,
    );
  }

  double get totalCgst => isGstInvoice
      ? items.fold(0.0, (sum, item) => sum + _calculate(item).cgst)
      : 0.0;

  double get totalSgst => isGstInvoice
      ? items.fold(0.0, (sum, item) => sum + _calculate(item).sgst)
      : 0.0;

  double get totalIgst => isGstInvoice
      ? items.fold(0.0, (sum, item) => sum + _calculate(item).igst)
      : 0.0;

  double get amountDue => (subtotal + totalGst) - discountAmount - paidAmount;

  double get grandTotal => (subtotal + totalGst) - discountAmount;
  PaymentMode get paymentModeEnum => _stringToPaymentMode(paymentMode);

  CartState copyWith({
    List<CartItem>? items,
    Party? selectedParty,
    double? discountAmount,
    double? discountPercent,
    DiscountMode? discountMode,
    bool? isGstInvoice,
    String? sellerState,
    String? taxMode,
    String? placeOfSupplyState,
    String? paymentMode,
    double? paidAmount,
  }) {
    return CartState(
      items: items ?? this.items,
      selectedParty: selectedParty ?? this.selectedParty,
      discountAmount: discountAmount ?? this.discountAmount,
      discountPercent: discountPercent ?? this.discountPercent,
      discountMode: discountMode ?? this.discountMode,
      isGstInvoice: isGstInvoice ?? this.isGstInvoice,
      sellerState: sellerState ?? this.sellerState,
      taxMode: taxMode ?? this.taxMode,
      placeOfSupplyState: placeOfSupplyState ?? this.placeOfSupplyState,
      paymentMode: paymentMode ?? this.paymentMode,
      paidAmount: paidAmount ?? this.paidAmount,
    );
  }
}

final cartProvider = StateNotifierProvider<CartNotifier, CartState>((ref) {
  return CartNotifier(ref.watch(posRepositoryProvider),
      ref.read(settingsProvider).businessState);
});

/// Represents the result of a checkout attempt.
sealed class CheckoutResult {}

class CheckoutSuccess extends CheckoutResult {
  final Invoice invoice;
  CheckoutSuccess(this.invoice);
}

class CheckoutWalkInPartialPaymentError extends CheckoutResult {}

class CheckoutMalformedInputError extends CheckoutResult {}

class CartNotifier extends StateNotifier<CartState> {
  final POSRepository _repository;
  final String _sellerState;

  CartNotifier(this._repository, this._sellerState)
      : super(CartState(sellerState: _sellerState));

  void addItem(Item item) {
    final existingIndex =
        state.items.indexWhere((element) => element.item.id == item.id);
    if (existingIndex >= 0) {
      final updatedItems = List<CartItem>.from(state.items);
      updatedItems[existingIndex].quantity += 1;
      // Never allow a cart quantity above the item's available stock.
      if (item.stockQuantity > 0 &&
          updatedItems[existingIndex].quantity > item.stockQuantity) {
        updatedItems[existingIndex].quantity = item.stockQuantity;
      }
      state = state.copyWith(items: updatedItems);
    } else {
      final newItem = CartItem(item: item, customUnitPrice: item.salesPrice);
      state = state.copyWith(items: [...state.items, newItem]);
    }
  }

  void updateQuantity(int itemId, double newQty) {
    if (newQty <= 0) {
      removeItem(itemId);
      return;
    }
    final updatedItems = state.items.map((cartItem) {
      if (cartItem.item.id == itemId) {
        // Never allow a cart quantity above the item's available stock.
        if (cartItem.item.stockQuantity > 0 &&
            newQty > cartItem.item.stockQuantity) {
          cartItem.quantity = cartItem.item.stockQuantity;
        } else {
          cartItem.quantity = newQty;
        }
      }
      return cartItem;
    }).toList();
    state = state.copyWith(items: updatedItems);
  }

  void removeItem(int itemId) {
    state = state.copyWith(
      items: state.items.where((element) => element.item.id != itemId).toList(),
    );
  }

  void selectParty(Party? party) => state = state.copyWith(
        selectedParty: party,
        placeOfSupplyState: party?.state ??
            stateFromGstin(party?.gstin) ??
            state.placeOfSupplyState,
      );
  void toggleGst(bool isGst) => state = state.copyWith(isGstInvoice: isGst);
  void setTaxMode(String mode) => state = state.copyWith(taxMode: mode);
  void setPlaceOfSupplyState(String value) =>
      state = state.copyWith(placeOfSupplyState: value);
  void setDiscount(double discount) => state = state.copyWith(
        discountAmount: discount,
        discountMode: DiscountMode.amount,
      );
  void setDiscountPercent(double percent) => state = state.copyWith(
        discountAmount: ((state.subtotal + state.totalGst) * percent / 100),
        discountPercent: percent,
        discountMode: DiscountMode.percentage,
      );
  void setDiscountMode(DiscountMode mode) => state = state.copyWith(
        discountMode: mode,
        discountAmount: mode == DiscountMode.percentage
            ? ((state.subtotal + state.totalGst) * state.discountPercent / 100)
            : state.discountAmount,
      );
  void setPaymentMode(PaymentMode mode) =>
      state = state.copyWith(paymentMode: _paymentModeToString(mode));
  void clearCart() => state = CartState();

  // In-flight guard: blocks a second checkout while one is already writing
  // (e.g. a double-tap on "Confirm & Print"), which would otherwise create two
  // invoices for the same cart.
  bool _isCheckoutRunning = false;

  // UPDATED: Now returns a sealed class representing the exact checkout result
  Future<CheckoutResult?> checkout(double paidAmount) async {
    if (state.items.isEmpty) return null;
    if (_isCheckoutRunning) return null;
    // Reject malformed inputs before touching the database.
    if (!paidAmount.isFinite || paidAmount < 0) {
      return CheckoutMalformedInputError();
    }

    _isCheckoutRunning = true;
    try {
      return await _doCheckout(paidAmount);
    } finally {
      _isCheckoutRunning = false;
    }
  }

  Future<CheckoutResult?> _doCheckout(double paidAmount) async {
    // Prevent walk-in customers from carrying dues
    // If no party selected, the customer is a walk-in and must pay in full
    final Party? selectedParty = state.selectedParty;
    final bool isWalkIn = selectedParty == null;

    // Sequential, collision-resistant invoice number (INV-YYYY-NNNN). The old
    // timestamp-fragment scheme could collide and silently overwrite invoices.
    final invoiceNum = await _repository.nextInvoiceNumber();
    final double grandTotal = state.grandTotal;
    final double due =
        (grandTotal - paidAmount) > 0 ? (grandTotal - paidAmount) : 0.0;

    // For walk-in customers, allow only a one-cent rounding difference.
    if (isWalkIn && due > 0.01) {
      return CheckoutWalkInPartialPaymentError();
    }

    final seqNum = int.tryParse(invoiceNum.split('-').last) ?? 0;

    final invoice = Invoice()
      ..invoiceNumber = invoiceNum
      ..invoiceSeq = seqNum
      ..partyId = state.selectedParty?.id
      ..partyName = state.selectedParty?.name ?? 'Walk-in Customer'
      ..partyPhone = state.selectedParty?.phoneNumber
      ..partyGstin = state.selectedParty?.gstin
      ..partyState = state.selectedParty?.state ??
          stateFromGstin(state.selectedParty?.gstin)
      ..isGstInvoice = state.isGstInvoice
      ..placeOfSupplyState =
          state.placeOfSupplyState ?? state.selectedParty?.state ?? _sellerState
      ..taxMode = state.isInterState ? 'inter_state' : 'intra_state'
      ..subtotal = state.subtotal
      ..totalGst = state.totalGst
      ..totalCgst = state.totalCgst
      ..totalSgst = state.totalSgst
      ..totalIgst = state.totalIgst
      ..discountAmount = state.discountAmount
      ..grandTotal = grandTotal
      ..paidAmount = paidAmount
      ..dueAmount = due
      ..paymentMode = state.paymentMode
      ..paymentStatus =
          due <= 0 ? 'paid' : (paidAmount > 0 ? 'partially_paid' : 'unpaid')
      ..items = state.items.map((ci) {
        final taxRes = GstCalculator.calculateItemTax(
          unitPrice: ci.customUnitPrice,
          quantity: ci.quantity,
          gstRatePercent: ci.item.gstRate,
          isInterState: state.isInterState,
        );
        return InvoiceLineItem()
          ..itemId = ci.item.id
          ..itemName = ci.item.name
          ..hsnCode = ci.item.hsnCode
          ..quantity = ci.quantity
          ..unitPrice = ci.customUnitPrice
          ..gstRate = ci.item.gstRate
          ..gstAmount = taxRes.totalGst
          ..cgstAmount = taxRes.cgst
          ..sgstAmount = taxRes.sgst
          ..igstAmount = taxRes.igst
          ..totalPrice = ci.totalTaxable + taxRes.totalGst;
      }).toList();

    await _repository.createInvoiceAndProcessSale(
      invoice: invoice,
      partyId: state.selectedParty?.id,
    );

    clearCart();
    return CheckoutSuccess(invoice);
  }
}
