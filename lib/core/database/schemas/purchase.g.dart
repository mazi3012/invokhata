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
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'items': PropertySchema(
      id: 3,
      name: r'items',
      type: IsarType.objectList,
      target: r'PurchaseLineItem',
    ),
    r'partyId': PropertySchema(
      id: 4,
      name: r'partyId',
      type: IsarType.long,
    ),
    r'partyName': PropertySchema(
      id: 5,
      name: r'partyName',
      type: IsarType.string,
    ),
    r'partyPhone': PropertySchema(
      id: 6,
      name: r'partyPhone',
      type: IsarType.string,
    ),
    r'paymentStatus': PropertySchema(
      id: 7,
      name: r'paymentStatus',
      type: IsarType.string,
    ),
    r'purchaseDate': PropertySchema(
      id: 8,
      name: r'purchaseDate',
      type: IsarType.dateTime,
    ),
    r'subtotal': PropertySchema(
      id: 9,
      name: r'subtotal',
      type: IsarType.double,
    ),
    r'totalAmount': PropertySchema(
      id: 10,
      name: r'totalAmount',
      type: IsarType.double,
    ),
    r'totalCgst': PropertySchema(
      id: 11,
      name: r'totalCgst',
      type: IsarType.double,
    ),
    r'totalDiscount': PropertySchema(
      id: 12,
      name: r'totalDiscount',
      type: IsarType.double,
    ),
    r'totalGst': PropertySchema(
      id: 13,
      name: r'totalGst',
      type: IsarType.double,
    ),
    r'totalIgst': PropertySchema(
      id: 14,
      name: r'totalIgst',
      type: IsarType.double,
    ),
    r'totalSgst': PropertySchema(
      id: 15,
      name: r'totalSgst',
      type: IsarType.double,
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
          caseSensitive: true,
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
  bytesCount += 3 + object.items.length * 3;
  {
    final offsets = allOffsets[PurchaseLineItem]!;
    for (var i = 0; i < object.items.length; i++) {
      final value = object.items[i];
      bytesCount +=
          PurchaseLineItemSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.partyName.length * 3;
  {
    final value = object.partyPhone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.paymentStatus.length * 3;
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
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeObjectList<PurchaseLineItem>(
    offsets[3],
    allOffsets,
    PurchaseLineItemSchema.serialize,
    object.items,
  );
  writer.writeLong(offsets[4], object.partyId);
  writer.writeString(offsets[5], object.partyName);
  writer.writeString(offsets[6], object.partyPhone);
  writer.writeString(offsets[7], object.paymentStatus);
  writer.writeDateTime(offsets[8], object.purchaseDate);
  writer.writeDouble(offsets[9], object.subtotal);
  writer.writeDouble(offsets[10], object.totalAmount);
  writer.writeDouble(offsets[11], object.totalCgst);
  writer.writeDouble(offsets[12], object.totalDiscount);
  writer.writeDouble(offsets[13], object.totalGst);
  writer.writeDouble(offsets[14], object.totalIgst);
  writer.writeDouble(offsets[15], object.totalSgst);
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
  object.createdAt = reader.readDateTime(offsets[2]);
  object.id = id;
  object.items = reader.readObjectList<PurchaseLineItem>(
        offsets[3],
        PurchaseLineItemSchema.deserialize,
        allOffsets,
        PurchaseLineItem(),
      ) ??
      [];
  object.partyId = reader.readLongOrNull(offsets[4]);
  object.partyName = reader.readString(offsets[5]);
  object.partyPhone = reader.readStringOrNull(offsets[6]);
  object.paymentStatus = reader.readString(offsets[7]);
  object.purchaseDate = reader.readDateTime(offsets[8]);
  object.subtotal = reader.readDouble(offsets[9]);
  object.totalAmount = reader.readDouble(offsets[10]);
  object.totalCgst = reader.readDouble(offsets[11]);
  object.totalDiscount = reader.readDouble(offsets[12]);
  object.totalGst = reader.readDouble(offsets[13]);
  object.totalIgst = reader.readDouble(offsets[14]);
  object.totalSgst = reader.readDouble(offsets[15]);
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
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readObjectList<PurchaseLineItem>(
            offset,
            PurchaseLineItemSchema.deserialize,
            allOffsets,
            PurchaseLineItem(),
          ) ??
          []) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDateTime(offset)) as P;
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
    case 14:
      return (reader.readDouble(offset)) as P;
    case 15:
      return (reader.readDouble(offset)) as P;
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

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
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

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPaymentStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentStatus',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctByPurchaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'purchaseDate');
    });
  }

  QueryBuilder<Purchase, Purchase, QDistinct> distinctBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtotal');
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

  QueryBuilder<Purchase, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Purchase, List<PurchaseLineItem>, QQueryOperations>
      itemsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'items');
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

  QueryBuilder<Purchase, String, QQueryOperations> paymentStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentStatus');
    });
  }

  QueryBuilder<Purchase, DateTime, QQueryOperations> purchaseDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'purchaseDate');
    });
  }

  QueryBuilder<Purchase, double, QQueryOperations> subtotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtotal');
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
    r'cgstAmount': PropertySchema(
      id: 0,
      name: r'cgstAmount',
      type: IsarType.double,
    ),
    r'cgstRate': PropertySchema(
      id: 1,
      name: r'cgstRate',
      type: IsarType.double,
    ),
    r'discountAmount': PropertySchema(
      id: 2,
      name: r'discountAmount',
      type: IsarType.double,
    ),
    r'discountType': PropertySchema(
      id: 3,
      name: r'discountType',
      type: IsarType.string,
    ),
    r'discountValue': PropertySchema(
      id: 4,
      name: r'discountValue',
      type: IsarType.double,
    ),
    r'gstRate': PropertySchema(
      id: 5,
      name: r'gstRate',
      type: IsarType.double,
    ),
    r'hsnCode': PropertySchema(
      id: 6,
      name: r'hsnCode',
      type: IsarType.string,
    ),
    r'igstAmount': PropertySchema(
      id: 7,
      name: r'igstAmount',
      type: IsarType.double,
    ),
    r'igstRate': PropertySchema(
      id: 8,
      name: r'igstRate',
      type: IsarType.double,
    ),
    r'itemId': PropertySchema(
      id: 9,
      name: r'itemId',
      type: IsarType.long,
    ),
    r'itemName': PropertySchema(
      id: 10,
      name: r'itemName',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 11,
      name: r'quantity',
      type: IsarType.double,
    ),
    r'rate': PropertySchema(
      id: 12,
      name: r'rate',
      type: IsarType.double,
    ),
    r'sgstAmount': PropertySchema(
      id: 13,
      name: r'sgstAmount',
      type: IsarType.double,
    ),
    r'sgstRate': PropertySchema(
      id: 14,
      name: r'sgstRate',
      type: IsarType.double,
    ),
    r'taxAmount': PropertySchema(
      id: 15,
      name: r'taxAmount',
      type: IsarType.double,
    ),
    r'taxType': PropertySchema(
      id: 16,
      name: r'taxType',
      type: IsarType.string,
    ),
    r'totalAmount': PropertySchema(
      id: 17,
      name: r'totalAmount',
      type: IsarType.double,
    ),
    r'unit': PropertySchema(
      id: 18,
      name: r'unit',
      type: IsarType.string,
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
  {
    final value = object.unit;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _purchaseLineItemSerialize(
  PurchaseLineItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.cgstAmount);
  writer.writeDouble(offsets[1], object.cgstRate);
  writer.writeDouble(offsets[2], object.discountAmount);
  writer.writeString(offsets[3], object.discountType);
  writer.writeDouble(offsets[4], object.discountValue);
  writer.writeDouble(offsets[5], object.gstRate);
  writer.writeString(offsets[6], object.hsnCode);
  writer.writeDouble(offsets[7], object.igstAmount);
  writer.writeDouble(offsets[8], object.igstRate);
  writer.writeLong(offsets[9], object.itemId);
  writer.writeString(offsets[10], object.itemName);
  writer.writeDouble(offsets[11], object.quantity);
  writer.writeDouble(offsets[12], object.rate);
  writer.writeDouble(offsets[13], object.sgstAmount);
  writer.writeDouble(offsets[14], object.sgstRate);
  writer.writeDouble(offsets[15], object.taxAmount);
  writer.writeString(offsets[16], object.taxType);
  writer.writeDouble(offsets[17], object.totalAmount);
  writer.writeString(offsets[18], object.unit);
}

PurchaseLineItem _purchaseLineItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PurchaseLineItem();
  object.cgstAmount = reader.readDouble(offsets[0]);
  object.cgstRate = reader.readDouble(offsets[1]);
  object.discountAmount = reader.readDouble(offsets[2]);
  object.discountType = reader.readString(offsets[3]);
  object.discountValue = reader.readDouble(offsets[4]);
  object.gstRate = reader.readDouble(offsets[5]);
  object.hsnCode = reader.readStringOrNull(offsets[6]);
  object.igstAmount = reader.readDouble(offsets[7]);
  object.igstRate = reader.readDouble(offsets[8]);
  object.itemId = reader.readLongOrNull(offsets[9]);
  object.itemName = reader.readStringOrNull(offsets[10]);
  object.quantity = reader.readDouble(offsets[11]);
  object.rate = reader.readDouble(offsets[12]);
  object.sgstAmount = reader.readDouble(offsets[13]);
  object.sgstRate = reader.readDouble(offsets[14]);
  object.taxAmount = reader.readDouble(offsets[15]);
  object.taxType = reader.readString(offsets[16]);
  object.totalAmount = reader.readDouble(offsets[17]);
  object.unit = reader.readStringOrNull(offsets[18]);
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
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readDouble(offset)) as P;
    case 12:
      return (reader.readDouble(offset)) as P;
    case 13:
      return (reader.readDouble(offset)) as P;
    case 14:
      return (reader.readDouble(offset)) as P;
    case 15:
      return (reader.readDouble(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readDouble(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PurchaseLineItemQueryFilter
    on QueryBuilder<PurchaseLineItem, PurchaseLineItem, QFilterCondition> {
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
      unitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'unit',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      unitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'unit',
      ));
    });
  }

  QueryBuilder<PurchaseLineItem, PurchaseLineItem, QAfterFilterCondition>
      unitEqualTo(
    String? value, {
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
    String? value, {
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
    String? value, {
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
    String? lower,
    String? upper, {
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
}

extension PurchaseLineItemQueryObject
    on QueryBuilder<PurchaseLineItem, PurchaseLineItem, QFilterCondition> {}
