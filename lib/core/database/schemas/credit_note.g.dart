// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_note.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCreditNoteCollection on Isar {
  IsarCollection<CreditNote> get creditNotes => this.collection();
}

const CreditNoteSchema = CollectionSchema(
  name: r'CreditNote',
  id: 2661198163886254733,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'description': PropertySchema(
      id: 1,
      name: r'description',
      type: IsarType.string,
    ),
    r'isGstNote': PropertySchema(
      id: 2,
      name: r'isGstNote',
      type: IsarType.bool,
    ),
    r'items': PropertySchema(
      id: 3,
      name: r'items',
      type: IsarType.objectList,
      target: r'CreditNoteLineItem',
    ),
    r'noteDate': PropertySchema(
      id: 4,
      name: r'noteDate',
      type: IsarType.dateTime,
    ),
    r'noteNumber': PropertySchema(
      id: 5,
      name: r'noteNumber',
      type: IsarType.string,
    ),
    r'noteSeq': PropertySchema(
      id: 6,
      name: r'noteSeq',
      type: IsarType.long,
    ),
    r'noteType': PropertySchema(
      id: 7,
      name: r'noteType',
      type: IsarType.string,
    ),
    r'originalInvoiceDate': PropertySchema(
      id: 8,
      name: r'originalInvoiceDate',
      type: IsarType.dateTime,
    ),
    r'originalInvoiceNumber': PropertySchema(
      id: 9,
      name: r'originalInvoiceNumber',
      type: IsarType.string,
    ),
    r'paidAmount': PropertySchema(
      id: 10,
      name: r'paidAmount',
      type: IsarType.double,
    ),
    r'partyGstin': PropertySchema(
      id: 11,
      name: r'partyGstin',
      type: IsarType.string,
    ),
    r'partyId': PropertySchema(
      id: 12,
      name: r'partyId',
      type: IsarType.long,
    ),
    r'partyName': PropertySchema(
      id: 13,
      name: r'partyName',
      type: IsarType.string,
    ),
    r'partyPhone': PropertySchema(
      id: 14,
      name: r'partyPhone',
      type: IsarType.string,
    ),
    r'partyState': PropertySchema(
      id: 15,
      name: r'partyState',
      type: IsarType.string,
    ),
    r'paymentStatus': PropertySchema(
      id: 16,
      name: r'paymentStatus',
      type: IsarType.string,
    ),
    r'placeOfSupplyState': PropertySchema(
      id: 17,
      name: r'placeOfSupplyState',
      type: IsarType.string,
    ),
    r'preGst': PropertySchema(
      id: 18,
      name: r'preGst',
      type: IsarType.string,
    ),
    r'reason': PropertySchema(
      id: 19,
      name: r'reason',
      type: IsarType.string,
    ),
    r'subtotal': PropertySchema(
      id: 20,
      name: r'subtotal',
      type: IsarType.double,
    ),
    r'taxMode': PropertySchema(
      id: 21,
      name: r'taxMode',
      type: IsarType.string,
    ),
    r'totalAmount': PropertySchema(
      id: 22,
      name: r'totalAmount',
      type: IsarType.double,
    ),
    r'totalCgst': PropertySchema(
      id: 23,
      name: r'totalCgst',
      type: IsarType.double,
    ),
    r'totalGst': PropertySchema(
      id: 24,
      name: r'totalGst',
      type: IsarType.double,
    ),
    r'totalIgst': PropertySchema(
      id: 25,
      name: r'totalIgst',
      type: IsarType.double,
    ),
    r'totalSgst': PropertySchema(
      id: 26,
      name: r'totalSgst',
      type: IsarType.double,
    )
  },
  estimateSize: _creditNoteEstimateSize,
  serialize: _creditNoteSerialize,
  deserialize: _creditNoteDeserialize,
  deserializeProp: _creditNoteDeserializeProp,
  idName: r'id',
  indexes: {
    r'noteNumber': IndexSchema(
      id: -7350466299319790489,
      name: r'noteNumber',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'noteNumber',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    ),
    r'noteSeq': IndexSchema(
      id: 8121676582348139829,
      name: r'noteSeq',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'noteSeq',
          type: IndexType.value,
          caseSensitive: false,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'CreditNoteLineItem': CreditNoteLineItemSchema},
  getId: _creditNoteGetId,
  getLinks: _creditNoteGetLinks,
  attach: _creditNoteAttach,
  version: '3.1.0+1',
);

int _creditNoteEstimateSize(
  CreditNote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.items.length * 3;
  {
    final offsets = allOffsets[CreditNoteLineItem]!;
    for (var i = 0; i < object.items.length; i++) {
      final value = object.items[i];
      bytesCount +=
          CreditNoteLineItemSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.noteNumber.length * 3;
  bytesCount += 3 + object.noteType.length * 3;
  {
    final value = object.originalInvoiceNumber;
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
  bytesCount += 3 + object.paymentStatus.length * 3;
  bytesCount += 3 + object.placeOfSupplyState.length * 3;
  bytesCount += 3 + object.preGst.length * 3;
  bytesCount += 3 + object.reason.length * 3;
  bytesCount += 3 + object.taxMode.length * 3;
  return bytesCount;
}

void _creditNoteSerialize(
  CreditNote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeString(offsets[1], object.description);
  writer.writeBool(offsets[2], object.isGstNote);
  writer.writeObjectList<CreditNoteLineItem>(
    offsets[3],
    allOffsets,
    CreditNoteLineItemSchema.serialize,
    object.items,
  );
  writer.writeDateTime(offsets[4], object.noteDate);
  writer.writeString(offsets[5], object.noteNumber);
  writer.writeLong(offsets[6], object.noteSeq);
  writer.writeString(offsets[7], object.noteType);
  writer.writeDateTime(offsets[8], object.originalInvoiceDate);
  writer.writeString(offsets[9], object.originalInvoiceNumber);
  writer.writeDouble(offsets[10], object.paidAmount);
  writer.writeString(offsets[11], object.partyGstin);
  writer.writeLong(offsets[12], object.partyId);
  writer.writeString(offsets[13], object.partyName);
  writer.writeString(offsets[14], object.partyPhone);
  writer.writeString(offsets[15], object.partyState);
  writer.writeString(offsets[16], object.paymentStatus);
  writer.writeString(offsets[17], object.placeOfSupplyState);
  writer.writeString(offsets[18], object.preGst);
  writer.writeString(offsets[19], object.reason);
  writer.writeDouble(offsets[20], object.subtotal);
  writer.writeString(offsets[21], object.taxMode);
  writer.writeDouble(offsets[22], object.totalAmount);
  writer.writeDouble(offsets[23], object.totalCgst);
  writer.writeDouble(offsets[24], object.totalGst);
  writer.writeDouble(offsets[25], object.totalIgst);
  writer.writeDouble(offsets[26], object.totalSgst);
}

CreditNote _creditNoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CreditNote();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.description = reader.readStringOrNull(offsets[1]);
  object.id = id;
  object.isGstNote = reader.readBool(offsets[2]);
  object.items = reader.readObjectList<CreditNoteLineItem>(
        offsets[3],
        CreditNoteLineItemSchema.deserialize,
        allOffsets,
        CreditNoteLineItem(),
      ) ??
      [];
  object.noteDate = reader.readDateTime(offsets[4]);
  object.noteNumber = reader.readString(offsets[5]);
  object.noteSeq = reader.readLong(offsets[6]);
  object.noteType = reader.readString(offsets[7]);
  object.originalInvoiceDate = reader.readDateTimeOrNull(offsets[8]);
  object.originalInvoiceNumber = reader.readStringOrNull(offsets[9]);
  object.paidAmount = reader.readDouble(offsets[10]);
  object.partyGstin = reader.readStringOrNull(offsets[11]);
  object.partyId = reader.readLongOrNull(offsets[12]);
  object.partyName = reader.readString(offsets[13]);
  object.partyPhone = reader.readStringOrNull(offsets[14]);
  object.partyState = reader.readStringOrNull(offsets[15]);
  object.paymentStatus = reader.readString(offsets[16]);
  object.placeOfSupplyState = reader.readString(offsets[17]);
  object.preGst = reader.readString(offsets[18]);
  object.reason = reader.readString(offsets[19]);
  object.subtotal = reader.readDouble(offsets[20]);
  object.taxMode = reader.readString(offsets[21]);
  object.totalAmount = reader.readDouble(offsets[22]);
  object.totalCgst = reader.readDouble(offsets[23]);
  object.totalGst = reader.readDouble(offsets[24]);
  object.totalIgst = reader.readDouble(offsets[25]);
  object.totalSgst = reader.readDouble(offsets[26]);
  return object;
}

P _creditNoteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readBool(offset)) as P;
    case 3:
      return (reader.readObjectList<CreditNoteLineItem>(
            offset,
            CreditNoteLineItemSchema.deserialize,
            allOffsets,
            CreditNoteLineItem(),
          ) ??
          []) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readStringOrNull(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readString(offset)) as P;
    case 20:
      return (reader.readDouble(offset)) as P;
    case 21:
      return (reader.readString(offset)) as P;
    case 22:
      return (reader.readDouble(offset)) as P;
    case 23:
      return (reader.readDouble(offset)) as P;
    case 24:
      return (reader.readDouble(offset)) as P;
    case 25:
      return (reader.readDouble(offset)) as P;
    case 26:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _creditNoteGetId(CreditNote object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _creditNoteGetLinks(CreditNote object) {
  return [];
}

void _creditNoteAttach(IsarCollection<dynamic> col, Id id, CreditNote object) {
  object.id = id;
}

extension CreditNoteByIndex on IsarCollection<CreditNote> {
  Future<CreditNote?> getByNoteNumber(String noteNumber) {
    return getByIndex(r'noteNumber', [noteNumber]);
  }

  CreditNote? getByNoteNumberSync(String noteNumber) {
    return getByIndexSync(r'noteNumber', [noteNumber]);
  }

  Future<bool> deleteByNoteNumber(String noteNumber) {
    return deleteByIndex(r'noteNumber', [noteNumber]);
  }

  bool deleteByNoteNumberSync(String noteNumber) {
    return deleteByIndexSync(r'noteNumber', [noteNumber]);
  }

  Future<List<CreditNote?>> getAllByNoteNumber(List<String> noteNumberValues) {
    final values = noteNumberValues.map((e) => [e]).toList();
    return getAllByIndex(r'noteNumber', values);
  }

  List<CreditNote?> getAllByNoteNumberSync(List<String> noteNumberValues) {
    final values = noteNumberValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'noteNumber', values);
  }

  Future<int> deleteAllByNoteNumber(List<String> noteNumberValues) {
    final values = noteNumberValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'noteNumber', values);
  }

  int deleteAllByNoteNumberSync(List<String> noteNumberValues) {
    final values = noteNumberValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'noteNumber', values);
  }

  Future<Id> putByNoteNumber(CreditNote object) {
    return putByIndex(r'noteNumber', object);
  }

  Id putByNoteNumberSync(CreditNote object, {bool saveLinks = true}) {
    return putByIndexSync(r'noteNumber', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByNoteNumber(List<CreditNote> objects) {
    return putAllByIndex(r'noteNumber', objects);
  }

  List<Id> putAllByNoteNumberSync(List<CreditNote> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'noteNumber', objects, saveLinks: saveLinks);
  }
}

extension CreditNoteQueryWhereSort
    on QueryBuilder<CreditNote, CreditNote, QWhere> {
  QueryBuilder<CreditNote, CreditNote, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterWhere> anyNoteSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'noteSeq'),
      );
    });
  }
}

extension CreditNoteQueryWhere
    on QueryBuilder<CreditNote, CreditNote, QWhereClause> {
  QueryBuilder<CreditNote, CreditNote, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<CreditNote, CreditNote, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterWhereClause> idBetween(
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

  QueryBuilder<CreditNote, CreditNote, QAfterWhereClause> noteNumberEqualTo(
      String noteNumber) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'noteNumber',
        value: [noteNumber],
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterWhereClause> noteNumberNotEqualTo(
      String noteNumber) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noteNumber',
              lower: [],
              upper: [noteNumber],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noteNumber',
              lower: [noteNumber],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noteNumber',
              lower: [noteNumber],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noteNumber',
              lower: [],
              upper: [noteNumber],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterWhereClause> noteSeqEqualTo(
      int noteSeq) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'noteSeq',
        value: [noteSeq],
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterWhereClause> noteSeqNotEqualTo(
      int noteSeq) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noteSeq',
              lower: [],
              upper: [noteSeq],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noteSeq',
              lower: [noteSeq],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noteSeq',
              lower: [noteSeq],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'noteSeq',
              lower: [],
              upper: [noteSeq],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterWhereClause> noteSeqGreaterThan(
    int noteSeq, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'noteSeq',
        lower: [noteSeq],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterWhereClause> noteSeqLessThan(
    int noteSeq, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'noteSeq',
        lower: [],
        upper: [noteSeq],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterWhereClause> noteSeqBetween(
    int lowerNoteSeq,
    int upperNoteSeq, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'noteSeq',
        lower: [lowerNoteSeq],
        includeLower: includeLower,
        upper: [upperNoteSeq],
        includeUpper: includeUpper,
      ));
    });
  }
}

extension CreditNoteQueryFilter
    on QueryBuilder<CreditNote, CreditNote, QFilterCondition> {
  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      createdAtGreaterThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> createdAtLessThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> createdAtBetween(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> isGstNoteEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isGstNote',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      itemsLengthEqualTo(int length) {
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> itemsIsEmpty() {
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      itemsIsNotEmpty() {
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      itemsLengthLessThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      itemsLengthBetween(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> noteDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noteDate',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      noteDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'noteDate',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> noteDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'noteDate',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> noteDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'noteDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> noteNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noteNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      noteNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'noteNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      noteNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'noteNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> noteNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'noteNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      noteNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'noteNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      noteNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'noteNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      noteNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'noteNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> noteNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'noteNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      noteNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noteNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      noteNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'noteNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> noteSeqEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noteSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      noteSeqGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'noteSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> noteSeqLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'noteSeq',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> noteSeqBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'noteSeq',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> noteTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noteType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      noteTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'noteType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> noteTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'noteType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> noteTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'noteType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      noteTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'noteType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> noteTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'noteType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> noteTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'noteType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> noteTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'noteType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      noteTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noteType',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      noteTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'noteType',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'originalInvoiceDate',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'originalInvoiceDate',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalInvoiceDate',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originalInvoiceDate',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originalInvoiceDate',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originalInvoiceDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'originalInvoiceNumber',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'originalInvoiceNumber',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalInvoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'originalInvoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'originalInvoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'originalInvoiceNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'originalInvoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'originalInvoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'originalInvoiceNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceNumberMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'originalInvoiceNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'originalInvoiceNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      originalInvoiceNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'originalInvoiceNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> paidAmountEqualTo(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      paidAmountGreaterThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      paidAmountLessThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> paidAmountBetween(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyGstinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyGstin',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyGstinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyGstin',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyGstinEqualTo(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyGstinGreaterThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyGstinLessThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyGstinBetween(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyGstinStartsWith(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyGstinEndsWith(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyGstinContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'partyGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyGstinMatches(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyGstinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyGstin',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyGstinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyGstin',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyId',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyId',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyId',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyIdGreaterThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyIdLessThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyIdBetween(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyNameEqualTo(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyNameGreaterThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyNameLessThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyNameBetween(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyNameStartsWith(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyNameEndsWith(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyNameContains(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyNameMatches(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyName',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyName',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyPhoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyPhone',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyPhoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyPhone',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyPhoneEqualTo(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyPhoneGreaterThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyPhoneLessThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyPhoneBetween(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyPhoneStartsWith(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyPhoneEndsWith(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyPhoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'partyPhone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyPhoneMatches(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyPhoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyPhone',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyPhoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyPhone',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyStateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyState',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyStateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyState',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyStateEqualTo(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyStateGreaterThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyStateLessThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyStateBetween(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyStateStartsWith(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyStateEndsWith(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyStateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'partyState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> partyStateMatches(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyStateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyState',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      partyStateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyState',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      paymentStatusEqualTo(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      paymentStatusLessThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      paymentStatusBetween(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      paymentStatusEndsWith(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      paymentStatusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'paymentStatus',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      paymentStatusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'paymentStatus',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      paymentStatusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      paymentStatusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'paymentStatus',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      placeOfSupplyStateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'placeOfSupplyState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      placeOfSupplyStateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'placeOfSupplyState',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      placeOfSupplyStateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeOfSupplyState',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      placeOfSupplyStateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'placeOfSupplyState',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> preGstEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preGst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> preGstGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'preGst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> preGstLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'preGst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> preGstBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'preGst',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> preGstStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'preGst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> preGstEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'preGst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> preGstContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'preGst',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> preGstMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'preGst',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> preGstIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'preGst',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      preGstIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'preGst',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> reasonEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> reasonGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> reasonLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> reasonBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reason',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> reasonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> reasonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> reasonContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> reasonMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reason',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> reasonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reason',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      reasonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reason',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> subtotalEqualTo(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      subtotalGreaterThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> subtotalLessThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> subtotalBetween(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> taxModeEqualTo(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      taxModeGreaterThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> taxModeLessThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> taxModeBetween(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> taxModeStartsWith(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> taxModeEndsWith(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> taxModeContains(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> taxModeMatches(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> taxModeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxMode',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      taxModeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'taxMode',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> totalCgstEqualTo(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      totalCgstGreaterThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> totalCgstLessThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> totalCgstBetween(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> totalGstEqualTo(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      totalGstGreaterThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> totalGstLessThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> totalGstBetween(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> totalIgstEqualTo(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      totalIgstGreaterThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> totalIgstLessThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> totalIgstBetween(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> totalSgstEqualTo(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition>
      totalSgstGreaterThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> totalSgstLessThan(
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

  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> totalSgstBetween(
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

extension CreditNoteQueryObject
    on QueryBuilder<CreditNote, CreditNote, QFilterCondition> {
  QueryBuilder<CreditNote, CreditNote, QAfterFilterCondition> itemsElement(
      FilterQuery<CreditNoteLineItem> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'items');
    });
  }
}

extension CreditNoteQueryLinks
    on QueryBuilder<CreditNote, CreditNote, QFilterCondition> {}

extension CreditNoteQuerySortBy
    on QueryBuilder<CreditNote, CreditNote, QSortBy> {
  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByIsGstNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGstNote', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByIsGstNoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGstNote', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByNoteDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteDate', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByNoteDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteDate', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByNoteNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteNumber', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByNoteNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteNumber', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByNoteSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteSeq', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByNoteSeqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteSeq', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByNoteType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteType', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByNoteTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteType', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy>
      sortByOriginalInvoiceDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalInvoiceDate', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy>
      sortByOriginalInvoiceDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalInvoiceDate', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy>
      sortByOriginalInvoiceNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalInvoiceNumber', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy>
      sortByOriginalInvoiceNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalInvoiceNumber', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByPaidAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paidAmount', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByPaidAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paidAmount', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByPartyGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByPartyGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByPartyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByPartyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByPartyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByPartyPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyPhone', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByPartyPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyPhone', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByPartyState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyState', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByPartyStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyState', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByPaymentStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentStatus', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByPaymentStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentStatus', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy>
      sortByPlaceOfSupplyState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfSupplyState', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy>
      sortByPlaceOfSupplyStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfSupplyState', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByPreGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preGst', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByPreGstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preGst', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortBySubtotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByTaxMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxMode', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByTaxModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxMode', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByTotalAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByTotalCgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCgst', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByTotalCgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCgst', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByTotalGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGst', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByTotalGstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGst', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByTotalIgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalIgst', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByTotalIgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalIgst', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByTotalSgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSgst', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> sortByTotalSgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSgst', Sort.desc);
    });
  }
}

extension CreditNoteQuerySortThenBy
    on QueryBuilder<CreditNote, CreditNote, QSortThenBy> {
  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByIsGstNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGstNote', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByIsGstNoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGstNote', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByNoteDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteDate', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByNoteDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteDate', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByNoteNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteNumber', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByNoteNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteNumber', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByNoteSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteSeq', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByNoteSeqDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteSeq', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByNoteType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteType', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByNoteTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noteType', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy>
      thenByOriginalInvoiceDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalInvoiceDate', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy>
      thenByOriginalInvoiceDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalInvoiceDate', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy>
      thenByOriginalInvoiceNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalInvoiceNumber', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy>
      thenByOriginalInvoiceNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'originalInvoiceNumber', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByPaidAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paidAmount', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByPaidAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paidAmount', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByPartyGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByPartyGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByPartyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByPartyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByPartyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByPartyPhone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyPhone', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByPartyPhoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyPhone', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByPartyState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyState', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByPartyStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyState', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByPaymentStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentStatus', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByPaymentStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentStatus', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy>
      thenByPlaceOfSupplyState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfSupplyState', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy>
      thenByPlaceOfSupplyStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfSupplyState', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByPreGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preGst', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByPreGstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'preGst', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reason', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenBySubtotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subtotal', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByTaxMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxMode', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByTaxModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxMode', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByTotalAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByTotalCgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCgst', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByTotalCgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCgst', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByTotalGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGst', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByTotalGstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalGst', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByTotalIgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalIgst', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByTotalIgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalIgst', Sort.desc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByTotalSgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSgst', Sort.asc);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QAfterSortBy> thenByTotalSgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalSgst', Sort.desc);
    });
  }
}

extension CreditNoteQueryWhereDistinct
    on QueryBuilder<CreditNote, CreditNote, QDistinct> {
  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByIsGstNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isGstNote');
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByNoteDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'noteDate');
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByNoteNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'noteNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByNoteSeq() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'noteSeq');
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByNoteType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'noteType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct>
      distinctByOriginalInvoiceDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originalInvoiceDate');
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct>
      distinctByOriginalInvoiceNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'originalInvoiceNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByPaidAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paidAmount');
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByPartyGstin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyGstin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyId');
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByPartyName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByPartyPhone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyPhone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByPartyState(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyState', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByPaymentStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentStatus',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByPlaceOfSupplyState(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'placeOfSupplyState',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByPreGst(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'preGst', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByReason(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reason', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctBySubtotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subtotal');
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByTaxMode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxMode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalAmount');
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByTotalCgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalCgst');
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByTotalGst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalGst');
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByTotalIgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalIgst');
    });
  }

  QueryBuilder<CreditNote, CreditNote, QDistinct> distinctByTotalSgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalSgst');
    });
  }
}

extension CreditNoteQueryProperty
    on QueryBuilder<CreditNote, CreditNote, QQueryProperty> {
  QueryBuilder<CreditNote, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CreditNote, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<CreditNote, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<CreditNote, bool, QQueryOperations> isGstNoteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isGstNote');
    });
  }

  QueryBuilder<CreditNote, List<CreditNoteLineItem>, QQueryOperations>
      itemsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'items');
    });
  }

  QueryBuilder<CreditNote, DateTime, QQueryOperations> noteDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'noteDate');
    });
  }

  QueryBuilder<CreditNote, String, QQueryOperations> noteNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'noteNumber');
    });
  }

  QueryBuilder<CreditNote, int, QQueryOperations> noteSeqProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'noteSeq');
    });
  }

  QueryBuilder<CreditNote, String, QQueryOperations> noteTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'noteType');
    });
  }

  QueryBuilder<CreditNote, DateTime?, QQueryOperations>
      originalInvoiceDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originalInvoiceDate');
    });
  }

  QueryBuilder<CreditNote, String?, QQueryOperations>
      originalInvoiceNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'originalInvoiceNumber');
    });
  }

  QueryBuilder<CreditNote, double, QQueryOperations> paidAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paidAmount');
    });
  }

  QueryBuilder<CreditNote, String?, QQueryOperations> partyGstinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyGstin');
    });
  }

  QueryBuilder<CreditNote, int?, QQueryOperations> partyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyId');
    });
  }

  QueryBuilder<CreditNote, String, QQueryOperations> partyNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyName');
    });
  }

  QueryBuilder<CreditNote, String?, QQueryOperations> partyPhoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyPhone');
    });
  }

  QueryBuilder<CreditNote, String?, QQueryOperations> partyStateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyState');
    });
  }

  QueryBuilder<CreditNote, String, QQueryOperations> paymentStatusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentStatus');
    });
  }

  QueryBuilder<CreditNote, String, QQueryOperations>
      placeOfSupplyStateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'placeOfSupplyState');
    });
  }

  QueryBuilder<CreditNote, String, QQueryOperations> preGstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'preGst');
    });
  }

  QueryBuilder<CreditNote, String, QQueryOperations> reasonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reason');
    });
  }

  QueryBuilder<CreditNote, double, QQueryOperations> subtotalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subtotal');
    });
  }

  QueryBuilder<CreditNote, String, QQueryOperations> taxModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxMode');
    });
  }

  QueryBuilder<CreditNote, double, QQueryOperations> totalAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalAmount');
    });
  }

  QueryBuilder<CreditNote, double, QQueryOperations> totalCgstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalCgst');
    });
  }

  QueryBuilder<CreditNote, double, QQueryOperations> totalGstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalGst');
    });
  }

  QueryBuilder<CreditNote, double, QQueryOperations> totalIgstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalIgst');
    });
  }

  QueryBuilder<CreditNote, double, QQueryOperations> totalSgstProperty() {
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

const CreditNoteLineItemSchema = Schema(
  name: r'CreditNoteLineItem',
  id: 2895429666842508517,
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
    r'gstRate': PropertySchema(
      id: 3,
      name: r'gstRate',
      type: IsarType.double,
    ),
    r'hsnCode': PropertySchema(
      id: 4,
      name: r'hsnCode',
      type: IsarType.string,
    ),
    r'igstAmount': PropertySchema(
      id: 5,
      name: r'igstAmount',
      type: IsarType.double,
    ),
    r'itemId': PropertySchema(
      id: 6,
      name: r'itemId',
      type: IsarType.long,
    ),
    r'itemName': PropertySchema(
      id: 7,
      name: r'itemName',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 8,
      name: r'quantity',
      type: IsarType.double,
    ),
    r'sgstAmount': PropertySchema(
      id: 9,
      name: r'sgstAmount',
      type: IsarType.double,
    ),
    r'taxableAmount': PropertySchema(
      id: 10,
      name: r'taxableAmount',
      type: IsarType.double,
    ),
    r'totalAmount': PropertySchema(
      id: 11,
      name: r'totalAmount',
      type: IsarType.double,
    ),
    r'unit': PropertySchema(
      id: 12,
      name: r'unit',
      type: IsarType.string,
    ),
    r'unitPrice': PropertySchema(
      id: 13,
      name: r'unitPrice',
      type: IsarType.double,
    )
  },
  estimateSize: _creditNoteLineItemEstimateSize,
  serialize: _creditNoteLineItemSerialize,
  deserialize: _creditNoteLineItemDeserialize,
  deserializeProp: _creditNoteLineItemDeserializeProp,
);

int _creditNoteLineItemEstimateSize(
  CreditNoteLineItem object,
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
  {
    final value = object.unit;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _creditNoteLineItemSerialize(
  CreditNoteLineItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.cessAmount);
  writer.writeDouble(offsets[1], object.cessRate);
  writer.writeDouble(offsets[2], object.cgstAmount);
  writer.writeDouble(offsets[3], object.gstRate);
  writer.writeString(offsets[4], object.hsnCode);
  writer.writeDouble(offsets[5], object.igstAmount);
  writer.writeLong(offsets[6], object.itemId);
  writer.writeString(offsets[7], object.itemName);
  writer.writeDouble(offsets[8], object.quantity);
  writer.writeDouble(offsets[9], object.sgstAmount);
  writer.writeDouble(offsets[10], object.taxableAmount);
  writer.writeDouble(offsets[11], object.totalAmount);
  writer.writeString(offsets[12], object.unit);
  writer.writeDouble(offsets[13], object.unitPrice);
}

CreditNoteLineItem _creditNoteLineItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CreditNoteLineItem();
  object.cessAmount = reader.readDouble(offsets[0]);
  object.cessRate = reader.readDouble(offsets[1]);
  object.cgstAmount = reader.readDouble(offsets[2]);
  object.gstRate = reader.readDouble(offsets[3]);
  object.hsnCode = reader.readStringOrNull(offsets[4]);
  object.igstAmount = reader.readDouble(offsets[5]);
  object.itemId = reader.readLongOrNull(offsets[6]);
  object.itemName = reader.readStringOrNull(offsets[7]);
  object.quantity = reader.readDouble(offsets[8]);
  object.sgstAmount = reader.readDouble(offsets[9]);
  object.taxableAmount = reader.readDouble(offsets[10]);
  object.totalAmount = reader.readDouble(offsets[11]);
  object.unit = reader.readStringOrNull(offsets[12]);
  object.unitPrice = reader.readDouble(offsets[13]);
  return object;
}

P _creditNoteLineItemDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
      return (reader.readDouble(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CreditNoteLineItemQueryFilter
    on QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QFilterCondition> {
  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      hsnCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hsnCode',
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      hsnCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hsnCode',
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      hsnCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hsnCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      hsnCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hsnCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      hsnCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hsnCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      hsnCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hsnCode',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      itemIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      itemIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      itemIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemId',
        value: value,
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      itemNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemName',
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      itemNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemName',
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      itemNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      itemNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      itemNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemName',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      itemNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemName',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      unitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'unit',
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      unitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'unit',
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      unitContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      unitMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'unit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      unitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
      unitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unit',
        value: '',
      ));
    });
  }

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

  QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QAfterFilterCondition>
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

extension CreditNoteLineItemQueryObject
    on QueryBuilder<CreditNoteLineItem, CreditNoteLineItem, QFilterCondition> {}
