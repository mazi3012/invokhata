/// E-Invoice payload for NIC schema (not stored, used for export)
class EInvoicePayload {
  final String version;
  final EInvoiceTransactionDetails transactionDetails;
  final EInvoiceDocumentDetails documentDetails;
  final EInvoicePartyDetails sellerDetails;
  final EInvoicePartyDetails buyerDetails;
  final List<EInvoiceItemDetails> itemList;
  final EInvoiceValueDetails valueDetails;
  final EInvoicePaymentDetails? paymentDetails;

  EInvoicePayload({
    this.version = '1.1',
    required this.transactionDetails,
    required this.documentDetails,
    required this.sellerDetails,
    required this.buyerDetails,
    required this.itemList,
    required this.valueDetails,
    this.paymentDetails,
  });

  Map<String, dynamic> toJson() => {
        'Version': version,
        'TranDtls': transactionDetails.toJson(),
        'DocDtls': documentDetails.toJson(),
        'SellerDtls': sellerDetails.toJson(),
        'BuyerDtls': buyerDetails.toJson(),
        'ItemList': itemList.map((e) => e.toJson()).toList(),
        'ValDtls': valueDetails.toJson(),
        if (paymentDetails != null) 'PayDtls': paymentDetails!.toJson(),
      };
}

class EInvoiceTransactionDetails {
  final String taxScheme;
  final String supplyType;

  EInvoiceTransactionDetails({
    this.taxScheme = 'GST',
    required this.supplyType,
  });

  Map<String, dynamic> toJson() => {
        'TaxSch': taxScheme,
        'SupTyp': supplyType,
      };
}

class EInvoiceDocumentDetails {
  final String invoiceType;
  final String invoiceNumber;
  final String invoiceDate;

  EInvoiceDocumentDetails({
    required this.invoiceType,
    required this.invoiceNumber,
    required this.invoiceDate,
  });

  Map<String, dynamic> toJson() => {
        'Typ': invoiceType,
        'No': invoiceNumber,
        'Dt': invoiceDate,
      };
}

class EInvoicePartyDetails {
  final String gstin;
  final String legalName;
  final String tradeName;
  final String address1;
  final String? address2;
  final String? address3;
  final String city;
  final String state;
  final String pincode;
  final String stateCode;
  final String? phone;
  final String? email;

  EInvoicePartyDetails({
    required this.gstin,
    required this.legalName,
    required this.tradeName,
    required this.address1,
    this.address2,
    this.address3,
    required this.city,
    required this.state,
    required this.pincode,
    required this.stateCode,
    this.phone,
    this.email,
  });

  Map<String, dynamic> toJson() => {
        'Gstin': gstin,
        'LglNm': legalName,
        'TrdNm': tradeName,
        'Addr1': address1,
        if (address2 != null && address2!.isNotEmpty) 'Addr2': address2,
        if (address3 != null && address3!.isNotEmpty) 'Addr3': address3,
        'City': city,
        'Stcd': stateCode,
        'Pin': pincode,
                if (phone != null && phone!.isNotEmpty) 'Ph': phone,
        if (email != null && email!.isNotEmpty) 'Em': email,
      };
}

class EInvoiceItemDetails {
  final int serialNumber;
  final String productDescription;
  final String hsnCode;
  final double quantity;
  final String unit;
  final double unitPrice;
  final double taxableValue;
  final String supplyType;
  final double totalValue;
  final double? cgstRate;
  final double? sgstRate;
  final double? igstRate;
  final double? cgstAmount;
  final double? sgstAmount;
  final double? igstAmount;
  final double? cessRate;
  final double? cessAmount;

  EInvoiceItemDetails({
    required this.serialNumber,
    required this.productDescription,
    required this.hsnCode,
    required this.quantity,
    required this.unit,
    required this.unitPrice,
    required this.taxableValue,
    required this.supplyType,
    required this.totalValue,
    this.cgstRate,
    this.sgstRate,
    this.igstRate,
    this.cgstAmount,
    this.sgstAmount,
    this.igstAmount,
    this.cessRate,
    this.cessAmount,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'SlNo': serialNumber.toString(),
      'PrdDesc': productDescription,
      'HsnCd': hsnCode,
      'Qty': quantity,
      'Unit': unit,
      'UnitPrice': unitPrice,
      'TotAmt': taxableValue,
      'AssAmt': taxableValue,
      'SupTyp': supplyType,
      'TotItemVal': totalValue,
    };

    if (igstRate != null && igstRate! > 0) {
      map['IgstAmt'] = igstAmount ?? 0.0;
      map['IgstRt'] = igstRate;
    } else {
      map['CgstAmt'] = cgstAmount ?? 0.0;
      map['CgstRt'] = cgstRate ?? 0.0;
      map['SgstAmt'] = sgstAmount ?? 0.0;
      map['SgstRt'] = sgstRate ?? 0.0;
    }

    if (cessRate != null && cessRate! > 0) {
      map['CesRt'] = cessRate;
      map['CesAmt'] = cessAmount ?? 0.0;
    }

    return map;
  }
}

class EInvoiceValueDetails {
  final double basicValue;
  final double? cgstAmount;
  final double? sgstAmount;
  final double? igstAmount;
  final double? cessAmount;
  final double totalValue;
  final double? discountAmount;
  final double? otherCharges;
  final double roundOff;
  final double grandTotal;

  EInvoiceValueDetails({
    required this.basicValue,
    this.cgstAmount,
    this.sgstAmount,
    this.igstAmount,
    this.cessAmount,
    required this.totalValue,
    this.discountAmount,
    this.otherCharges,
    this.roundOff = 0.0,
    required this.grandTotal,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'AssVal': basicValue,
      'TotInvVal': totalValue,
      'RndOffAmt': roundOff,
      'GrandTot': grandTotal,
    };

    if (igstAmount != null && igstAmount! > 0) {
      map['IgstVal'] = igstAmount;
    } else {
      map['CgstVal'] = cgstAmount ?? 0.0;
      map['SgstVal'] = sgstAmount ?? 0.0;
    }

    if (cessAmount != null && cessAmount! > 0) {
      map['CesVal'] = cessAmount;
    }

    if (discountAmount != null && discountAmount! > 0) {
      map['Discount'] = discountAmount;
    }

    if (otherCharges != null && otherCharges! > 0) {
      map['OthChrg'] = otherCharges;
    }

    return map;
  }
}

class EInvoicePaymentDetails {
  final String? bankName;
  final String? bankAccount;
  final String? ifscCode;
  final String paymentMode;

  EInvoicePaymentDetails({
    this.bankName,
    this.bankAccount,
    this.ifscCode,
    required this.paymentMode,
  });

  Map<String, dynamic> toJson() => {
        if (bankName != null && bankName!.isNotEmpty) 'Nm': bankName,
        if (bankAccount != null && bankAccount!.isNotEmpty) 'AcctDet': bankAccount,
        if (ifscCode != null && ifscCode!.isNotEmpty) 'Mode': paymentMode,
      };
}