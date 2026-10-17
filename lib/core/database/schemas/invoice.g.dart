// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetInvoiceCollection on Isar {
  IsarCollection<Invoice> get invoices => this.collection();
}

const InvoiceSchema = CollectionSchema(
  name: r'Invoice',
  id: -341399436017629,
  properties: {
    r'discountAmount': PropertySchema(
      id: 0,
      name: r'discountAmount',
      type: IsarType.double,
    ),
    r'distance': PropertySchema(
      id: 1,
      name: r'distance',
      type: IsarType.double,
    ),
    r'documentType': PropertySchema(
      id: 2,
      name: r'documentType',
      type: IsarType.string,
    ),
    r'dueAmount': PropertySchema(
      id: 3,
      name: r'dueAmount',
      type: IsarType.double,
    ),
    r'eInvoiceIrn': PropertySchema(
      id: 4,
      name: r'eInvoiceIrn',
      type: IsarType.string,
    ),
    r'ewayBillDate': PropertySchema(
      id: 5,
      name: r'ewayBillDate',
      type: IsarType.dateTime,
    ),
    r'ewayBillNumber': PropertySchema(
      id: 6,
      name: r'ewayBillNumber',
      type: IsarType.string,
    ),
    r'ewayBillValidUpto': PropertySchema(
      id: 7,
      name: r'ewayBillValidUpto',
      type: IsarType.dateTime,
    ),
    r'exchangeRate': PropertySchema(
      id: 8,
      name: r'exchangeRate',
      type: IsarType.double,
    ),
    r'exportCountry': PropertySchema(
      id: 9,
      name: r'exportCountry',
      type: IsarType.string,
    ),
    r'exportType': PropertySchema(
      id: 10,
      name: r'exportType',
      type: IsarType.string,
    ),
    r'foreignCurrency': PropertySchema(
      id: 11,
      name: r'foreignCurrency',
      type: IsarType.string,
    ),
    r'foreignCurrencyAmount': PropertySchema(
      id: 12,
      name: r'foreignCurrencyAmount',
      type: IsarType.double,
    ),
    r'grandTotal': PropertySchema(
      id: 13,
      name: r'grandTotal',
      type: IsarType.double,
    ),
    r'invoiceDate': PropertySchema(
      id: 14,
      name: r'invoiceDate',
      type: IsarType.dateTime,
    ),
    r'invoiceNumber': PropertySchema(
      id: 15,
      name: r'invoiceNumber',
      type: IsarType.string,
    ),
    r'invoiceSeq': PropertySchema(
      id: 16,
      name: r'invoiceSeq',
      type: IsarType.long,
    ),
    r'invoiceType': PropertySchema(
      id: 17,
      name: r'invoiceType',
      type: IsarType.string,
    ),
    r'isGstInvoice': PropertySchema(
      id: 18,
      name: r'isGstInvoice',
      type: IsarType.bool,
    ),
    r'isReverseCharge': PropertySchema(
      id: 19,
      name: r'isReverseCharge',
      type: IsarType.bool,
    ),
    r'items': PropertySchema(
      id: 20,
      name: r'items',
      type: IsarType.objectList,
      target: r'InvoiceLineItem',
    ),
    r'paidAmount': PropertySchema(
      id: 21,
      name: r'paidAmount',
      type: IsarType.double,
    ),
    r'partyGstin': PropertySchema(
      id: 22,
      name: r'partyGstin',
      type: IsarType.string,
    ),
    r'partyId': PropertySchema(
      id: 23,
      name: r'partyId',
      type: IsarType.long,
    ),
    r'partyName': PropertySchema(
      id: 24,
      name: r'partyName',
      type: IsarType.string,
    ),
    r'partyPhone': PropertySchema(
      id: 25,
      name: r'partyPhone',
      type: IsarType.string,
    ),
    r'partyState': PropertySchema(
      id: 26,
      name: r'partyState',
      type: IsarType.string,
    ),
    r'paymentMode': PropertySchema(
      id: 27,
      name: r'paymentMode',
      type: IsarType.string,
    ),
    r'paymentStatus': PropertySchema(
      id: 28,
      name: r'paymentStatus',
      type: IsarType.string,
    ),
    r'placeOfDispatch': PropertySchema(
      id: 29,
      name: r'placeOfDispatch',
      type: IsarType.string,
    ),
    r'placeOfSupplyState': PropertySchema(
      id: 30,
      name: r'placeOfSupplyState',
      type: IsarType.string,
    ),
    r'portCode': PropertySchema(
      id: 31,
      name: r'portCode',
      type: IsarType.string,
    ),
    r'portName': PropertySchema(
      id: 32,
      name: r'portName',
      type: IsarType.string,
    ),
    r'rcmCollected': PropertySchema(
      id: 33,
      name: r'rcmCollected',
      type: IsarType.double,
    ),
    r'shippingBillDate': PropertySchema(
      id: 34,
      name: r'shippingBillDate',
      type: IsarType.dateTime,
    ),
    r'shippingBillNumber': PropertySchema(
      id: 35,
      name: r'shippingBillNumber',
      type: IsarType.string,
    ),
    r'stateOfDispatch': PropertySchema(
      id: 36,
      name: r'stateOfDispatch',
      type: IsarType.string,
    ),
    r'subSupplyType': PropertySchema(
      id: 37,
      name: r'subSupplyType',
      type: IsarType.string,
    ),
    r'subtotal': PropertySchema(
      id: 38,
      name: r'subtotal',
      type: IsarType.double,
    ),
    r'supplyType': PropertySchema(
      id: 39,
      name: r'supplyType',
      type: IsarType.string,
    ),
    r'taxMode': PropertySchema(
      id: 40,
      name: r'taxMode',
      type: IsarType.string,
    ),
    r'totalCgst': PropertySchema(
      id: 41,
      name: r'totalCgst',
      type: IsarType.double,
    ),
    r'totalGst': PropertySchema(
      id: 42,
      name: r'totalGst',
      type: IsarType.double,
    ),
    r'totalIgst': PropertySchema(
      id: 43,
      name: r'totalIgst',
      type: IsarType.double,
    ),
    r'totalSgst': PropertySchema(
      id: 44,
      name: r'totalSgst',
      type: IsarType.double,
    ),
    r'transporterId': PropertySchema(
      id: 45,
      name: r'transporterId',
      type: IsarType.string,
    ),
    r'transporterName': PropertySchema(
      id: 46,
      name: r'transporterName',
      type: IsarType.string,
    ),
    r'vehicleNumber': PropertySchema(
      id: 47,
      name: r'vehicleNumber',
      type: IsarType.string,
    )
  },
  estimateSize: _invoiceEstimateSize,
  serialize: _invoiceSerialize,
  deserialize: _invoiceDeserialize,
  deserializeProp: _invoiceDeserializeProp,
  idName: r'id',
  indexes: {
    r'invoiceNumber': IndexSchema(
      id: -6231821761165001198,
      name: r'invoiceNumber',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'invoiceNumber',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'invoiceSeq': IndexSchema(
      id: 4426921405115057824,
      name: r'invoiceSeq',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'invoiceSeq',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'InvoiceLineItem': InvoiceLineItemSchema},
  getId: _invoiceGetId,
  getLinks: _invoiceGetLinks,
  attach: _invoiceAttach,
  version: '3.1.0+1',
);

int _invoiceEstimateSize(
  Invoice object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.documentType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.eInvoiceIrn;
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
  bytesCount += 3 + object.invoiceNumber.length * 3;
  bytesCount += 3 + object.invoiceType.length * 3;
  bytesCount += 3 + object.items.length * 3;
  {
    final offsets = allOffsets[InvoiceLineItem]!;
    for (var i = 0; i < object.items.length; i++) {
      final value = object.items[i];
      bytesCount +=
          InvoiceLineItemSchema.estimateSize(value, offsets, allOffsets);
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
  bytesCount += 3 + object.paymentMode.length * 3;
  bytesCount += 3 + object.paymentStatus.length * 3;
  {
    final value = object.placeOfDispatch;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.placeOfSupplyState.length * 3;
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
  bytesCount += 3 + object.taxMode.length * 3;
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

void _invoiceSerialize(
  Invoice object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.discountAmount);
  writer.writeDouble(offsets[1], object.distance);
  writer.writeString(offsets[2], object.documentType);
  writer.writeDouble(offsets[3], object.dueAmount);
  writer.writeString(offsets[4], object.eInvoiceIrn);
  writer.writeDateTime(offsets[5], object.ewayBillDate);
  writer.writeString(offsets[6], object.ewayBillNumber);
  writer.writeDateTime(offsets[7], object.ewayBillValidUpto);
  writer.writeDouble(offsets[8], object.exchangeRate);
  writer.writeString(offsets[9], object.exportCountry);
  writer.writeString(offsets[10], object.exportType);
  writer.writeString(offsets[11], object.foreignCurrency);
  writer.writeDouble(offsets[12], object.foreignCurrencyAmount);
  writer.writeDouble(offsets[13], object.grandTotal);
  writer.writeDateTime(offsets[14], object.invoiceDate);
  writer.writeString(offsets[15], object.invoiceNumber);
  writer.writeLong(offsets[16], object.invoiceSeq);
  writer.writeString(offsets[17], object.invoiceType);
  writer.writeBool(offsets[18], object.isGstInvoice);
  writer.writeBool(offsets[19], object.isReverseCharge);
  writer.writeObjectList<InvoiceLineItem>(
    offsets[20],
    allOffsets,
    InvoiceLineItemSchema.serialize,
    object.items,
  );
  writer.writeDouble(offsets[21], object.paidAmount);
  writer.writeString(offsets[22], object.partyGstin);
  writer.writeLong(offsets[23], object.partyId);
  writer.writeString(offsets[24], object.partyName);
  writer.writeString(offsets[25], object.partyPhone);
  writer.writeString(offsets[26], object.partyState);
  writer.writeString(offsets[27], object.paymentMode);
  writer.writeString(offsets[28], object.paymentStatus);
  writer.writeString(offsets[29], object.placeOfDispatch);
  writer.writeString(offsets[30], object.placeOfSupplyState);
  writer.writeString(offsets[31], object.portCode);
  writer.writeString(offsets[32], object.portName);
  writer.writeDouble(offsets[33], object.rcmCollected);
  writer.writeDateTime(offsets[34], object.shippingBillDate);
  writer.writeString(offsets[35], object.shippingBillNumber);
  writer.writeString(offsets[36], object.stateOfDispatch);
  writer.writeString(offsets[37], object.subSupplyType);
  writer.writeDouble(offsets[38], object.subtotal);
  writer.writeString(offsets[39], object.supplyType);
  writer.writeString(offsets[40], object.taxMode);
  writer.writeDouble(offsets[41], object.totalCgst);
  writer.writeDouble(offsets[42], object.totalGst);
  writer.writeDouble(offsets[43], object.totalIgst);
  writer.writeDouble(offsets[44], object.totalSgst);
  writer.writeString(offsets[45], object.transporterId);
  writer.writeString(offsets[46], object.transporterName);
  writer.writeString(offsets[47], object.vehicleNumber);
}

Invoice _invoiceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Invoice();
  object.discountAmount = reader.readDouble(offsets[0]);
  object.distance = reader.readDoubleOrNull(offsets[1]);
  object.documentType = reader.readStringOrNull(offsets[2]);
  object.dueAmount = reader.readDouble(offsets[3]);
  object.eInvoiceIrn = reader.readStringOrNull(offsets[4]);
  object.ewayBillDate = reader.readDateTimeOrNull(offsets[5]);
  object.ewayBillNumber = reader.readStringOrNull(offsets[6]);
  object.ewayBillValidUpto = reader.readDateTimeOrNull(offsets[7]);
  object.exchangeRate = reader.readDoubleOrNull(offsets[8]);
  object.exportCountry = reader.readStringOrNull(offsets[9]);
  object.exportType = reader.readStringOrNull(offsets[10]);
  object.foreignCurrency = reader.readStringOrNull(offsets[11]);
  object.foreignCurrencyAmount = reader.readDoubleOrNull(offsets[12]);
  object.grandTotal = reader.readDouble(offsets[13]);
  object.id = id;
  object.invoiceDate = reader.readDateTime(offsets[14]);
  object.invoiceNumber = reader.readString(offsets[15]);
  object.invoiceSeq = reader.readLong(offsets[16]);
  object.invoiceType = reader.readString(offsets[17]);
  object.isGstInvoice = reader.readBool(offsets[18]);
  object.isReverseCharge = reader.readBool(offsets[19]);
  object.items = reader.readObjectList<InvoiceLineItem>(
        offsets[20],
        InvoiceLineItemSchema.deserialize,
        allOffsets,
        InvoiceLineItem(),
      ) ??
      [];
  object.paidAmount = reader.readDouble(offsets[21]);
  object.partyGstin = reader.readStringOrNull(offsets[22]);
  object.partyId = reader.readLongOrNull(offsets[23]);
  object.partyName = reader.readString(offsets[24]);
  object.partyPhone = reader.readStringOrNull(offsets[25]);
  object.partyState = reader.readStringOrNull(offsets[26]);
  object.paymentMode = reader.readString(offsets[27]);
  object.paymentStatus = reader.readString(offsets[28]);
  object.placeOfDispatch = reader.readStringOrNull(offsets[29]);
  object.placeOfSupplyState = reader.readString(offsets[30]);
  object.portCode = reader.readStringOrNull(offsets[31]);
  object.portName = reader.readStringOrNull(offsets[32]);
  object.rcmCollected = reader.readDouble(offsets[33]);
  object.shippingBillDate = reader.readDateTimeOrNull(offsets[34]);
  object.shippingBillNumber = reader.readStringOrNull(offsets[35]);
  object.stateOfDispatch = reader.readStringOrNull(offsets[36]);
  object.subSupplyType = reader.readStringOrNull(offsets[37]);
  object.subtotal = reader.readDouble(offsets[38]);
  object.supplyType = reader.readStringOrNull(offsets[39]);
  object.taxMode = reader.readString(offsets[40]);
  object.totalCgst = reader.readDouble(offsets[41]);
  object.totalGst = reader.readDouble(offsets[42]);
  object.totalIgst = reader.readDouble(offsets[43]);
  object.totalSgst = reader.readDouble(offsets[44]);
  object.transporterId = reader.readStringOrNull(offsets[45]);
  object.transporterName = reader.readStringOrNull(offsets[46]);
  object.vehicleNumber = reader.readStringOrNull(offsets[47]);
  return object;
}

P _invoiceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 8:
      return (reader.readDoubleOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readDoubleOrNull(offset)) as P;
    case 13:
      return (reader.readDouble(offset)) as P;
    case 14:
      return (reader.readDateTime(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readLong(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readBool(offset)) as P;
    case 19:
      return (reader.readBool(offset)) as P;
    case 20:
      return (reader.readObjectList<InvoiceLineItem>(
            offset,
            InvoiceLineItemSchema.deserialize,
            allOffsets,
            InvoiceLineItem(),
          ) ??
          []) as P;
    case 21:
      return (reader.readDouble(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readLongOrNull(offset)) as P;
    case 24:
      return (reader.readString(offset)) as P;
    case 25:
      return (reader.readStringOrNull(offset)) as P;
    case 26:
      return (reader.readStringOrNull(offset)) as P;
    case 27:
      return (reader.readString(offset)) as P;
    case 28:
      return (reader.readString(offset)) as P;
    case 29:
      return (reader.readStringOrNull(offset)) as P;
    case 30:
      return (reader.readString(offset)) as P;
    case 31:
      return (reader.readStringOrNull(offset)) as P;
    case 32:
      return (reader.readStringOrNull(offset)) as P;
    case 33:
      return (reader.readDouble(offset)) as P;
    case 34:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 35:
      return (reader.readStringOrNull(offset)) as P;
    case 36:
      return (reader.readStringOrNull(offset)) as P;
    case 37:
      return (reader.readStringOrNull(offset)) as P;
    case 38:
      return (reader.readDouble(offset)) as P;
    case 39:
      return (reader.readStringOrNull(offset)) as P;
    case 40:
      return (reader.readString(offset)) as P;
    case 41:
      return (reader.readDouble(offset)) as P;
    case 42:
      return (reader.readDouble(offset)) as P;
    case 43:
      return (reader.readDouble(offset)) as P;
    case 44:
      return (reader.readDouble(offset)) as P;
    case 45:
      return (reader.readStringOrNull(offset)) as P;
    case 46:
      return (reader.readStringOrNull(offset)) as P;
    case 47:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _invoiceGetId(Invoice object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _invoiceGetLinks(Invoice object) {
  return [];
}

void _invoiceAttach(IsarCollection<dynamic> col, Id id, Invoice object) {
  object.id = id;
}

extension InvoiceByIndex on IsarCollection<Invoice> {
  Future<Invoice?> getByInvoiceNumber(String invoiceNumber) {
    return getByIndex(r'invoiceNumber', [invoiceNumber]);
  }

  Invoice? getByInvoiceNumberSync(String invoiceNumber) {
    return getByIndexSync(r'invoiceNumber', [invoiceNumber]);
  }

  Future<bool> deleteByInvoiceNumber(String invoiceNumber) {
    return deleteByIndex(r'invoiceNumber', [invoiceNumber]);
  }

  bool deleteByInvoiceNumberSync(String invoiceNumber) {
    return deleteByIndexSync(r'invoiceNumber', [invoiceNumber]);
  }

  Future<List<Invoice?>> getAllByInvoiceNumber(
      List<String> invoiceNumberValues) {
    final values = invoiceNumberValues.map((e) => [e]).toList();
    return getAllByIndex(r'invoiceNumber', values);
  }

  List<Invoice?> getAllByInvoiceNumberSync(List<String> invoiceNumberValues) {
    final values = invoiceNumberValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'invoiceNumber', values);
  }

  Future<int> deleteAllByInvoiceNumber(List<String> invoiceNumberValues) {
    final values = invoiceNumberValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'invoiceNumber', values);
  }

  int deleteAllByInvoiceNumberSync(List<String> invoiceNumberValues) {
    final values = invoiceNumberValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'invoiceNumber', values);
  }

  Future<Id> putByInvoiceNumber(Invoice object) {
    return putByIndex(r'invoiceNumber', object);
  }

  Id putByInvoiceNumberSync(Invoice object, {bool saveLinks = true}) {
    return putByIndexSync(r'invoiceNumber', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByInvoiceNumber(List<Invoice> objects) {
    return putAllByIndex(r'invoiceNumber', objects);
  }

  List<Id> putAllByInvoiceNumberSync(List<Invoice> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'invoiceNumber', objects, saveLinks: saveLinks);
  }
}

extension InvoiceQueryWhereSort on QueryBuilder<Invoice, Invoice, QWhere> {
  QueryBuilder<Invoice, Invoice, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterWhere> anyInvoiceSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'invoiceSeq'),
      );
    });
  }
}

extension InvoiceQueryWhere on QueryBuilder<Invoice, Invoice, QWhereClause> {
  QueryBuilder<Invoice, Invoice, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Invoice, Invoice, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterWhereClause> idBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterWhereClause> invoiceNumberEqualTo(
      String invoiceNumber) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'invoiceNumber',
        value: [invoiceNumber],
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterWhereClause> invoiceNumberNotEqualTo(
      String invoiceNumber) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'invoiceNumber',
              lower: [],
              upper: [invoiceNumber],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'invoiceNumber',
              lower: [invoiceNumber],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'invoiceNumber',
              lower: [invoiceNumber],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'invoiceNumber',
              lower: [],
              upper: [invoiceNumber],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterWhereClause> invoiceSeqEqualTo(
      int invoiceSeq) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'invoiceSeq',
        value: [invoiceSeq],
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterWhereClause> invoiceSeqNotEqualTo(
      int invoiceSeq) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'invoiceSeq',
              lower: [],
              upper: [invoiceSeq],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'invoiceSeq',
              lower: [invoiceSeq],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'invoiceSeq',
              lower: [invoiceSeq],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'invoiceSeq',
              lower: [],
              upper: [invoiceSeq],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterWhereClause> invoiceSeqGreaterThan(
    int invoiceSeq, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'invoiceSeq',
        lower: [invoiceSeq],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterWhereClause> invoiceSeqLessThan(
    int invoiceSeq, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'invoiceSeq',
        lower: [],
        upper: [invoiceSeq],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterWhereClause> invoiceSeqBetween(
    int lowerInvoiceSeq,
    int upperInvoiceSeq, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'invoiceSeq',
        lower: [lowerInvoiceSeq],
        includeLower: includeLower,
        upper: [upperInvoiceSeq],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension InvoiceQueryFilter
    on QueryBuilder<Invoice, Invoice, QFilterCondition> {
  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> discountAmountEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> discountAmountLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> discountAmountBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> distanceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'distance',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> distanceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'distance',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> distanceEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> distanceGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> distanceLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> distanceBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> documentTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'documentType',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      documentTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'documentType',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> documentTypeEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> documentTypeGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> documentTypeLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> documentTypeBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> documentTypeStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> documentTypeEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> documentTypeContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> documentTypeMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> documentTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'documentType',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      documentTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'documentType',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> dueAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dueAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> dueAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dueAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> dueAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dueAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> dueAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dueAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> eInvoiceIrnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'eInvoiceIrn',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> eInvoiceIrnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'eInvoiceIrn',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> eInvoiceIrnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eInvoiceIrn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> eInvoiceIrnGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eInvoiceIrn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> eInvoiceIrnLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eInvoiceIrn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> eInvoiceIrnBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eInvoiceIrn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> eInvoiceIrnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eInvoiceIrn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> eInvoiceIrnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eInvoiceIrn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> eInvoiceIrnContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eInvoiceIrn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> eInvoiceIrnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eInvoiceIrn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> eInvoiceIrnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eInvoiceIrn',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      eInvoiceIrnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eInvoiceIrn',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> ewayBillDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ewayBillDate',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      ewayBillDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ewayBillDate',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> ewayBillDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ewayBillDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> ewayBillDateGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> ewayBillDateLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> ewayBillDateBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> ewayBillNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ewayBillNumber',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      ewayBillNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ewayBillNumber',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> ewayBillNumberEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> ewayBillNumberLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> ewayBillNumberBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> ewayBillNumberEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> ewayBillNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ewayBillNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> ewayBillNumberMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      ewayBillNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ewayBillNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      ewayBillNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ewayBillNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      ewayBillValidUptoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ewayBillValidUpto',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      ewayBillValidUptoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ewayBillValidUpto',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      ewayBillValidUptoEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ewayBillValidUpto',
        value: value,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exchangeRateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'exchangeRate',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      exchangeRateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'exchangeRate',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exchangeRateEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exchangeRateGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exchangeRateLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exchangeRateBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportCountryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'exportCountry',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      exportCountryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'exportCountry',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportCountryEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportCountryLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportCountryBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportCountryStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportCountryEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportCountryContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportCountryMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportCountryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'exportCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      exportCountryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'exportCountry',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'exportType',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'exportType',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportTypeEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportTypeGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportTypeLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportTypeBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportTypeStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportTypeEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportTypeContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportTypeMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'exportType',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> exportTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'exportType',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      foreignCurrencyIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'foreignCurrency',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      foreignCurrencyIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'foreignCurrency',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> foreignCurrencyEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> foreignCurrencyLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> foreignCurrencyBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> foreignCurrencyEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> foreignCurrencyContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'foreignCurrency',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> foreignCurrencyMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'foreignCurrency',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      foreignCurrencyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'foreignCurrency',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      foreignCurrencyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'foreignCurrency',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      foreignCurrencyAmountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'foreignCurrencyAmount',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      foreignCurrencyAmountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'foreignCurrencyAmount',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> grandTotalEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> grandTotalGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> grandTotalLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> grandTotalBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invoiceDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceDateGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceDateLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceDateBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      invoiceNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'invoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'invoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'invoiceNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'invoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'invoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'invoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'invoiceNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invoiceNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      invoiceNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'invoiceNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceSeqEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invoiceSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceSeqGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'invoiceSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceSeqLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'invoiceSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceSeqBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'invoiceSeq',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceTypeEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceTypeGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceTypeLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceTypeBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceTypeStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceTypeEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceTypeContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceTypeMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> invoiceTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invoiceType',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      invoiceTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'invoiceType',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> isGstInvoiceEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isGstInvoice',
        value: value,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> isReverseChargeEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isReverseCharge',
        value: value,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> itemsLengthEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> itemsIsEmpty() {
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> itemsIsNotEmpty() {
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> itemsLengthLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> itemsLengthGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> itemsLengthBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paidAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paidAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paidAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paidAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paidAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paidAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paidAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paidAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyGstinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyGstin',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyGstinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyGstin',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyGstinEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyGstinGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyGstinLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyGstinBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyGstinStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyGstinEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyGstinContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyGstinMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyGstinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyGstin',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyGstinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyGstin',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyId',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyId',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyId',
        value: value,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyIdGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyIdLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyIdBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyNameEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyNameGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyNameLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyNameBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyNameStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyNameEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyNameContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyNameMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyName',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyName',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyPhoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyPhone',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyPhoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyPhone',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyPhoneEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyPhoneGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyPhoneLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyPhoneBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyPhoneStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyPhoneEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyPhoneContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyPhoneMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyPhoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyPhone',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyPhoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyPhone',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyStateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyState',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyStateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyState',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyStateEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyStateGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyStateLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyStateBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyStateStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyStateEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyStateContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyStateMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyStateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyState',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> partyStateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyState',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentModeEqualTo(
    String value, {
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentModeGreaterThan(
    String value, {
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentModeLessThan(
    String value, {
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentModeBetween(
    String lower,
    String upper, {
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentModeStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentModeEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentModeContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentModeMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentModeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentMode',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      paymentModeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paymentMode',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentStatusEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentStatusLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentStatusBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentStatusStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentStatusEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentStatusContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentStatusMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> paymentStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      paymentStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paymentStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      placeOfDispatchIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'placeOfDispatch',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      placeOfDispatchIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'placeOfDispatch',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> placeOfDispatchEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> placeOfDispatchLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> placeOfDispatchBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> placeOfDispatchEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> placeOfDispatchContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'placeOfDispatch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> placeOfDispatchMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'placeOfDispatch',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      placeOfDispatchIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeOfDispatch',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      placeOfDispatchIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'placeOfDispatch',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      placeOfSupplyStateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeOfSupplyState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      placeOfSupplyStateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'placeOfSupplyState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      placeOfSupplyStateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'placeOfSupplyState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      placeOfSupplyStateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'placeOfSupplyState',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      placeOfSupplyStateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'placeOfSupplyState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      placeOfSupplyStateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'placeOfSupplyState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      placeOfSupplyStateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'placeOfSupplyState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      placeOfSupplyStateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'placeOfSupplyState',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      placeOfSupplyStateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeOfSupplyState',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      placeOfSupplyStateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'placeOfSupplyState',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'portCode',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'portCode',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portCodeEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portCodeGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portCodeLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portCodeBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portCodeStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portCodeEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portCodeContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portCodeMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'portCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'portCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'portName',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'portName',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portNameEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portNameGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portNameLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portNameBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portNameStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portNameEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portNameContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portNameMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'portName',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> portNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'portName',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> rcmCollectedEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rcmCollected',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> rcmCollectedGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rcmCollected',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> rcmCollectedLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rcmCollected',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> rcmCollectedBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rcmCollected',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      shippingBillDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shippingBillDate',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      shippingBillDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shippingBillDate',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> shippingBillDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shippingBillDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> shippingBillDateBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      shippingBillNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shippingBillNumber',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      shippingBillNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shippingBillNumber',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      shippingBillNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shippingBillNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      shippingBillNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shippingBillNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      shippingBillNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shippingBillNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      shippingBillNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shippingBillNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      stateOfDispatchIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stateOfDispatch',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      stateOfDispatchIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stateOfDispatch',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> stateOfDispatchEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> stateOfDispatchLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> stateOfDispatchBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> stateOfDispatchEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> stateOfDispatchContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stateOfDispatch',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> stateOfDispatchMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stateOfDispatch',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      stateOfDispatchIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stateOfDispatch',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      stateOfDispatchIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stateOfDispatch',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> subSupplyTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subSupplyType',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      subSupplyTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subSupplyType',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> subSupplyTypeEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> subSupplyTypeLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> subSupplyTypeBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> subSupplyTypeStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> subSupplyTypeEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> subSupplyTypeContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> subSupplyTypeMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> subSupplyTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subSupplyType',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      subSupplyTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subSupplyType',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> subtotalEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> subtotalGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> subtotalLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> subtotalBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> supplyTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'supplyType',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> supplyTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'supplyType',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> supplyTypeEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> supplyTypeGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> supplyTypeLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> supplyTypeBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> supplyTypeStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> supplyTypeEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> supplyTypeContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> supplyTypeMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> supplyTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supplyType',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> supplyTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'supplyType',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> taxModeEqualTo(
    String value, {
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> taxModeGreaterThan(
    String value, {
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> taxModeLessThan(
    String value, {
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> taxModeBetween(
    String lower,
    String upper, {
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> taxModeStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> taxModeEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> taxModeContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> taxModeMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> taxModeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxMode',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> taxModeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taxMode',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> totalCgstEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> totalCgstGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> totalCgstLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> totalCgstBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> totalGstEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> totalGstGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> totalGstLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> totalGstBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> totalIgstEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> totalIgstGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> totalIgstLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> totalIgstBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> totalSgstEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> totalSgstGreaterThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> totalSgstLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> totalSgstBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> transporterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transporterId',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      transporterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transporterId',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> transporterIdEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> transporterIdLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> transporterIdBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> transporterIdStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> transporterIdEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> transporterIdContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> transporterIdMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> transporterIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transporterId',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      transporterIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transporterId',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      transporterNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transporterName',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      transporterNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transporterName',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> transporterNameEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> transporterNameLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> transporterNameBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> transporterNameEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> transporterNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transporterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> transporterNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transporterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      transporterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transporterName',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      transporterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transporterName',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> vehicleNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vehicleNumber',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      vehicleNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vehicleNumber',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> vehicleNumberEqualTo(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> vehicleNumberLessThan(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> vehicleNumberBetween(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> vehicleNumberStartsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> vehicleNumberEndsWith(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> vehicleNumberContains(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> vehicleNumberMatches(
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> vehicleNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vehicleNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition>
      vehicleNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'vehicleNumber',
        value: '',
      ));
    });
  }
}

extension InvoiceQueryObject
    on QueryBuilder<Invoice, Invoice, QFilterCondition> {
  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> itemsElement(
      FilterQuery<InvoiceLineItem> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'items');
    });
  }
}

extension InvoiceQueryLinks
    on QueryBuilder<Invoice, Invoice, QFilterCondition> {}

extension InvoiceQuerySortBy on QueryBuilder<Invoice, Invoice, QSortBy> {
  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByDiscountAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountAmount', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByDiscountAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountAmount', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByDocumentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentType', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByDocumentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentType', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByDueAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueAmount', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByDueAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueAmount', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByEInvoiceIrn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eInvoiceIrn', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByEInvoiceIrnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eInvoiceIrn', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByEwayBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillDate', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByEwayBillDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillDate', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByEwayBillNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillNumber', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByEwayBillNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillNumber', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByEwayBillValidUpto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillValidUpto', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByEwayBillValidUptoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillValidUpto', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByExchangeRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exchangeRate', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByExchangeRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exchangeRate', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByExportCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exportCountry', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByExportCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exportCountry', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByExportType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exportType', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByExportTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exportType', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByForeignCurrency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foreignCurrency', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByForeignCurrencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foreignCurrency', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByForeignCurrencyAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foreignCurrencyAmount', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy>
      sortByForeignCurrencyAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foreignCurrencyAmount', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByGrandTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grandTotal', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByGrandTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grandTotal', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByInvoiceDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceDate', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByInvoiceDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceDate', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByInvoiceNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceNumber', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByInvoiceNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceNumber', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByInvoiceSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceSeq', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByInvoiceSeqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceSeq', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByInvoiceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceType', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByInvoiceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceType', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByIsGstInvoice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGstInvoice', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByIsGstInvoiceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGstInvoice', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByIsReverseCharge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isReverseCharge', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByIsReverseChargeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isReverseCharge', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPaidAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paidAmount', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPaidAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paidAmount', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPartyGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPartyGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPartyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPartyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPartyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPartyPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyPhone', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPartyPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyPhone', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPartyState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyState', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPartyStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyState', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPaymentMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentMode', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPaymentModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentMode', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPaymentStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentStatus', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPaymentStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentStatus', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPlaceOfDispatch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfDispatch', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPlaceOfDispatchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfDispatch', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPlaceOfSupplyState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfSupplyState', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPlaceOfSupplyStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfSupplyState', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPortCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'portCode', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPortCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'portCode', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPortName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'portName', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByPortNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'portName', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByRcmCollected() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rcmCollected', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByRcmCollectedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rcmCollected', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByShippingBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shippingBillDate', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByShippingBillDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shippingBillDate', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByShippingBillNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shippingBillNumber', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByShippingBillNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shippingBillNumber', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByStateOfDispatch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stateOfDispatch', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByStateOfDispatchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stateOfDispatch', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortBySubSupplyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subSupplyType', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortBySubSupplyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subSupplyType', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortBySubtotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortBySupplyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supplyType', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortBySupplyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supplyType', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByTaxMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxMode', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByTaxModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxMode', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByTotalCgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCgst', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByTotalCgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCgst', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByTotalGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGst', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByTotalGstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGst', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByTotalIgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalIgst', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByTotalIgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalIgst', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByTotalSgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSgst', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByTotalSgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSgst', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByTransporterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterId', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByTransporterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterId', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByTransporterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterName', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByTransporterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterName', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByVehicleNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleNumber', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> sortByVehicleNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleNumber', Sort.desc);
    });
  }
}

extension InvoiceQuerySortThenBy
    on QueryBuilder<Invoice, Invoice, QSortThenBy> {
  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByDiscountAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountAmount', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByDiscountAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discountAmount', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByDocumentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentType', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByDocumentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentType', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByDueAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueAmount', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByDueAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dueAmount', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByEInvoiceIrn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eInvoiceIrn', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByEInvoiceIrnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eInvoiceIrn', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByEwayBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillDate', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByEwayBillDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillDate', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByEwayBillNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillNumber', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByEwayBillNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillNumber', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByEwayBillValidUpto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillValidUpto', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByEwayBillValidUptoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillValidUpto', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByExchangeRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exchangeRate', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByExchangeRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exchangeRate', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByExportCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exportCountry', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByExportCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exportCountry', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByExportType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exportType', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByExportTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'exportType', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByForeignCurrency() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foreignCurrency', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByForeignCurrencyDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foreignCurrency', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByForeignCurrencyAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foreignCurrencyAmount', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy>
      thenByForeignCurrencyAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'foreignCurrencyAmount', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByGrandTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grandTotal', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByGrandTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'grandTotal', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByInvoiceDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceDate', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByInvoiceDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceDate', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByInvoiceNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceNumber', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByInvoiceNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceNumber', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByInvoiceSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceSeq', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByInvoiceSeqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceSeq', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByInvoiceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceType', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByInvoiceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceType', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByIsGstInvoice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGstInvoice', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByIsGstInvoiceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGstInvoice', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByIsReverseCharge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isReverseCharge', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByIsReverseChargeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isReverseCharge', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPaidAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paidAmount', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPaidAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paidAmount', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPartyGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPartyGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPartyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPartyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPartyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPartyPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyPhone', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPartyPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyPhone', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPartyState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyState', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPartyStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyState', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPaymentMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentMode', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPaymentModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentMode', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPaymentStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentStatus', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPaymentStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentStatus', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPlaceOfDispatch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfDispatch', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPlaceOfDispatchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfDispatch', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPlaceOfSupplyState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfSupplyState', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPlaceOfSupplyStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfSupplyState', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPortCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'portCode', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPortCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'portCode', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPortName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'portName', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByPortNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'portName', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByRcmCollected() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rcmCollected', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByRcmCollectedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'rcmCollected', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByShippingBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shippingBillDate', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByShippingBillDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shippingBillDate', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByShippingBillNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shippingBillNumber', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByShippingBillNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shippingBillNumber', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByStateOfDispatch() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stateOfDispatch', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByStateOfDispatchDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stateOfDispatch', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenBySubSupplyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subSupplyType', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenBySubSupplyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subSupplyType', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenBySubtotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenBySupplyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supplyType', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenBySupplyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supplyType', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByTaxMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxMode', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByTaxModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxMode', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByTotalCgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCgst', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByTotalCgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCgst', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByTotalGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGst', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByTotalGstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGst', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByTotalIgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalIgst', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByTotalIgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalIgst', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByTotalSgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSgst', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByTotalSgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSgst', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByTransporterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterId', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByTransporterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterId', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByTransporterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterName', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByTransporterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterName', Sort.desc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByVehicleNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleNumber', Sort.asc);
    });
  }

  QueryBuilder<Invoice, Invoice, QAfterSortBy> thenByVehicleNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleNumber', Sort.desc);
    });
  }
}

extension InvoiceQueryWhereDistinct
    on QueryBuilder<Invoice, Invoice, QDistinct> {
  QueryBuilder<Invoice, Invoice, QDistinct> distinctByDiscountAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discountAmount');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'distance');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByDocumentType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'documentType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByDueAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dueAmount');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByEInvoiceIrn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eInvoiceIrn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByEwayBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ewayBillDate');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByEwayBillNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ewayBillNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByEwayBillValidUpto() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ewayBillValidUpto');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByExchangeRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'exchangeRate');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByExportCountry(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'exportCountry',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByExportType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'exportType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByForeignCurrency(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'foreignCurrency',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByForeignCurrencyAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'foreignCurrencyAmount');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByGrandTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'grandTotal');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByInvoiceDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invoiceDate');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByInvoiceNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invoiceNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByInvoiceSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invoiceSeq');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByInvoiceType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invoiceType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByIsGstInvoice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isGstInvoice');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByIsReverseCharge() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isReverseCharge');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByPaidAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paidAmount');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByPartyGstin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyGstin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyId');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByPartyName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByPartyPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyPhone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByPartyState(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyState', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByPaymentMode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentMode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByPaymentStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentStatus',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByPlaceOfDispatch(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'placeOfDispatch',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByPlaceOfSupplyState(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'placeOfSupplyState',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByPortCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'portCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByPortName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'portName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByRcmCollected() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rcmCollected');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByShippingBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shippingBillDate');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByShippingBillNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shippingBillNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByStateOfDispatch(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stateOfDispatch',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctBySubSupplyType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subSupplyType',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtotal');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctBySupplyType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'supplyType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByTaxMode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxMode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByTotalCgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalCgst');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByTotalGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalGst');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByTotalIgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalIgst');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByTotalSgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalSgst');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByTransporterId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transporterId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByTransporterName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transporterName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByVehicleNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vehicleNumber',
          caseSensitive: caseSensitive);
    });
  }
}

extension InvoiceQueryProperty
    on QueryBuilder<Invoice, Invoice, QQueryProperty> {
  QueryBuilder<Invoice, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Invoice, double, QQueryOperations> discountAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discountAmount');
    });
  }

  QueryBuilder<Invoice, double?, QQueryOperations> distanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'distance');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> documentTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'documentType');
    });
  }

  QueryBuilder<Invoice, double, QQueryOperations> dueAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dueAmount');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> eInvoiceIrnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eInvoiceIrn');
    });
  }

  QueryBuilder<Invoice, DateTime?, QQueryOperations> ewayBillDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ewayBillDate');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> ewayBillNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ewayBillNumber');
    });
  }

  QueryBuilder<Invoice, DateTime?, QQueryOperations>
      ewayBillValidUptoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ewayBillValidUpto');
    });
  }

  QueryBuilder<Invoice, double?, QQueryOperations> exchangeRateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'exchangeRate');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> exportCountryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'exportCountry');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> exportTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'exportType');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> foreignCurrencyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'foreignCurrency');
    });
  }

  QueryBuilder<Invoice, double?, QQueryOperations>
      foreignCurrencyAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'foreignCurrencyAmount');
    });
  }

  QueryBuilder<Invoice, double, QQueryOperations> grandTotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'grandTotal');
    });
  }

  QueryBuilder<Invoice, DateTime, QQueryOperations> invoiceDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invoiceDate');
    });
  }

  QueryBuilder<Invoice, String, QQueryOperations> invoiceNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invoiceNumber');
    });
  }

  QueryBuilder<Invoice, int, QQueryOperations> invoiceSeqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invoiceSeq');
    });
  }

  QueryBuilder<Invoice, String, QQueryOperations> invoiceTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invoiceType');
    });
  }

  QueryBuilder<Invoice, bool, QQueryOperations> isGstInvoiceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isGstInvoice');
    });
  }

  QueryBuilder<Invoice, bool, QQueryOperations> isReverseChargeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isReverseCharge');
    });
  }

  QueryBuilder<Invoice, List<InvoiceLineItem>, QQueryOperations>
      itemsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'items');
    });
  }

  QueryBuilder<Invoice, double, QQueryOperations> paidAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paidAmount');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> partyGstinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyGstin');
    });
  }

  QueryBuilder<Invoice, int?, QQueryOperations> partyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyId');
    });
  }

  QueryBuilder<Invoice, String, QQueryOperations> partyNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyName');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> partyPhoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyPhone');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> partyStateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyState');
    });
  }

  QueryBuilder<Invoice, String, QQueryOperations> paymentModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentMode');
    });
  }

  QueryBuilder<Invoice, String, QQueryOperations> paymentStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentStatus');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> placeOfDispatchProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'placeOfDispatch');
    });
  }

  QueryBuilder<Invoice, String, QQueryOperations> placeOfSupplyStateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'placeOfSupplyState');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> portCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'portCode');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> portNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'portName');
    });
  }

  QueryBuilder<Invoice, double, QQueryOperations> rcmCollectedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rcmCollected');
    });
  }

  QueryBuilder<Invoice, DateTime?, QQueryOperations>
      shippingBillDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shippingBillDate');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations>
      shippingBillNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shippingBillNumber');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> stateOfDispatchProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stateOfDispatch');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> subSupplyTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subSupplyType');
    });
  }

  QueryBuilder<Invoice, double, QQueryOperations> subtotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtotal');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> supplyTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'supplyType');
    });
  }

  QueryBuilder<Invoice, String, QQueryOperations> taxModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxMode');
    });
  }

  QueryBuilder<Invoice, double, QQueryOperations> totalCgstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalCgst');
    });
  }

  QueryBuilder<Invoice, double, QQueryOperations> totalGstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalGst');
    });
  }

  QueryBuilder<Invoice, double, QQueryOperations> totalIgstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalIgst');
    });
  }

  QueryBuilder<Invoice, double, QQueryOperations> totalSgstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalSgst');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> transporterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transporterId');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> transporterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transporterName');
    });
  }

  QueryBuilder<Invoice, String?, QQueryOperations> vehicleNumberProperty() {
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

const InvoiceLineItemSchema = Schema(
  name: r'InvoiceLineItem',
  id: 6295249830280660741,
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
    r'gstAmount': PropertySchema(
      id: 3,
      name: r'gstAmount',
      type: IsarType.double,
    ),
    r'gstRate': PropertySchema(
      id: 4,
      name: r'gstRate',
      type: IsarType.double,
    ),
    r'hsnCode': PropertySchema(
      id: 5,
      name: r'hsnCode',
      type: IsarType.string,
    ),
    r'igstAmount': PropertySchema(
      id: 6,
      name: r'igstAmount',
      type: IsarType.double,
    ),
    r'itemId': PropertySchema(
      id: 7,
      name: r'itemId',
      type: IsarType.long,
    ),
    r'itemName': PropertySchema(
      id: 8,
      name: r'itemName',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 9,
      name: r'quantity',
      type: IsarType.double,
    ),
    r'sgstAmount': PropertySchema(
      id: 10,
      name: r'sgstAmount',
      type: IsarType.double,
    ),
    r'taxableAmount': PropertySchema(
      id: 11,
      name: r'taxableAmount',
      type: IsarType.double,
    ),
    r'totalPrice': PropertySchema(
      id: 12,
      name: r'totalPrice',
      type: IsarType.double,
    ),
    r'unitPrice': PropertySchema(
      id: 13,
      name: r'unitPrice',
      type: IsarType.double,
    )
  },
  estimateSize: _invoiceLineItemEstimateSize,
  serialize: _invoiceLineItemSerialize,
  deserialize: _invoiceLineItemDeserialize,
  deserializeProp: _invoiceLineItemDeserializeProp,
);

int _invoiceLineItemEstimateSize(
  InvoiceLineItem object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
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
  return bytesCount;
}

void _invoiceLineItemSerialize(
  InvoiceLineItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.cessAmount);
  writer.writeDouble(offsets[1], object.cessRate);
  writer.writeDouble(offsets[2], object.cgstAmount);
  writer.writeDouble(offsets[3], object.gstAmount);
  writer.writeDouble(offsets[4], object.gstRate);
  writer.writeString(offsets[5], object.hsnCode);
  writer.writeDouble(offsets[6], object.igstAmount);
  writer.writeLong(offsets[7], object.itemId);
  writer.writeString(offsets[8], object.itemName);
  writer.writeDouble(offsets[9], object.quantity);
  writer.writeDouble(offsets[10], object.sgstAmount);
  writer.writeDouble(offsets[11], object.taxableAmount);
  writer.writeDouble(offsets[12], object.totalPrice);
  writer.writeDouble(offsets[13], object.unitPrice);
}

InvoiceLineItem _invoiceLineItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = InvoiceLineItem();
  object.cessAmount = reader.readDouble(offsets[0]);
  object.cessRate = reader.readDouble(offsets[1]);
  object.cgstAmount = reader.readDouble(offsets[2]);
  object.gstAmount = reader.readDouble(offsets[3]);
  object.gstRate = reader.readDouble(offsets[4]);
  object.hsnCode = reader.readStringOrNull(offsets[5]);
  object.igstAmount = reader.readDouble(offsets[6]);
  object.itemId = reader.readLongOrNull(offsets[7]);
  object.itemName = reader.readStringOrNull(offsets[8]);
  object.quantity = reader.readDouble(offsets[9]);
  object.sgstAmount = reader.readDouble(offsets[10]);
  object.taxableAmount = reader.readDouble(offsets[11]);
  object.totalPrice = reader.readDouble(offsets[12]);
  object.unitPrice = reader.readDouble(offsets[13]);
  return object;
}

P _invoiceLineItemDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
      return (reader.readDouble(offset)) as P;
    case 12:
      return (reader.readDouble(offset)) as P;
    case 13:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension InvoiceLineItemQueryFilter
    on QueryBuilder<InvoiceLineItem, InvoiceLineItem, QFilterCondition> {
  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      gstAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      gstAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      gstAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gstAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      gstAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gstAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      hsnCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hsnCode',
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      hsnCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hsnCode',
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      hsnCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hsnCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      hsnCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hsnCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      hsnCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hsnCode',
        value: '',
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      hsnCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hsnCode',
        value: '',
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      itemIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      itemIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      itemIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemId',
        value: value,
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      itemNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemName',
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      itemNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemName',
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      itemNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      itemNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      itemNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemName',
        value: '',
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
      itemNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemName',
        value: '',
      ));
    });
  }

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

  QueryBuilder<InvoiceLineItem, InvoiceLineItem, QAfterFilterCondition>
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

extension InvoiceLineItemQueryObject
    on QueryBuilder<InvoiceLineItem, InvoiceLineItem, QFilterCondition> {}
