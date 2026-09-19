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
    r'dueAmount': PropertySchema(
      id: 1,
      name: r'dueAmount',
      type: IsarType.double,
    ),
    r'grandTotal': PropertySchema(
      id: 2,
      name: r'grandTotal',
      type: IsarType.double,
    ),
    r'invoiceDate': PropertySchema(
      id: 3,
      name: r'invoiceDate',
      type: IsarType.dateTime,
    ),
    r'invoiceNumber': PropertySchema(
      id: 4,
      name: r'invoiceNumber',
      type: IsarType.string,
    ),
    r'invoiceSeq': PropertySchema(
      id: 5,
      name: r'invoiceSeq',
      type: IsarType.long,
    ),
    r'isGstInvoice': PropertySchema(
      id: 6,
      name: r'isGstInvoice',
      type: IsarType.bool,
    ),
    r'items': PropertySchema(
      id: 7,
      name: r'items',
      type: IsarType.objectList,
      target: r'InvoiceLineItem',
    ),
    r'paidAmount': PropertySchema(
      id: 8,
      name: r'paidAmount',
      type: IsarType.double,
    ),
    r'partyGstin': PropertySchema(
      id: 9,
      name: r'partyGstin',
      type: IsarType.string,
    ),
    r'partyId': PropertySchema(
      id: 10,
      name: r'partyId',
      type: IsarType.long,
    ),
    r'partyName': PropertySchema(
      id: 11,
      name: r'partyName',
      type: IsarType.string,
    ),
    r'partyPhone': PropertySchema(
      id: 12,
      name: r'partyPhone',
      type: IsarType.string,
    ),
    r'partyState': PropertySchema(
      id: 13,
      name: r'partyState',
      type: IsarType.string,
    ),
    r'paymentMode': PropertySchema(
      id: 14,
      name: r'paymentMode',
      type: IsarType.string,
    ),
    r'paymentStatus': PropertySchema(
      id: 15,
      name: r'paymentStatus',
      type: IsarType.string,
    ),
    r'placeOfSupplyState': PropertySchema(
      id: 16,
      name: r'placeOfSupplyState',
      type: IsarType.string,
    ),
    r'subtotal': PropertySchema(
      id: 17,
      name: r'subtotal',
      type: IsarType.double,
    ),
    r'taxMode': PropertySchema(
      id: 18,
      name: r'taxMode',
      type: IsarType.string,
    ),
    r'totalCgst': PropertySchema(
      id: 19,
      name: r'totalCgst',
      type: IsarType.double,
    ),
    r'totalGst': PropertySchema(
      id: 20,
      name: r'totalGst',
      type: IsarType.double,
    ),
    r'totalIgst': PropertySchema(
      id: 21,
      name: r'totalIgst',
      type: IsarType.double,
    ),
    r'totalSgst': PropertySchema(
      id: 22,
      name: r'totalSgst',
      type: IsarType.double,
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
  bytesCount += 3 + object.invoiceNumber.length * 3;
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
  bytesCount += 3 + object.placeOfSupplyState.length * 3;
  bytesCount += 3 + object.taxMode.length * 3;
  return bytesCount;
}

void _invoiceSerialize(
  Invoice object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.discountAmount);
  writer.writeDouble(offsets[1], object.dueAmount);
  writer.writeDouble(offsets[2], object.grandTotal);
  writer.writeDateTime(offsets[3], object.invoiceDate);
  writer.writeString(offsets[4], object.invoiceNumber);
  writer.writeLong(offsets[5], object.invoiceSeq);
  writer.writeBool(offsets[6], object.isGstInvoice);
  writer.writeObjectList<InvoiceLineItem>(
    offsets[7],
    allOffsets,
    InvoiceLineItemSchema.serialize,
    object.items,
  );
  writer.writeDouble(offsets[8], object.paidAmount);
  writer.writeString(offsets[9], object.partyGstin);
  writer.writeLong(offsets[10], object.partyId);
  writer.writeString(offsets[11], object.partyName);
  writer.writeString(offsets[12], object.partyPhone);
  writer.writeString(offsets[13], object.partyState);
  writer.writeString(offsets[14], object.paymentMode);
  writer.writeString(offsets[15], object.paymentStatus);
  writer.writeString(offsets[16], object.placeOfSupplyState);
  writer.writeDouble(offsets[17], object.subtotal);
  writer.writeString(offsets[18], object.taxMode);
  writer.writeDouble(offsets[19], object.totalCgst);
  writer.writeDouble(offsets[20], object.totalGst);
  writer.writeDouble(offsets[21], object.totalIgst);
  writer.writeDouble(offsets[22], object.totalSgst);
}

Invoice _invoiceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Invoice();
  object.discountAmount = reader.readDouble(offsets[0]);
  object.dueAmount = reader.readDouble(offsets[1]);
  object.grandTotal = reader.readDouble(offsets[2]);
  object.id = id;
  object.invoiceDate = reader.readDateTime(offsets[3]);
  object.invoiceNumber = reader.readString(offsets[4]);
  object.invoiceSeq = reader.readLong(offsets[5]);
  object.isGstInvoice = reader.readBool(offsets[6]);
  object.items = reader.readObjectList<InvoiceLineItem>(
        offsets[7],
        InvoiceLineItemSchema.deserialize,
        allOffsets,
        InvoiceLineItem(),
      ) ??
      [];
  object.paidAmount = reader.readDouble(offsets[8]);
  object.partyGstin = reader.readStringOrNull(offsets[9]);
  object.partyId = reader.readLongOrNull(offsets[10]);
  object.partyName = reader.readString(offsets[11]);
  object.partyPhone = reader.readStringOrNull(offsets[12]);
  object.partyState = reader.readStringOrNull(offsets[13]);
  object.paymentMode = reader.readString(offsets[14]);
  object.paymentStatus = reader.readString(offsets[15]);
  object.placeOfSupplyState = reader.readString(offsets[16]);
  object.subtotal = reader.readDouble(offsets[17]);
  object.taxMode = reader.readString(offsets[18]);
  object.totalCgst = reader.readDouble(offsets[19]);
  object.totalGst = reader.readDouble(offsets[20]);
  object.totalIgst = reader.readDouble(offsets[21]);
  object.totalSgst = reader.readDouble(offsets[22]);
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
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readObjectList<InvoiceLineItem>(
            offset,
            InvoiceLineItemSchema.deserialize,
            allOffsets,
            InvoiceLineItem(),
          ) ??
          []) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
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
      return (reader.readDouble(offset)) as P;
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

  QueryBuilder<Invoice, Invoice, QAfterFilterCondition> isGstInvoiceEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isGstInvoice',
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
}

extension InvoiceQueryWhereDistinct
    on QueryBuilder<Invoice, Invoice, QDistinct> {
  QueryBuilder<Invoice, Invoice, QDistinct> distinctByDiscountAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discountAmount');
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByDueAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dueAmount');
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

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByIsGstInvoice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isGstInvoice');
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

  QueryBuilder<Invoice, Invoice, QDistinct> distinctByPlaceOfSupplyState(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'placeOfSupplyState',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Invoice, Invoice, QDistinct> distinctBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtotal');
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

  QueryBuilder<Invoice, double, QQueryOperations> dueAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dueAmount');
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

  QueryBuilder<Invoice, bool, QQueryOperations> isGstInvoiceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isGstInvoice');
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

  QueryBuilder<Invoice, String, QQueryOperations> placeOfSupplyStateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'placeOfSupplyState');
    });
  }

  QueryBuilder<Invoice, double, QQueryOperations> subtotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtotal');
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
    r'cgstAmount': PropertySchema(
      id: 0,
      name: r'cgstAmount',
      type: IsarType.double,
    ),
    r'gstAmount': PropertySchema(
      id: 1,
      name: r'gstAmount',
      type: IsarType.double,
    ),
    r'gstRate': PropertySchema(
      id: 2,
      name: r'gstRate',
      type: IsarType.double,
    ),
    r'hsnCode': PropertySchema(
      id: 3,
      name: r'hsnCode',
      type: IsarType.string,
    ),
    r'igstAmount': PropertySchema(
      id: 4,
      name: r'igstAmount',
      type: IsarType.double,
    ),
    r'itemId': PropertySchema(
      id: 5,
      name: r'itemId',
      type: IsarType.long,
    ),
    r'itemName': PropertySchema(
      id: 6,
      name: r'itemName',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 7,
      name: r'quantity',
      type: IsarType.double,
    ),
    r'sgstAmount': PropertySchema(
      id: 8,
      name: r'sgstAmount',
      type: IsarType.double,
    ),
    r'totalPrice': PropertySchema(
      id: 9,
      name: r'totalPrice',
      type: IsarType.double,
    ),
    r'unitPrice': PropertySchema(
      id: 10,
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
  writer.writeDouble(offsets[0], object.cgstAmount);
  writer.writeDouble(offsets[1], object.gstAmount);
  writer.writeDouble(offsets[2], object.gstRate);
  writer.writeString(offsets[3], object.hsnCode);
  writer.writeDouble(offsets[4], object.igstAmount);
  writer.writeLong(offsets[5], object.itemId);
  writer.writeString(offsets[6], object.itemName);
  writer.writeDouble(offsets[7], object.quantity);
  writer.writeDouble(offsets[8], object.sgstAmount);
  writer.writeDouble(offsets[9], object.totalPrice);
  writer.writeDouble(offsets[10], object.unitPrice);
}

InvoiceLineItem _invoiceLineItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = InvoiceLineItem();
  object.cgstAmount = reader.readDouble(offsets[0]);
  object.gstAmount = reader.readDouble(offsets[1]);
  object.gstRate = reader.readDouble(offsets[2]);
  object.hsnCode = reader.readStringOrNull(offsets[3]);
  object.igstAmount = reader.readDouble(offsets[4]);
  object.itemId = reader.readLongOrNull(offsets[5]);
  object.itemName = reader.readStringOrNull(offsets[6]);
  object.quantity = reader.readDouble(offsets[7]);
  object.sgstAmount = reader.readDouble(offsets[8]);
  object.totalPrice = reader.readDouble(offsets[9]);
  object.unitPrice = reader.readDouble(offsets[10]);
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
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension InvoiceLineItemQueryFilter
    on QueryBuilder<InvoiceLineItem, InvoiceLineItem, QFilterCondition> {
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
