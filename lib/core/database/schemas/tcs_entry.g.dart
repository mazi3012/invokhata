// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tcs_entry.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTcsEntryCollection on Isar {
  IsarCollection<TcsEntry> get tcsEntrys => this.collection();
}

const TcsEntrySchema = CollectionSchema(
  name: r'TcsEntry',
  id: 8584232011584467430,
  properties: {
    r'partyGstin': PropertySchema(
      id: 0,
      name: r'partyGstin',
      type: IsarType.string,
    ),
    r'partyId': PropertySchema(
      id: 1,
      name: r'partyId',
      type: IsarType.long,
    ),
    r'partyName': PropertySchema(
      id: 2,
      name: r'partyName',
      type: IsarType.string,
    ),
    r'remarks': PropertySchema(
      id: 3,
      name: r'remarks',
      type: IsarType.string,
    ),
    r'taxableAmount': PropertySchema(
      id: 4,
      name: r'taxableAmount',
      type: IsarType.double,
    ),
    r'tcsAmount': PropertySchema(
      id: 5,
      name: r'tcsAmount',
      type: IsarType.double,
    ),
    r'tcsDate': PropertySchema(
      id: 6,
      name: r'tcsDate',
      type: IsarType.dateTime,
    ),
    r'tcsNumber': PropertySchema(
      id: 7,
      name: r'tcsNumber',
      type: IsarType.string,
    ),
    r'tcsRate': PropertySchema(
      id: 8,
      name: r'tcsRate',
      type: IsarType.double,
    ),
    r'tcsSection': PropertySchema(
      id: 9,
      name: r'tcsSection',
      type: IsarType.string,
    )
  },
  estimateSize: _tcsEntryEstimateSize,
  serialize: _tcsEntrySerialize,
  deserialize: _tcsEntryDeserialize,
  deserializeProp: _tcsEntryDeserializeProp,
  idName: r'id',
  indexes: {
    r'tcsNumber': IndexSchema(
      id: 4391110185658174688,
      name: r'tcsNumber',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'tcsNumber',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _tcsEntryGetId,
  getLinks: _tcsEntryGetLinks,
  attach: _tcsEntryAttach,
  version: '3.1.0+1',
);

int _tcsEntryEstimateSize(
  TcsEntry object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.partyGstin;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.partyName.length * 3;
  {
    final value = object.remarks;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.tcsNumber.length * 3;
  bytesCount += 3 + object.tcsSection.length * 3;
  return bytesCount;
}

void _tcsEntrySerialize(
  TcsEntry object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.partyGstin);
  writer.writeLong(offsets[1], object.partyId);
  writer.writeString(offsets[2], object.partyName);
  writer.writeString(offsets[3], object.remarks);
  writer.writeDouble(offsets[4], object.taxableAmount);
  writer.writeDouble(offsets[5], object.tcsAmount);
  writer.writeDateTime(offsets[6], object.tcsDate);
  writer.writeString(offsets[7], object.tcsNumber);
  writer.writeDouble(offsets[8], object.tcsRate);
  writer.writeString(offsets[9], object.tcsSection);
}

TcsEntry _tcsEntryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TcsEntry();
  object.id = id;
  object.partyGstin = reader.readStringOrNull(offsets[0]);
  object.partyId = reader.readLongOrNull(offsets[1]);
  object.partyName = reader.readString(offsets[2]);
  object.remarks = reader.readStringOrNull(offsets[3]);
  object.taxableAmount = reader.readDouble(offsets[4]);
  object.tcsAmount = reader.readDouble(offsets[5]);
  object.tcsDate = reader.readDateTime(offsets[6]);
  object.tcsNumber = reader.readString(offsets[7]);
  object.tcsRate = reader.readDouble(offsets[8]);
  object.tcsSection = reader.readString(offsets[9]);
  return object;
}

P _tcsEntryDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _tcsEntryGetId(TcsEntry object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tcsEntryGetLinks(TcsEntry object) {
  return [];
}

void _tcsEntryAttach(IsarCollection<dynamic> col, Id id, TcsEntry object) {
  object.id = id;
}

extension TcsEntryByIndex on IsarCollection<TcsEntry> {
  Future<TcsEntry?> getByTcsNumber(String tcsNumber) {
    return getByIndex(r'tcsNumber', [tcsNumber]);
  }

  TcsEntry? getByTcsNumberSync(String tcsNumber) {
    return getByIndexSync(r'tcsNumber', [tcsNumber]);
  }

  Future<bool> deleteByTcsNumber(String tcsNumber) {
    return deleteByIndex(r'tcsNumber', [tcsNumber]);
  }

  bool deleteByTcsNumberSync(String tcsNumber) {
    return deleteByIndexSync(r'tcsNumber', [tcsNumber]);
  }

  Future<List<TcsEntry?>> getAllByTcsNumber(List<String> tcsNumberValues) {
    final values = tcsNumberValues.map((e) => [e]).toList();
    return getAllByIndex(r'tcsNumber', values);
  }

  List<TcsEntry?> getAllByTcsNumberSync(List<String> tcsNumberValues) {
    final values = tcsNumberValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'tcsNumber', values);
  }

  Future<int> deleteAllByTcsNumber(List<String> tcsNumberValues) {
    final values = tcsNumberValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'tcsNumber', values);
  }

  int deleteAllByTcsNumberSync(List<String> tcsNumberValues) {
    final values = tcsNumberValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'tcsNumber', values);
  }

  Future<Id> putByTcsNumber(TcsEntry object) {
    return putByIndex(r'tcsNumber', object);
  }

  Id putByTcsNumberSync(TcsEntry object, {bool saveLinks = true}) {
    return putByIndexSync(r'tcsNumber', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByTcsNumber(List<TcsEntry> objects) {
    return putAllByIndex(r'tcsNumber', objects);
  }

  List<Id> putAllByTcsNumberSync(List<TcsEntry> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'tcsNumber', objects, saveLinks: saveLinks);
  }
}

extension TcsEntryQueryWhereSort on QueryBuilder<TcsEntry, TcsEntry, QWhere> {
  QueryBuilder<TcsEntry, TcsEntry, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TcsEntryQueryWhere on QueryBuilder<TcsEntry, TcsEntry, QWhereClause> {
  QueryBuilder<TcsEntry, TcsEntry, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterWhereClause> idBetween(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterWhereClause> tcsNumberEqualTo(
      String tcsNumber) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'tcsNumber',
        value: [tcsNumber],
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterWhereClause> tcsNumberNotEqualTo(
      String tcsNumber) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tcsNumber',
              lower: [],
              upper: [tcsNumber],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tcsNumber',
              lower: [tcsNumber],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tcsNumber',
              lower: [tcsNumber],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tcsNumber',
              lower: [],
              upper: [tcsNumber],
              includeUpper: false,
            ));
      }
    });
  }
}

extension TcsEntryQueryFilter
    on QueryBuilder<TcsEntry, TcsEntry, QFilterCondition> {
  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyGstinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyGstin',
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition>
      partyGstinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyGstin',
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyGstinEqualTo(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyGstinGreaterThan(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyGstinLessThan(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyGstinBetween(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyGstinStartsWith(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyGstinEndsWith(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyGstinContains(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyGstinMatches(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyGstinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyGstin',
        value: '',
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition>
      partyGstinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyGstin',
        value: '',
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyId',
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyId',
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyId',
        value: value,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyIdGreaterThan(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyIdLessThan(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyIdBetween(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyNameEqualTo(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyNameGreaterThan(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyNameLessThan(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyNameBetween(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyNameStartsWith(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyNameEndsWith(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyNameContains(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyNameMatches(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> partyNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyName',
        value: '',
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition>
      partyNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyName',
        value: '',
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> remarksIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'remarks',
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> remarksIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'remarks',
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> remarksEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> remarksGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'remarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> remarksLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'remarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> remarksBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'remarks',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> remarksStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'remarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> remarksEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'remarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> remarksContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'remarks',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> remarksMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'remarks',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> remarksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remarks',
        value: '',
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> remarksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'remarks',
        value: '',
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> taxableAmountEqualTo(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition>
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> taxableAmountLessThan(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> taxableAmountBetween(
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

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tcsAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tcsAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tcsAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tcsAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tcsDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tcsDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tcsDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tcsDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tcsNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tcsNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tcsNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tcsNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tcsNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tcsNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tcsNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tcsNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tcsNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition>
      tcsNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tcsNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsRateEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tcsRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsRateGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tcsRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsRateLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tcsRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsRateBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tcsRate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsSectionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tcsSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsSectionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tcsSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsSectionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tcsSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsSectionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tcsSection',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsSectionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tcsSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsSectionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tcsSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsSectionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tcsSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsSectionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tcsSection',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition> tcsSectionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tcsSection',
        value: '',
      ));
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterFilterCondition>
      tcsSectionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tcsSection',
        value: '',
      ));
    });
  }
}

extension TcsEntryQueryObject
    on QueryBuilder<TcsEntry, TcsEntry, QFilterCondition> {}

extension TcsEntryQueryLinks
    on QueryBuilder<TcsEntry, TcsEntry, QFilterCondition> {}

extension TcsEntryQuerySortBy on QueryBuilder<TcsEntry, TcsEntry, QSortBy> {
  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByPartyGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByPartyGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByPartyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByPartyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByPartyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByRemarks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remarks', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByRemarksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remarks', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByTaxableAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxableAmount', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByTaxableAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxableAmount', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByTcsAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsAmount', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByTcsAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsAmount', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByTcsDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsDate', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByTcsDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsDate', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByTcsNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsNumber', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByTcsNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsNumber', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByTcsRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsRate', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByTcsRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsRate', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByTcsSection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsSection', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> sortByTcsSectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsSection', Sort.desc);
    });
  }
}

extension TcsEntryQuerySortThenBy
    on QueryBuilder<TcsEntry, TcsEntry, QSortThenBy> {
  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByPartyGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByPartyGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByPartyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByPartyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByPartyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByRemarks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remarks', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByRemarksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remarks', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByTaxableAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxableAmount', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByTaxableAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxableAmount', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByTcsAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsAmount', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByTcsAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsAmount', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByTcsDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsDate', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByTcsDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsDate', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByTcsNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsNumber', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByTcsNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsNumber', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByTcsRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsRate', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByTcsRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsRate', Sort.desc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByTcsSection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsSection', Sort.asc);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QAfterSortBy> thenByTcsSectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tcsSection', Sort.desc);
    });
  }
}

extension TcsEntryQueryWhereDistinct
    on QueryBuilder<TcsEntry, TcsEntry, QDistinct> {
  QueryBuilder<TcsEntry, TcsEntry, QDistinct> distinctByPartyGstin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyGstin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QDistinct> distinctByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyId');
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QDistinct> distinctByPartyName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QDistinct> distinctByRemarks(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'remarks', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QDistinct> distinctByTaxableAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxableAmount');
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QDistinct> distinctByTcsAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tcsAmount');
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QDistinct> distinctByTcsDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tcsDate');
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QDistinct> distinctByTcsNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tcsNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QDistinct> distinctByTcsRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tcsRate');
    });
  }

  QueryBuilder<TcsEntry, TcsEntry, QDistinct> distinctByTcsSection(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tcsSection', caseSensitive: caseSensitive);
    });
  }
}

extension TcsEntryQueryProperty
    on QueryBuilder<TcsEntry, TcsEntry, QQueryProperty> {
  QueryBuilder<TcsEntry, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TcsEntry, String?, QQueryOperations> partyGstinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyGstin');
    });
  }

  QueryBuilder<TcsEntry, int?, QQueryOperations> partyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyId');
    });
  }

  QueryBuilder<TcsEntry, String, QQueryOperations> partyNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyName');
    });
  }

  QueryBuilder<TcsEntry, String?, QQueryOperations> remarksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'remarks');
    });
  }

  QueryBuilder<TcsEntry, double, QQueryOperations> taxableAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxableAmount');
    });
  }

  QueryBuilder<TcsEntry, double, QQueryOperations> tcsAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tcsAmount');
    });
  }

  QueryBuilder<TcsEntry, DateTime, QQueryOperations> tcsDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tcsDate');
    });
  }

  QueryBuilder<TcsEntry, String, QQueryOperations> tcsNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tcsNumber');
    });
  }

  QueryBuilder<TcsEntry, double, QQueryOperations> tcsRateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tcsRate');
    });
  }

  QueryBuilder<TcsEntry, String, QQueryOperations> tcsSectionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tcsSection');
    });
  }
}
