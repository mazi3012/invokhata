// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPurchaseCollection on Isar {
  IsarCollection<Purchase> get purchases => this.collection();
}

const PurchaseSchema = CollectionSchema(
  name: r'Purchase',
  id: -2376489861051921561,
  properties: {
    r'billNumber': PropertySchema(
      id: 0,
      name: r'billNumber',
      type: IsarType.string,
    ),
    r'billSeq': PropertySchema(
      id: 1,
      name: r'billSeq',
      type: IsarType.long,
    ),
    r'cessAmount': PropertySchema(
      id: 2,
      name: r'cessAmount',
      type: IsarType.double,
    ),
    r'cgstAmount': PropertySchema(
      id: 3,
      name: r'cgstAmount',
      type: IsarType.double,
    ),
    r'createdAt': PropertySchema(
      id: 4,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'discountAmount': PropertySchema(
      id: 5,
      name: r'discountAmount',
      type: IsarType.double,
    ),
    r'distance': PropertySchema(
      id: 6,
      name: r'distance',
      type: IsarType.double,
    ),
    r'documentType': PropertySchema(
      id: 7,
      name: r'documentType',
      type: IsarType.string,
    ),
    r'ewayBillDate': PropertySchema(
      id: 8,
      name: r'ewayBillDate',
      type: IsarType.dateTime,
    ),
    r'ewayBillNumber': PropertySchema(
      id: 9,
      name: r'ewayBillNumber',
      type: IsarType.string,
    ),
    r'ewayBillValidUpto': PropertySchema(
      id: 10,
      name: r'ewayBillValidUpto',
      type: IsarType.dateTime,
    ),
    r'exchangeRate': PropertySchema(
      id: 11,
      name: r'exchangeRate',
      type: IsarType.double,
    ),
    r'exportCountry': PropertySchema(
      id: 12,
      name: r'exportCountry',
      type: IsarType.string,
    ),
    r'exportType': PropertySchema(
      id: 13,
      name: r'exportType',
      type: IsarType.string,
    ),
    r'foreignCurrency': PropertySchema(
      id: 14,
      name: r'foreignCurrency',
      type: IsarType.string,
    ),
    r'foreignCurrencyAmount': PropertySchema(
      id: 15,
      name: r'foreignCurrencyAmount',
      type: IsarType.double,
    ),
    r'grandTotal': PropertySchema(
      id: 16,
      name: r'grandTotal',
      type: IsarType.double,
    ),
    r'gstType': PropertySchema(
      id: 17,
      name: r'gstType',
      type: IsarType.string,
    ),
    r'igstAmount': PropertySchema(
      id: 18,
      name: r'igstAmount',
      type: IsarType.double,
    ),
    r'invoiceDate': PropertySchema(
      id: 19,
      name: r'invoiceDate',
      type: IsarType.dateTime,
    ),
    r'invoiceType': PropertySchema(
      id: 20,
      name: r'invoiceType',
      type: IsarType.string,
    ),
    r'isGstBill': PropertySchema(
      id: 21,
      name: r'isGstBill',
      type: IsarType.bool,
    ),
    r'isReverseCharge': PropertySchema(
      id: 22,
      name: r'isReverseCharge',
      type: IsarType.bool,
    ),
    r'items': PropertySchema(
      id: 23,
      name: r'items',
      type: IsarType.objectList,
      target: r'PurchaseLineItem',
    ),
    r'notes': PropertySchema(
      id: 24,
      name: r'notes',
      type: IsarType.string,
    ),
    r'partyAddress': PropertySchema(
      id: 25,
      name: r'partyAddress',
      type: IsarType.string,
    ),
    r'partyEmail': PropertySchema(
      id: 26,
      name: r'partyEmail',
      type: IsarType.string,
    ),
    r'partyGstin': PropertySchema(
      id: 27,
      name: r'partyGstin',
      type: IsarType.string,
    ),
    r'partyId': PropertySchema(
      id: 28,
      name: r'partyId',
      type: IsarType.long,
    ),
    r'partyName': PropertySchema(
      id: 29,
      name: r'partyName',
      type: IsarType.string,
    ),
    r'partyPhone': PropertySchema(
      id: 30,
      name: r'partyPhone',
      type: IsarType.string,
    ),
    r'partyState': PropertySchema(
      id: 31,
      name: r'partyState',
      type: IsarType.string,
    ),
    r'paymentDate': PropertySchema(
      id: 32,
      name: r'paymentDate',
      type: IsarType.dateTime,
    ),
    r'paymentMode': PropertySchema(
      id: 33,
      name: r'paymentMode',
      type: IsarType.string,
    ),
    r'paymentReference': PropertySchema(
      id: 34,
      name: r'paymentReference',
      type: IsarType.string,
    ),
    r'paymentStatus': PropertySchema(
      id: 35,
      name: r'paymentStatus',
      type: IsarType.string,
    ),
    r'placeOfDispatch': PropertySchema(
      id: 36,
      name: r'placeOfDispatch',
      type: IsarType.string,
    ),
    r'portCode': PropertySchema(
      id: 37,
      name: r'portCode',
      type: IsarType.string,
    ),
    r'portName': PropertySchema(
      id: 38,
      name: r'portName',
      type: IsarType.string,
    ),
    r'purchaseDate': PropertySchema(
      id: 39,
      name: r'purchaseDate',
      type: IsarType.dateTime,
    ),
    r'rcmPaid': PropertySchema(
      id: 40,
      name: r'rcmPaid',
      type: IsarType.bool,
    ),
    r'rcmPaymentDate': PropertySchema(
      id: 41,
      name: r'rcmPaymentDate',
      type: IsarType.dateTime,
    ),
    r'rcmTaxAmount': PropertySchema(
      id: 42,
      name: r'rcmTaxAmount',
      type: IsarType.double,
    ),
    r'sgstAmount': PropertySchema(
      id: 43,
      name: r'sgstAmount',
      type: IsarType.double,
    ),
    r'shippingBillDate': PropertySchema(
      id: 44,
      name: r'shippingBillDate',
      type: IsarType.dateTime,
    ),
    r'shippingBillNumber': PropertySchema(
      id: 45,
      name: r'shippingBillNumber',
      type: IsarType.string,
    ),
    r'stateOfDispatch': PropertySchema(
      id: 46,
      name: r'stateOfDispatch',
      type: IsarType.string,
    ),
    r'subSupplyType': PropertySchema(
      id: 47,
      name: r'subSupplyType',
      type: IsarType.string,
    ),
    r'subtotal': PropertySchema(
      id: 48,
      name: r'subtotal',
      type: IsarType.double,
    ),
    r'supplyType': PropertySchema(
      id: 49,
      name: r'supplyType',
      type: IsarType.string,
    ),
    r'taxAmount': PropertySchema(
      id: 50,
      name: r'taxAmount',
      type: IsarType.double,
    ),
    r'taxMode': PropertySchema(
      id: 51,
      name: r'taxMode',
      type: IsarType.string,
    ),
    r'totalAmount': PropertySchema(
      id: 52,
      name: r'totalAmount',
      type: IsarType.double,
    ),
    r'totalCgst': PropertySchema(
      id: 53,
      name: r'totalCgst',
      type: IsarType.double,
    ),
    r'totalDiscount': PropertySchema(
      id: 54,
      name: r'totalDiscount',
      type: IsarType.double,
    ),
    r'totalGst': PropertySchema(
      id: 55,
      name: r'totalGst',
      type: IsarType.double,
    ),
    r'totalIgst': PropertySchema(
      id: 56,
      name: r'totalIgst',
      type: IsarType.double,
    ),
    r'totalSgst': PropertySchema(
      id: 57,
      name: r'totalSgst',
      type: IsarType.double,
    ),
    r'transporterId': PropertySchema(
      id: 58,
      name: r'transporterId',
      type: IsarType.string,
    ),
    r'transporterName': PropertySchema(
      id: 59,
      name: r'transporterName',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 60,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'vehicleNumber': PropertySchema(
      id: 61,
      name: r'vehicleNumber',
      type: IsarType.string,
    )
  },
  estimateSize: _purchaseEstimateSize,
  serialize: _purchaseSerialize,
  deserialize: _purchaseDeserialize,
  deserializeProp: _purchaseDeserializeProp,
  idName: r'id',
  indexes: {
    r'billNumber': IndexSchema(
      id: 1059943391792785230,
      name: r'billNumber',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'billNumber',
          type: IndexType.hash,
          caseSensitive: false,
        )
      ],
    ),
    r'billSeq': IndexSchema(
      id: 3874698630992880583,
      name: r'billSeq',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'billSeq',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'PurchaseLineItem': PurchaseLineItemSchema},
  getId: _purchaseGetId,
  getLinks: _purchaseGetLinks,
  attach: _purchaseAttach,
  version: '3.1.0+1',
);

int _purchaseEstimateSize(
  Purchase object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.billNumber.length * 3;
  {
    final value = object.documentType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.ewayBillNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.exportCountry;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.exportType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.foreignCurrency;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.gstType.length * 3;
  bytesCount += 3 + object.invoiceType.length * 3;
  bytesCount += 3 + object.items.length * 3;
  {
    final offsets = allOffsets[PurchaseLineItem]!;
    for (var i = 0; i < object.items.length; i++) {
      final value = object.items[i];
      bytesCount +=
          PurchaseLineItemSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  {
    final value = object.notes;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.partyAddress;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.partyEmail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.partyGstin;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.partyName.length * 3;
  {
    final value = object.partyPhone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.partyState;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.paymentMode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.paymentReference;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.paymentStatus.length * 3;
  {
    final value = object.placeOfDispatch;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.portCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.portName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.shippingBillNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.stateOfDispatch;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.subSupplyType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.supplyType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.taxMode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.transporterId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.transporterName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.vehicleNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _purchaseSerialize(
  Purchase object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.billNumber);
  writer.writeLong(offsets[1], object.billSeq);
  writer.writeDouble(offsets[2], object.cessAmount);
  writer.writeDouble(offsets[3], object.cgstAmount);
  writer.writeDateTime(offsets[4], object.createdAt);
  writer.writeDouble(offsets[5], object.discountAmount);
  writer.writeDouble(offsets[6], object.distance);
  writer.writeString(offsets[7], object.documentType);
  writer.writeDateTime(offsets[8], object.ewayBillDate);
  writer.writeString(offsets[9], object.ewayBillNumber);
  writer.writeDateTime(offsets[10], object.ewayBillValidUpto);
  writer.writeDouble(offsets[11], object.exchangeRate);
  writer.writeString(offsets[12], object.exportCountry);
  writer.writeString(offsets[13], object.exportType);
  writer.writeString(offsets[14], object.foreignCurrency);
  writer.writeDouble(offsets[15], object.foreignCurrencyAmount);
  writer.writeDouble(offsets[16], object.grandTotal);
  writer.writeString(offsets[17], object.gstType);
  writer.writeDouble(offsets[18], object.igstAmount);
  writer.writeDateTime(offsets[19], object.invoiceDate);
  writer.writeString(offsets[20], object.invoiceType);
  writer.writeBool(offsets[21], object.isGstBill);
  writer.writeBool(offsets[22], object.isReverseCharge);
  writer.writeObjectList<PurchaseLineItem>(
    offsets[23],
    allOffsets,
    PurchaseLineItemSchema.serialize,
    object.items,
  );
  writer.writeString(offsets[24], object.notes);
  writer.writeString(offsets[25], object.partyAddress);
  writer.writeString(offsets[26], object.partyEmail);
  writer.writeString(offsets[27], object.partyGstin);
  writer.writeLong(offsets[28], object.partyId);
  writer.writeString(offsets[29], object.partyName);
  writer.writeString(offsets[30], object.partyPhone);
  writer.writeString(offsets[31], object.partyState);
  writer.writeDateTime(offsets[32], object.paymentDate);
  writer.writeString(offsets[33], object.paymentMode);
  writer.writeString(offsets[34], object.paymentReference);
  writer.writeString(offsets[35], object.paymentStatus);
  writer.writeString(offsets[36], object.placeOfDispatch);
  writer.writeString(offsets[37], object.portCode);
  writer.writeString(offsets[38], object.portName);
  writer.writeDateTime(offsets[39], object.purchaseDate);
  writer.writeBool(offsets[40], object.rcmPaid);
  writer.writeDateTime(offsets[41], object.rcmPaymentDate);
  writer.writeDouble(offsets[42], object.rcmTaxAmount);
  writer.writeDouble(offsets[43], object.sgstAmount);
  writer.writeDateTime(offsets[44], object.shippingBillDate);
  writer.writeString(offsets[45], object.shippingBillNumber);
  writer.writeString(offsets[46], object.stateOfDispatch);
  writer.writeString(offsets[47], object.subSupplyType);
  writer.writeDouble(offsets[48], object.subtotal);
  writer.writeString(offsets[49], object.supplyType);
  writer.writeDouble(offsets[50], object.taxAmount);
  writer.writeString(offsets[51], object.taxMode);
  writer.writeDouble(offsets[52], object.totalAmount);
  writer.writeDouble(offsets[53], object.totalCgst);
  writer.writeDouble(offsets[54], object.totalDiscount);
  writer.writeDouble(offsets[55], object.totalGst);
  writer.writeDouble(offsets[56], object.totalIgst);
  writer.writeDouble(offsets[57], object.totalSgst);
  writer.writeString(offsets[58], object.transporterId);
  writer.writeString(offsets[59], object.transporterName);
  writer.writeDateTime(offsets[60], object.updatedAt);
  writer.writeString(offsets[61], object.vehicleNumber);
}

Purchase _purchaseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Purchase();
  object.billNumber = reader.readString(offsets[0]);
  object.billSeq = reader.readLong(offsets[1]);
  object.cessAmount = reader.readDoubleOrNull(offsets[2]);
  object.cgstAmount = reader.readDoubleOrNull(offsets[3]);
  object.createdAt = reader.readDateTime(offsets[4]);
  object.discountAmount = reader.readDouble(offsets[5]);
  object.distance = reader.readDoubleOrNull(offsets[6]);
  object.documentType = reader.readStringOrNull(offsets[7]);
  object.ewayBillDate = reader.readDateTimeOrNull(offsets[8]);
  object.ewayBillNumber = reader.readStringOrNull(offsets[9]);
  object.ewayBillValidUpto = reader.readDateTimeOrNull(offsets[10]);
  object.exchangeRate = reader.readDoubleOrNull(offsets[11]);
  object.exportCountry = reader.readStringOrNull(offsets[12]);
  object.exportType = reader.readStringOrNull(offsets[13]);
  object.foreignCurrency = reader.readStringOrNull(offsets[14]);
  object.foreignCurrencyAmount = reader.readDoubleOrNull(offsets[15]);
  object.grandTotal = reader.readDouble(offsets[16]);
  object.gstType = reader.readString(offsets[17]);
  object.id = id;
  object.igstAmount = reader.readDoubleOrNull(offsets[18]);
  object.invoiceDate = reader.readDateTime(offsets[19]);
  object.invoiceType = reader.readString(offsets[20]);
  object.isGstBill = reader.readBool(offsets[21]);
  object.isReverseCharge = reader.readBool(offsets[22]);
  object.items = reader.readObjectList<PurchaseLineItem>(
        offsets[23],
        PurchaseLineItemSchema.deserialize,
        allOffsets,
        PurchaseLineItem(),
      ) ??
      [];
  object.notes = reader.readStringOrNull(offsets[24]);
  object.partyAddress = reader.readStringOrNull(offsets[25]);
  object.partyEmail = reader.readStringOrNull(offsets[26]);
  object.partyGstin = reader.readStringOrNull(offsets[27]);
  object.partyId = reader.readLongOrNull(offsets[28]);
  object.partyName = reader.readString(offsets[29]);
  object.partyPhone = reader.readStringOrNull(offsets[30]);
  object.partyState = reader.readStringOrNull(offsets[31]);
  object.paymentDate = reader.readDateTimeOrNull(offsets[32]);
  object.paymentMode = reader.readStringOrNull(offsets[33]);
  object.paymentReference = reader.readStringOrNull(offsets[34]);
  object.paymentStatus = reader.readString(offsets[35]);
  object.placeOfDispatch = reader.readStringOrNull(offsets[36]);
  object.portCode = reader.readStringOrNull(offsets[37]);
  object.portName = reader.readStringOrNull(offsets[38]);
  object.purchaseDate = reader.readDateTime(offsets[39]);
  object.rcmPaid = reader.readBool(offsets[40]);
  object.rcmPaymentDate = reader.readDateTimeOrNull(offsets[41]);
  object.rcmTaxAmount = reader.readDouble(offsets[42]);
  object.sgstAmount = reader.readDoubleOrNull(offsets[43]);
  object.shippingBillDate = reader.readDateTimeOrNull(offsets[44]);
  object.shippingBillNumber = reader.readStringOrNull(offsets[45]);
  object.stateOfDispatch = reader.readStringOrNull(offsets[46]);
  object.subSupplyType = reader.readStringOrNull(offsets[47]);
  object.subtotal = reader.readDouble(offsets[48]);
  object.supplyType = reader.readStringOrNull(offsets[49]);
  object.taxAmount = reader.readDouble(offsets[50]);
  object.taxMode = reader.readStringOrNull(offsets[51]);
  object.totalAmount = reader.readDouble(offsets[52]);
  object.totalCgst = reader.readDouble(offsets[53]);
  object.totalDiscount = reader.readDouble(offsets[54]);
  object.totalGst = reader.readDouble(offsets[55]);
  object.totalIgst = reader.readDouble(offsets[56]);
  object.totalSgst = reader.readDouble(offsets[57]);
  object.transporterId = reader.readStringOrNull(offsets[58]);
  object.transporterName = reader.readStringOrNull(offsets[59]);
  object.updatedAt = reader.readDateTime(offsets[60]);
  object.vehicleNumber = reader.readStringOrNull(offsets[61]);
  return object;
}

P _purchaseDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 11:
      return (reader.readDoubleOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readDoubleOrNull(offset)) as P;
    case 16:
      return (reader.readDouble(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readDoubleOrNull(offset)) as P;
    case 19:
      return (reader.readDateTime(offset)) as P;
    case 20:
      return (reader.readString(offset)) as P;
    case 21:
      return (reader.readBool(offset)) as P;
    case 22:
      return (reader.readBool(offset)) as P;
    case 23:
      return (reader.readObjectList<PurchaseLineItem>(
            offset,
            PurchaseLineItemSchema.deserialize,
            allOffsets,
            PurchaseLineItem(),
          ) ??
          []) as P;
    case 24:
      return (reader.readStringOrNull(offset)) as P;
    case 25:
      return (reader.readStringOrNull(offset)) as P;
    case 26:
      return (reader.readStringOrNull(offset)) as P;
    case 27:
      return (reader.readStringOrNull(offset)) as P;
    case 28:
      return (reader.readLongOrNull(offset)) as P;
    case 29:
      return (reader.readString(offset)) as P;
    case 30:
      return (reader.readStringOrNull(offset)) as P;
    case 31:
      return (reader.readStringOrNull(offset)) as P;
    case 32:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 33:
      return (reader.readStringOrNull(offset)) as P;
    case 34:
      return (reader.readStringOrNull(offset)) as P;
    case 35:
      return (reader.readString(offset)) as P;
    case 36:
      return (reader.readStringOrNull(offset)) as P;
    case 37:
      return (reader.readStringOrNull(offset)) as P;
    case 38:
      return (reader.readStringOrNull(offset)) as P;
    case 39:
      return (reader.readDateTime(offset)) as P;
    case 40:
      return (reader.readBool(offset)) as P;
    case 41:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 42:
      return (reader.readDouble(offset)) as P;
    case 43:
      return (reader.readDoubleOrNull(offset)) as P;
    case 44:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 45:
      return (reader.readStringOrNull(offset)) as P;
    case 46:
      return (reader.readStringOrNull(offset)) as P;
    case 47:
      return (reader.readStringOrNull(offset)) as P;
    case 48:
      return (reader.readDouble(offset)) as P;
    case 49:
      return (reader.readStringOrNull(offset)) as P;
    case 50:
      return (reader.readDouble(offset)) as P;
    case 51:
      return (reader.readStringOrNull(offset)) as P;
    case 52:
      return (reader.readDouble(offset)) as P;
    case 53:
      return (reader.readDouble(offset)) as P;
    case 54:
      return (reader.readDouble(offset)) as P;
    case 55:
      return (reader.readDouble(offset)) as P;
    case 56:
      return (reader.readDouble(offset)) as P;
    case 57:
      return (reader.readDouble(offset)) as P;
    case 58:
      return (reader.readStringOrNull(offset)) as P;
    case 59:
      return (reader.readStringOrNull(offset)) as P;
    case 60:
      return (reader.readDateTime(offset)) as P;
    case 61:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _purchaseGetId(Purchase object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _purchaseGetLinks(Purchase object) {
  return [];
}

void _purchaseAttach(IsarCollection<dynamic> col, Id id, Purchase object) {
  object.id = id;
}

extension PurchaseByIndex on IsarCollection<Purchase> {
  Future<Purchase?> getByBillNumber(String billNumber) {
    return getByIndex(r'billNumber', [billNumber]);
  }

  Purchase? getByBillNumberSync(String billNumber) {
    return getByIndexSync(r'billNumber', [billNumber]);
  }

  Future<bool> deleteByBillNumber(String billNumber) {
    return deleteByIndex(r'billNumber', [billNumber]);
  }

  bool deleteByBillNumberSync(String billNumber) {
    return deleteByIndexSync(r'billNumber', [billNumber]);
  }

  Future<List<Purchase?>> getAllByBillNumber(List<String> billNumberValues) {
    final values = billNumberValues.map((e) => [e]).toList();
    return getAllByIndex(r'billNumber', values);
  }

  List<Purchase?> getAllByBillNumberSync(List<String> billNumberValues) {
    final values = billNumberValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'billNumber', values);
  }

  Future<int> deleteAllByBillNumber(List<String> billNumberValues) {
    final values = billNumberValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'billNumber', values);
  }

  int deleteAllByBillNumberSync(List<String> billNumberValues) {
    final values = billNumberValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'billNumber', values);
  }

  Future<Id> putByBillNumber(Purchase object) {
    return putByIndex(r'billNumber', object);
  }

  Id putByBillNumberSync(Purchase object, {bool saveLinks = true}) {
    return putByIndexSync(r'billNumber', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByBillNumber(List<Purchase> objects) {
    return putAllByIndex(r'billNumber', objects);
  }

  List<Id> putAllByBillNumberSync(List<Purchase> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'billNumber', objects, saveLinks: saveLinks);
  }
}

extension PurchaseQueryWhereSort on QueryBuilder<Purchase, Purchase, QWhere> {
  QueryBuilder<Purchase, Purchase, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterWhere> anyBillSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'billSeq'),
      );
    });
  }
}

extension PurchaseQueryWhere on QueryBuilder<Purchase, Purchase, QWhereClause> {
  QueryBuilder<Purchase, Purchase, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterWhereClause> billNumberEqualTo(
      String billNumber) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'billNumber',
        value: [billNumber],
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterWhereClause> billNumberNotEqualTo(
      String billNumber) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'billNumber',
              lower: [],
              upper: [billNumber],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'billNumber',
              lower: [billNumber],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'billNumber',
              lower: [billNumber],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'billNumber',
              lower: [],
              upper: [billNumber],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterWhereClause> billSeqEqualTo(
      int billSeq) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'billSeq',
        value: [billSeq],
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterWhereClause> billSeqNotEqualTo(
      int billSeq) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'billSeq',
              lower: [],
              upper: [billSeq],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'billSeq',
              lower: [billSeq],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'billSeq',
              lower: [billSeq],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'billSeq',
              lower: [],
              upper: [billSeq],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterWhereClause> billSeqGreaterThan(
    int billSeq, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'billSeq',
        lower: [billSeq],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterWhereClause> billSeqLessThan(
    int billSeq, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'billSeq',
        lower: [],
        upper: [billSeq],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterWhereClause> billSeqBetween(
    int lowerBillSeq,
    int upperBillSeq, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'billSeq',
        lower: [lowerBillSeq],
        includeLower: includeLower,
        upper: [upperBillSeq],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PurchaseQueryFilter
    on QueryBuilder<Purchase, Purchase, QFilterCondition> {
  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> billNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> billNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'billNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> billNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'billNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> billNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'billNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> billNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'billNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> billNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'billNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> billNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'billNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> billNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'billNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> billNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      billNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'billNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> billSeqEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'billSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> billSeqGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'billSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> billSeqLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'billSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> billSeqBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'billSeq',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> cessAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cessAmount',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      cessAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cessAmount',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> cessAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cessAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> cessAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cessAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> cessAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cessAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> cessAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cessAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> cgstAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cgstAmount',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      cgstAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cgstAmount',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> cgstAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cgstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> cgstAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cgstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> cgstAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cgstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> cgstAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cgstAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> discountAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      discountAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discountAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      discountAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discountAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> discountAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discountAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> distanceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'distance',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> distanceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'distance',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> distanceEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'distance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> distanceGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'distance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> distanceLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'distance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> distanceBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'distance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> documentTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'documentType',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      documentTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'documentType',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> documentTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'documentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      documentTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'documentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> documentTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'documentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> documentTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'documentType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      documentTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'documentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> documentTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'documentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> documentTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'documentType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> documentTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'documentType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      documentTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'documentType',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      documentTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'documentType',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> ewayBillDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ewayBillDate',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ewayBillDate',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> ewayBillDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ewayBillDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ewayBillDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> ewayBillDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ewayBillDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> ewayBillDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ewayBillDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ewayBillNumber',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ewayBillNumber',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> ewayBillNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ewayBillNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ewayBillNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ewayBillNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> ewayBillNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ewayBillNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ewayBillNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ewayBillNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ewayBillNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> ewayBillNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ewayBillNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ewayBillNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ewayBillNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillValidUptoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ewayBillValidUpto',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillValidUptoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ewayBillValidUpto',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillValidUptoEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ewayBillValidUpto',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillValidUptoGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ewayBillValidUpto',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillValidUptoLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ewayBillValidUpto',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      ewayBillValidUptoBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ewayBillValidUpto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exchangeRateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'exchangeRate',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      exchangeRateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'exchangeRate',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exchangeRateEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'exchangeRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      exchangeRateGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'exchangeRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exchangeRateLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'exchangeRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exchangeRateBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'exchangeRate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      exportCountryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'exportCountry',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      exportCountryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'exportCountry',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exportCountryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'exportCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      exportCountryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'exportCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exportCountryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'exportCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exportCountryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'exportCountry',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      exportCountryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'exportCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exportCountryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'exportCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exportCountryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'exportCountry',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exportCountryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'exportCountry',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      exportCountryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'exportCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      exportCountryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'exportCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exportTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'exportType',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      exportTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'exportType',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exportTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'exportType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exportTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'exportType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exportTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'exportType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exportTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'exportType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exportTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'exportType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exportTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'exportType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exportTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'exportType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exportTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'exportType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> exportTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'exportType',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      exportTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'exportType',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'foreignCurrency',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'foreignCurrency',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'foreignCurrency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'foreignCurrency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'foreignCurrency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'foreignCurrency',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'foreignCurrency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'foreignCurrency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'foreignCurrency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'foreignCurrency',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'foreignCurrency',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'foreignCurrency',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'foreignCurrencyAmount',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'foreignCurrencyAmount',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'foreignCurrencyAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'foreignCurrencyAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'foreignCurrencyAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      foreignCurrencyAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'foreignCurrencyAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> grandTotalEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grandTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> grandTotalGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'grandTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> grandTotalLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'grandTotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> grandTotalBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'grandTotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> gstTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gstType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> gstTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gstType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> gstTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gstType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> gstTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gstType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> gstTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gstType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> gstTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gstType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> gstTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gstType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> gstTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gstType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> gstTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gstType',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> gstTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gstType',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> igstAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'igstAmount',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      igstAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'igstAmount',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> igstAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'igstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> igstAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'igstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> igstAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'igstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> igstAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'igstAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> invoiceDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invoiceDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      invoiceDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'invoiceDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> invoiceDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'invoiceDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> invoiceDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'invoiceDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> invoiceTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invoiceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      invoiceTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'invoiceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> invoiceTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'invoiceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> invoiceTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'invoiceType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> invoiceTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'invoiceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> invoiceTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'invoiceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> invoiceTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'invoiceType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> invoiceTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'invoiceType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> invoiceTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invoiceType',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      invoiceTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'invoiceType',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> isGstBillEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isGstBill',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      isReverseChargeEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isReverseCharge',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> itemsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'items',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> itemsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'items',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> itemsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'items',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> itemsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'items',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      itemsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'items',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> itemsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'items',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> notesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> notesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> notesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> notesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> notesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> notesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> notesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> notesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> notesContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> notesMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> notesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> notesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyAddressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyAddress',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      partyAddressIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyAddress',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyAddressEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      partyAddressGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'partyAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyAddressLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'partyAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyAddressBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'partyAddress',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      partyAddressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'partyAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyAddressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'partyAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyAddressContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'partyAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyAddressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'partyAddress',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      partyAddressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyAddress',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      partyAddressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyAddress',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyEmailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyEmail',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      partyEmailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyEmail',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyEmailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyEmailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'partyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyEmailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'partyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyEmailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'partyEmail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyEmailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'partyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyEmailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'partyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyEmailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'partyEmail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyEmailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'partyEmail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyEmailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      partyEmailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyEmail',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyGstinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyGstin',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      partyGstinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyGstin',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyGstinEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyGstinGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'partyGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyGstinLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'partyGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyGstinBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'partyGstin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyGstinStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'partyGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyGstinEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'partyGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyGstinContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'partyGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyGstinMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'partyGstin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyGstinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyGstin',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      partyGstinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyGstin',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyId',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyId',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyId',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'partyId',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'partyId',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'partyId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'partyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'partyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'partyName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'partyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'partyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'partyName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'partyName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyName',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      partyNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyName',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyPhoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyPhone',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      partyPhoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyPhone',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyPhoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyPhoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'partyPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyPhoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'partyPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyPhoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'partyPhone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyPhoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'partyPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyPhoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'partyPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyPhoneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'partyPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyPhoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'partyPhone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyPhoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyPhone',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      partyPhoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyPhone',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyStateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyState',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      partyStateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyState',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyStateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyStateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'partyState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyStateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'partyState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyStateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'partyState',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyStateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'partyState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyStateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'partyState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyStateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'partyState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyStateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'partyState',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> partyStateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyState',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      partyStateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyState',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'paymentDate',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'paymentDate',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paymentDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paymentDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paymentDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentModeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'paymentMode',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentModeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'paymentMode',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentModeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentModeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paymentMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentModeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paymentMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentModeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paymentMode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentModeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'paymentMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentModeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'paymentMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentModeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'paymentMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentModeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'paymentMode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentModeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentMode',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentModeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paymentMode',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentReferenceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'paymentReference',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentReferenceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'paymentReference',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentReferenceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentReferenceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paymentReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentReferenceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paymentReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentReferenceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paymentReference',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentReferenceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'paymentReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentReferenceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'paymentReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentReferenceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'paymentReference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentReferenceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'paymentReference',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentReferenceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentReference',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentReferenceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paymentReference',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentStatusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentStatusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paymentStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentStatusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paymentStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentStatusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paymentStatus',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentStatusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'paymentStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentStatusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'paymentStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentStatusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'paymentStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> paymentStatusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'paymentStatus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      paymentStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paymentStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      placeOfDispatchIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'placeOfDispatch',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      placeOfDispatchIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'placeOfDispatch',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      placeOfDispatchEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeOfDispatch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      placeOfDispatchGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'placeOfDispatch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      placeOfDispatchLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'placeOfDispatch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      placeOfDispatchBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'placeOfDispatch',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      placeOfDispatchStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'placeOfDispatch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      placeOfDispatchEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'placeOfDispatch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      placeOfDispatchContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'placeOfDispatch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      placeOfDispatchMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'placeOfDispatch',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      placeOfDispatchIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeOfDispatch',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      placeOfDispatchIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'placeOfDispatch',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'portCode',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'portCode',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'portCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'portCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'portCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'portCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'portCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'portCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'portCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'portCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'portCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'portCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'portName',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'portName',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'portName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'portName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'portName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'portName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'portName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'portName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'portName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'portName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'portName',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> portNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'portName',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> purchaseDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchaseDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      purchaseDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'purchaseDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> purchaseDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'purchaseDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> purchaseDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'purchaseDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> rcmPaidEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rcmPaid',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      rcmPaymentDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rcmPaymentDate',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      rcmPaymentDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rcmPaymentDate',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> rcmPaymentDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rcmPaymentDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      rcmPaymentDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rcmPaymentDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      rcmPaymentDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rcmPaymentDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> rcmPaymentDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rcmPaymentDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> rcmTaxAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rcmTaxAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      rcmTaxAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rcmTaxAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> rcmTaxAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rcmTaxAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> rcmTaxAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rcmTaxAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> sgstAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sgstAmount',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      sgstAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sgstAmount',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> sgstAmountEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sgstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> sgstAmountGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sgstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> sgstAmountLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sgstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> sgstAmountBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sgstAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shippingBillDate',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shippingBillDate',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shippingBillDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shippingBillDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shippingBillDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shippingBillDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shippingBillNumber',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shippingBillNumber',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shippingBillNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shippingBillNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shippingBillNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shippingBillNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shippingBillNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shippingBillNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shippingBillNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shippingBillNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shippingBillNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      shippingBillNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shippingBillNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      stateOfDispatchIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stateOfDispatch',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      stateOfDispatchIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stateOfDispatch',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      stateOfDispatchEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stateOfDispatch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      stateOfDispatchGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stateOfDispatch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      stateOfDispatchLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stateOfDispatch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      stateOfDispatchBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stateOfDispatch',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      stateOfDispatchStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stateOfDispatch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      stateOfDispatchEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stateOfDispatch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      stateOfDispatchContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stateOfDispatch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      stateOfDispatchMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stateOfDispatch',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      stateOfDispatchIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stateOfDispatch',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      stateOfDispatchIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stateOfDispatch',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      subSupplyTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subSupplyType',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      subSupplyTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subSupplyType',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> subSupplyTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subSupplyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      subSupplyTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subSupplyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> subSupplyTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subSupplyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> subSupplyTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subSupplyType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      subSupplyTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subSupplyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> subSupplyTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subSupplyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> subSupplyTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subSupplyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> subSupplyTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subSupplyType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      subSupplyTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subSupplyType',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      subSupplyTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subSupplyType',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> subtotalEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subtotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> subtotalGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subtotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> subtotalLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subtotal',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> subtotalBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subtotal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> supplyTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'supplyType',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      supplyTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'supplyType',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> supplyTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supplyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> supplyTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'supplyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> supplyTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'supplyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> supplyTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'supplyType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> supplyTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'supplyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> supplyTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'supplyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> supplyTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'supplyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> supplyTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'supplyType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> supplyTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supplyType',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      supplyTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'supplyType',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> taxAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> taxAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> taxAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> taxAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> taxModeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'taxMode',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> taxModeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'taxMode',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> taxModeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> taxModeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> taxModeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> taxModeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxMode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> taxModeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'taxMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> taxModeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'taxMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> taxModeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taxMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> taxModeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taxMode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> taxModeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxMode',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> taxModeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taxMode',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      totalAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalCgstEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalCgst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalCgstGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalCgst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalCgstLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalCgst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalCgstBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalCgst',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalDiscountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalDiscount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      totalDiscountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalDiscount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalDiscountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalDiscount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalDiscountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalDiscount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalGstEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalGst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalGstGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalGst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalGstLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalGst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalGstBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalGst',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalIgstEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalIgst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalIgstGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalIgst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalIgstLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalIgst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalIgstBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalIgst',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalSgstEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalSgst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalSgstGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalSgst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalSgstLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalSgst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> totalSgstBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalSgst',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transporterId',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transporterId',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> transporterIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transporterId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transporterId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> transporterIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transporterId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> transporterIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transporterId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transporterId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> transporterIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transporterId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> transporterIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transporterId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> transporterIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transporterId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transporterId',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transporterId',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transporterName',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transporterName',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transporterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transporterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transporterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transporterName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transporterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transporterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transporterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transporterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transporterName',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      transporterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transporterName',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> updatedAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      vehicleNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vehicleNumber',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      vehicleNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vehicleNumber',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> vehicleNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vehicleNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      vehicleNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'vehicleNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> vehicleNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'vehicleNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> vehicleNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'vehicleNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      vehicleNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'vehicleNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> vehicleNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'vehicleNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> vehicleNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'vehicleNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> vehicleNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'vehicleNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      vehicleNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vehicleNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterFilterCondition>
      vehicleNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'vehicleNumber',
        value: '',
      ));
    });
  }
}

extension PurchaseQueryObject
    on QueryBuilder<Purchase, Purchase, QFilterCondition> {
  QueryBuilder<Purchase, Purchase, QAfterFilterCondition> itemsElement(
      FilterQuery<PurchaseLineItem> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'items');
    });
  }
}

extension PurchaseQueryLinks
    on QueryBuilder<Purchase, Purchase, QFilterCondition> {}

extension PurchaseQuerySortBy on QueryBuilder<Purchase, Purchase, QSortBy> {
  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByBillNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billNumber', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByBillNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billNumber', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByBillSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billSeq', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByBillSeqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billSeq', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByCessAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cessAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByCessAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cessAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByCgstAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cgstAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByCgstAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cgstAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByDiscountAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByDiscountAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByDocumentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentType', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByDocumentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentType', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByEwayBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillDate', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByEwayBillDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillDate', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByEwayBillNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillNumber', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByEwayBillNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillNumber', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByEwayBillValidUpto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillValidUpto', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByEwayBillValidUptoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillValidUpto', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByExchangeRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exchangeRate', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByExchangeRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exchangeRate', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByExportCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exportCountry', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByExportCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exportCountry', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByExportType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exportType', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByExportTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exportType', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByForeignCurrency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foreignCurrency', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByForeignCurrencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foreignCurrency', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByForeignCurrencyAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foreignCurrencyAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy>
      sortByForeignCurrencyAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foreignCurrencyAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByGrandTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grandTotal', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByGrandTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grandTotal', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByGstType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gstType', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByGstTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gstType', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByIgstAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'igstAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByIgstAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'igstAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByInvoiceDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceDate', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByInvoiceDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceDate', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByInvoiceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceType', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByInvoiceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceType', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByIsGstBill() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGstBill', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByIsGstBillDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGstBill', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByIsReverseCharge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isReverseCharge', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByIsReverseChargeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isReverseCharge', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPartyAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyAddress', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPartyAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyAddress', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPartyEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyEmail', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPartyEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyEmail', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPartyGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPartyGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPartyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPartyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPartyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPartyPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyPhone', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPartyPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyPhone', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPartyState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyState', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPartyStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyState', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPaymentDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentDate', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPaymentDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentDate', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPaymentMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentMode', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPaymentModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentMode', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPaymentReference() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentReference', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPaymentReferenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentReference', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPaymentStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentStatus', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPaymentStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentStatus', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPlaceOfDispatch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfDispatch', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPlaceOfDispatchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfDispatch', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPortCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'portCode', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPortCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'portCode', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPortName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'portName', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPortNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'portName', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPurchaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseDate', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByPurchaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseDate', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByRcmPaid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rcmPaid', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByRcmPaidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rcmPaid', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByRcmPaymentDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rcmPaymentDate', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByRcmPaymentDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rcmPaymentDate', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByRcmTaxAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rcmTaxAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByRcmTaxAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rcmTaxAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortBySgstAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sgstAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortBySgstAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sgstAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByShippingBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shippingBillDate', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByShippingBillDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shippingBillDate', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByShippingBillNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shippingBillNumber', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy>
      sortByShippingBillNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shippingBillNumber', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByStateOfDispatch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stateOfDispatch', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByStateOfDispatchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stateOfDispatch', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortBySubSupplyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subSupplyType', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortBySubSupplyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subSupplyType', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortBySubtotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortBySupplyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supplyType', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortBySupplyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supplyType', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTaxAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTaxAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTaxMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxMode', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTaxModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxMode', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTotalAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTotalCgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCgst', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTotalCgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCgst', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTotalDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalDiscount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTotalDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalDiscount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTotalGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGst', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTotalGstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGst', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTotalIgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalIgst', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTotalIgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalIgst', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTotalSgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSgst', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTotalSgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSgst', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTransporterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterId', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTransporterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterId', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTransporterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterName', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByTransporterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterName', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByVehicleNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleNumber', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> sortByVehicleNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleNumber', Sort.desc);
    });
  }
}

extension PurchaseQuerySortThenBy
    on QueryBuilder<Purchase, Purchase, QSortThenBy> {
  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByBillNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billNumber', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByBillNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billNumber', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByBillSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billSeq', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByBillSeqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'billSeq', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByCessAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cessAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByCessAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cessAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByCgstAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cgstAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByCgstAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cgstAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByDiscountAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByDiscountAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByDocumentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentType', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByDocumentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentType', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByEwayBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillDate', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByEwayBillDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillDate', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByEwayBillNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillNumber', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByEwayBillNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillNumber', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByEwayBillValidUpto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillValidUpto', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByEwayBillValidUptoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillValidUpto', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByExchangeRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exchangeRate', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByExchangeRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exchangeRate', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByExportCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exportCountry', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByExportCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exportCountry', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByExportType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exportType', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByExportTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exportType', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByForeignCurrency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foreignCurrency', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByForeignCurrencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foreignCurrency', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByForeignCurrencyAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foreignCurrencyAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy>
      thenByForeignCurrencyAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foreignCurrencyAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByGrandTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grandTotal', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByGrandTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grandTotal', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByGstType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gstType', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByGstTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gstType', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByIgstAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'igstAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByIgstAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'igstAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByInvoiceDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceDate', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByInvoiceDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceDate', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByInvoiceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceType', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByInvoiceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceType', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByIsGstBill() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGstBill', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByIsGstBillDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGstBill', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByIsReverseCharge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isReverseCharge', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByIsReverseChargeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isReverseCharge', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPartyAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyAddress', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPartyAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyAddress', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPartyEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyEmail', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPartyEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyEmail', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPartyGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPartyGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPartyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPartyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPartyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPartyPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyPhone', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPartyPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyPhone', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPartyState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyState', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPartyStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyState', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPaymentDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentDate', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPaymentDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentDate', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPaymentMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentMode', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPaymentModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentMode', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPaymentReference() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentReference', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPaymentReferenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentReference', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPaymentStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentStatus', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPaymentStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentStatus', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPlaceOfDispatch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfDispatch', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPlaceOfDispatchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfDispatch', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPortCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'portCode', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPortCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'portCode', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPortName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'portName', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPortNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'portName', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPurchaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseDate', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByPurchaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseDate', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByRcmPaid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rcmPaid', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByRcmPaidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rcmPaid', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByRcmPaymentDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rcmPaymentDate', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByRcmPaymentDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rcmPaymentDate', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByRcmTaxAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rcmTaxAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByRcmTaxAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rcmTaxAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenBySgstAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sgstAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenBySgstAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sgstAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByShippingBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shippingBillDate', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByShippingBillDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shippingBillDate', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByShippingBillNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shippingBillNumber', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy>
      thenByShippingBillNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shippingBillNumber', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByStateOfDispatch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stateOfDispatch', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByStateOfDispatchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stateOfDispatch', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenBySubSupplyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subSupplyType', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenBySubSupplyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subSupplyType', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenBySubtotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenBySupplyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supplyType', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenBySupplyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supplyType', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTaxAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTaxAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTaxMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxMode', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTaxModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxMode', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTotalAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTotalCgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCgst', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTotalCgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCgst', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTotalDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalDiscount', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTotalDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalDiscount', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTotalGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGst', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTotalGstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGst', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTotalIgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalIgst', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTotalIgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalIgst', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTotalSgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSgst', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTotalSgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSgst', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTransporterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterId', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTransporterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterId', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTransporterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterName', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByTransporterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterName', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByVehicleNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleNumber', Sort.asc);
    });
  }

  QueryBuilder<Purchase, Purchase, QAfterSortBy> thenByVehicleNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleNumber', Sort.desc);
    });
  }
}

extension PurchaseQueryWhereDistinct
    on QueryBuilder<Purchase, Purchase, QDistinct> {
  QueryBuilder<Purchase, Purchase, QDistinct> distinctByBillNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'billNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByBillSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'billSeq');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByCessAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cessAmount');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByCgstAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cgstAmount');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByDiscountAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discountAmount');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'distance');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByDocumentType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'documentType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByEwayBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ewayBillDate');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByEwayBillNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ewayBillNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByEwayBillValidUpto() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ewayBillValidUpto');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByExchangeRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'exchangeRate');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByExportCountry(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'exportCountry',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByExportType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'exportType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByForeignCurrency(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'foreignCurrency',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct>
      distinctByForeignCurrencyAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'foreignCurrencyAmount');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByGrandTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'grandTotal');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByGstType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gstType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByIgstAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'igstAmount');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByInvoiceDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invoiceDate');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByInvoiceType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invoiceType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByIsGstBill() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isGstBill');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByIsReverseCharge() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isReverseCharge');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByNotes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPartyAddress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyAddress', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPartyEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyEmail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPartyGstin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyGstin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyId');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPartyName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPartyPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyPhone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPartyState(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyState', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPaymentDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentDate');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPaymentMode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentMode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPaymentReference(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentReference',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPaymentStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentStatus',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPlaceOfDispatch(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'placeOfDispatch',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPortCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'portCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPortName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'portName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPurchaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'purchaseDate');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByRcmPaid() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rcmPaid');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByRcmPaymentDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rcmPaymentDate');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByRcmTaxAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rcmTaxAmount');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctBySgstAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sgstAmount');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByShippingBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shippingBillDate');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByShippingBillNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shippingBillNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByStateOfDispatch(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stateOfDispatch',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctBySubSupplyType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subSupplyType',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtotal');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctBySupplyType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'supplyType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByTaxAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxAmount');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByTaxMode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxMode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalAmount');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByTotalCgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalCgst');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByTotalDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalDiscount');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByTotalGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalGst');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByTotalIgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalIgst');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByTotalSgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalSgst');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByTransporterId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transporterId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByTransporterName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transporterName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByVehicleNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vehicleNumber',
          caseSensitive: caseSensitive);
    });
  }
}

extension PurchaseQueryProperty
    on QueryBuilder<Purchase, Purchase, QQueryProperty> {
  QueryBuilder<Purchase, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Purchase, String, QQueryOperations> billNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'billNumber');
    });
  }

  QueryBuilder<Purchase, int, QQueryOperations> billSeqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'billSeq');
    });
  }

  QueryBuilder<Purchase, double?, QQueryOperations> cessAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cessAmount');
    });
  }

  QueryBuilder<Purchase, double?, QQueryOperations> cgstAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cgstAmount');
    });
  }

  QueryBuilder<Purchase, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Purchase, double, QQueryOperations> discountAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discountAmount');
    });
  }

  QueryBuilder<Purchase, double?, QQueryOperations> distanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'distance');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> documentTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'documentType');
    });
  }

  QueryBuilder<Purchase, DateTime?, QQueryOperations> ewayBillDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ewayBillDate');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> ewayBillNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ewayBillNumber');
    });
  }

  QueryBuilder<Purchase, DateTime?, QQueryOperations>
      ewayBillValidUptoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ewayBillValidUpto');
    });
  }

  QueryBuilder<Purchase, double?, QQueryOperations> exchangeRateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'exchangeRate');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> exportCountryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'exportCountry');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> exportTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'exportType');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> foreignCurrencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'foreignCurrency');
    });
  }

  QueryBuilder<Purchase, double?, QQueryOperations>
      foreignCurrencyAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'foreignCurrencyAmount');
    });
  }

  QueryBuilder<Purchase, double, QQueryOperations> grandTotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'grandTotal');
    });
  }

  QueryBuilder<Purchase, String, QQueryOperations> gstTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gstType');
    });
  }

  QueryBuilder<Purchase, double?, QQueryOperations> igstAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'igstAmount');
    });
  }

  QueryBuilder<Purchase, DateTime, QQueryOperations> invoiceDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invoiceDate');
    });
  }

  QueryBuilder<Purchase, String, QQueryOperations> invoiceTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invoiceType');
    });
  }

  QueryBuilder<Purchase, bool, QQueryOperations> isGstBillProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isGstBill');
    });
  }

  QueryBuilder<Purchase, bool, QQueryOperations> isReverseChargeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isReverseCharge');
    });
  }

  QueryBuilder<Purchase, List<PurchaseLineItem>, QQueryOperations>
      itemsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'items');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> notesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notes');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> partyAddressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyAddress');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> partyEmailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyEmail');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> partyGstinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyGstin');
    });
  }

  QueryBuilder<Purchase, int?, QQueryOperations> partyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyId');
    });
  }

  QueryBuilder<Purchase, String, QQueryOperations> partyNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyName');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> partyPhoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyPhone');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> partyStateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyState');
    });
  }

  QueryBuilder<Purchase, DateTime?, QQueryOperations> paymentDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentDate');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> paymentModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentMode');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> paymentReferenceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentReference');
    });
  }

  QueryBuilder<Purchase, String, QQueryOperations> paymentStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentStatus');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> placeOfDispatchProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'placeOfDispatch');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> portCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'portCode');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> portNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'portName');
    });
  }

  QueryBuilder<Purchase, DateTime, QQueryOperations> purchaseDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'purchaseDate');
    });
  }

  QueryBuilder<Purchase, bool, QQueryOperations> rcmPaidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rcmPaid');
    });
  }

  QueryBuilder<Purchase, DateTime?, QQueryOperations> rcmPaymentDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rcmPaymentDate');
    });
  }

  QueryBuilder<Purchase, double, QQueryOperations> rcmTaxAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rcmTaxAmount');
    });
  }

  QueryBuilder<Purchase, double?, QQueryOperations> sgstAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sgstAmount');
    });
  }

  QueryBuilder<Purchase, DateTime?, QQueryOperations>
      shippingBillDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shippingBillDate');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations>
      shippingBillNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shippingBillNumber');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> stateOfDispatchProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stateOfDispatch');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> subSupplyTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subSupplyType');
    });
  }

  QueryBuilder<Purchase, double, QQueryOperations> subtotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtotal');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> supplyTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'supplyType');
    });
  }

  QueryBuilder<Purchase, double, QQueryOperations> taxAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxAmount');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> taxModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxMode');
    });
  }

  QueryBuilder<Purchase, double, QQueryOperations> totalAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalAmount');
    });
  }

  QueryBuilder<Purchase, double, QQueryOperations> totalCgstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalCgst');
    });
  }

  QueryBuilder<Purchase, double, QQueryOperations> totalDiscountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalDiscount');
    });
  }

  QueryBuilder<Purchase, double, QQueryOperations> totalGstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalGst');
    });
  }

  QueryBuilder<Purchase, double, QQueryOperations> totalIgstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalIgst');
    });
  }

  QueryBuilder<Purchase, double, QQueryOperations> totalSgstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalSgst');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> transporterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transporterId');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> transporterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transporterName');
    });
  }

  QueryBuilder<Purchase, DateTime, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<Purchase, String?, QQueryOperations> vehicleNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vehicleNumber');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PurchaseLineItemSchema = Schema(
  name: r'PurchaseLineItem',
  id: -140956077606619014,
  properties: {
    r'cessAmount': PropertySchema(
      id: 0,
      name: r'cessAmount',
      type: IsarType.double,
    ),
    r'cessRate': PropertySchema(
      id: 1,
      name: r'cessRate',
      type: IsarType.double,
    ),
    r'cgstAmount': PropertySchema(
      id: 2,
      name: r'cgstAmount',
      type: IsarType.double,
    ),
    r'cgstRate': PropertySchema(
      id: 3,
      name: r'cgstRate',
      type: IsarType.double,
    ),
    r'discountAmount': PropertySchema(
      id: 4,
      name: r'discountAmount',
      type: IsarType.double,
    ),
    r'discountType': PropertySchema(
      id: 5,
      name: r'discountType',
      type: IsarType.string,
    ),
    r'discountValue': PropertySchema(
      id: 6,
      name: r'discountValue',
      type: IsarType.double,
    ),
    r'gstRate': PropertySchema(
      id: 7,
      name: r'gstRate',
      type: IsarType.double,
    ),
    r'hsnCode': PropertySchema(
      id: 8,
      name: r'hsnCode',
      type: IsarType.string,
    ),
    r'igstAmount': PropertySchema(
      id: 9,
      name: r'igstAmount',
      type: IsarType.double,
    ),
    r'igstRate': PropertySchema(
      id: 10,
      name: r'igstRate',
      type: IsarType.double,
    ),
    r'itemId': PropertySchema(
      id: 11,
      name: r'itemId',
      type: IsarType.long,
    ),
    r'itemName': PropertySchema(
      id: 12,
      name: r'itemName',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 13,
      name: r'quantity',
      type: IsarType.double,
    ),
    r'rate': PropertySchema(
      id: 14,
      name: r'rate',
      type: IsarType.double,
    ),
    r'sgstAmount': PropertySchema(
      id: 15,
      name: r'sgstAmount',
      type: IsarType.double,
    ),
    r'sgstRate': PropertySchema(
      id: 16,
      name: r'sgstRate',
      type: IsarType.double,
    ),
    r'taxAmount': PropertySchema(
      id: 17,
      name: r'taxAmount',
      type: IsarType.double,
    ),
    r'taxType': PropertySchema(
      id: 18,
      name: r'taxType',
      type: IsarType.string,
    ),
    r'taxableAmount': PropertySchema(
      id: 19,
      name: r'taxableAmount',
      type: IsarType.double,
    ),
    r'totalAmount': PropertySchema(
      id: 20,
      name: r'totalAmount',
      type: IsarType.double,
    ),
    r'totalPrice': PropertySchema(
      id: 21,
      name: r'totalPrice',
      type: IsarType.double,
    ),
    r'unit': PropertySchema(
      id: 22,
      name: r'unit',
      type: IsarType.string,
    ),
    r'unitPrice': PropertySchema(
      id: 23,
      name: r'unitPrice',
      type: IsarType.double,
    )
  },
  estimateSize: _purchaseLineItemEstimateSize,
  serialize: _purchaseLineItemSerialize,
  deserialize: _purchaseLineItemDeserialize,
  deserializeProp: _purchaseLineItemDeserializeProp,
);

int _purchaseLineItemEstimateSize(
  PurchaseLineItem object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.discountType.length * 3;
  {
    final value = object.hsnCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.itemName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.taxType.length * 3;
  bytesCount += 3 + object.unit.length * 3;
  return bytesCount;
}

void _purchaseLineItemSerialize(
  PurchaseLineItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.cessAmount);
  writer.writeDouble(offsets[1], object.cessRate);
  writer.writeDouble(offsets[2], object.cgstAmount);
  writer.writeDouble(offsets[3], object.cgstRate);
  writer.writeDouble(offsets[4], object.discountAmount);
  writer.writeString(offsets[5], object.discountType);
  writer.writeDouble(offsets[6], object.discountValue);
  writer.writeDouble(offsets[7], object.gstRate);
  writer.writeString(offsets[8], object.hsnCode);
  writer.writeDouble(offsets[9], object.igstAmount);
  writer.writeDouble(offsets[10], object.igstRate);
  writer.writeLong(offsets[11], object.itemId);
  writer.writeString(offsets[12], object.itemName);
  writer.writeDouble(offsets[13], object.quantity);
  writer.writeDouble(offsets[14], object.rate);
  writer.writeDouble(offsets[15], object.sgstAmount);
  writer.writeDouble(offsets[16], object.sgstRate);
  writer.writeDouble(offsets[17], object.taxAmount);
  writer.writeString(offsets[18], object.taxType);
  writer.writeDouble(offsets[19], object.taxableAmount);
  writer.writeDouble(offsets[20], object.totalAmount);
  writer.writeDouble(offsets[21], object.totalPrice);
  writer.writeString(offsets[22], object.unit);
  writer.writeDouble(offsets[23], object.unitPrice);
}

PurchaseLineItem _purchaseLineItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PurchaseLineItem();
  object.cessAmount = reader.readDouble(offsets[0]);
  object.cessRate = reader.readDouble(offsets[1]);
  object.cgstAmount = reader.readDouble(offsets[2]);
  object.cgstRate = reader.readDouble(offsets[3]);
  object.discountAmount = reader.readDouble(offsets[4]);
  object.discountType = reader.readString(offsets[5]);
  object.discountValue = reader.readDouble(offsets[6]);
  object.gstRate = reader.readDouble(offsets[7]);
  object.hsnCode = reader.readStringOrNull(offsets[8]);
  object.igstAmount = reader.readDouble(offsets[9]);
  object.igstRate = reader.readDouble(offsets[10]);
  object.itemId = reader.readLongOrNull(offsets[11]);
  object.itemName = reader.readStringOrNull(offsets[12]);
  object.quantity = reader.readDouble(offsets[13]);
  object.rate = reader.readDouble(offsets[14]);
  object.sgstAmount = reader.readDouble(offsets[15]);
  object.sgstRate = reader.readDouble(offsets[16]);
  object.taxAmount = reader.readDouble(offsets[17]);
  object.taxType = reader.readString(offsets[18]);
  object.taxableAmount = reader.readDouble(offsets[19]);
  object.totalAmount = reader.readDouble(offsets[20]);
  object.totalPrice = reader.readDouble(offsets[21]);
  object.unit = reader.readString(offsets[22]);
  object.unitPrice = reader.readDouble(offsets[23]);
  return object;
}

P _purchaseLineItemDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readDouble(offset)) as P;
    case 14:
      return (reader.readDouble(offset)) as P;
    case 15:
      return (reader.readDouble(offset)) as P;
    case 16:
      return (reader.readDouble(offset)) as P;
    case 17:
      return (reader.readDouble(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readDouble(offset)) as P;
    case 20:
      return (reader.readDouble(offset)) as P;
    case 21:
      return (reader.readDouble(offset)) as P;
    case 22:
      return (reader.readString(offset)) as P;
    case 23:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PurchaseLineItemQueryFilter
    on QueryBuilder<PurchaseLineItem, PurchaseLineItem, QFilterCondition> {
  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      cessAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cessAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      cessAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cessAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      cessAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cessAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      cessAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cessAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      cessRateEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cessRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      cessRateGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cessRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      cessRateLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cessRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      cessRateBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cessRate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      cgstAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cgstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      cgstAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cgstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      cgstAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cgstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      cgstAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cgstAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      cgstRateEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cgstRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      cgstRateGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cgstRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      cgstRateLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cgstRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      cgstRateBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cgstRate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discountAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discountAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discountAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discountType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discountType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discountType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'discountType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'discountType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'discountType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'discountType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountType',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'discountType',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountValueEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discountValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountValueGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discountValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountValueLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discountValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      discountValueBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discountValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      gstRateEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gstRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      gstRateGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gstRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      gstRateLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gstRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      gstRateBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gstRate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      hsnCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hsnCode',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      hsnCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hsnCode',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      hsnCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hsnCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      hsnCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hsnCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      hsnCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hsnCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      hsnCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hsnCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      hsnCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hsnCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      hsnCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hsnCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      hsnCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hsnCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      hsnCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hsnCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      hsnCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hsnCode',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      hsnCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hsnCode',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      igstAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'igstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      igstAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'igstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      igstAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'igstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      igstAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'igstAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      igstRateEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'igstRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      igstRateGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'igstRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      igstRateLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'igstRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      igstRateBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'igstRate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemId',
        value: value,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemId',
        value: value,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemId',
        value: value,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemName',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemName',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemName',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      itemNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemName',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      quantityEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      quantityGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      quantityLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      quantityBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      rateEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      rateGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      rateLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      rateBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      sgstAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sgstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      sgstAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sgstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      sgstAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sgstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      sgstAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sgstAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      sgstRateEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sgstRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      sgstRateGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sgstRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      sgstRateLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sgstRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      sgstRateBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sgstRate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'taxType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'taxType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxType',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taxType',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxableAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxableAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxableAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxableAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxableAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxableAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      taxableAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxableAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      totalAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      totalAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      totalAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      totalAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      totalPriceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      totalPriceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      totalPriceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      totalPriceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      unitEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      unitGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      unitLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      unitBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      unitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      unitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      unitContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      unitMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'unit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      unitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      unitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unit',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      unitPriceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      unitPriceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unitPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      unitPriceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unitPrice',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      unitPriceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unitPrice',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension PurchaseLineItemQueryObject
    on QueryBuilder<PurchaseLineItem, PurchaseLineItem, QFilterCondition> {}
