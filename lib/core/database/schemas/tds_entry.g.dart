// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tds_entry.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTdsEntryCollection on Isar {
  IsarCollection<TdsEntry> get tdsEntrys => this.collection();
}

const TdsEntrySchema = CollectionSchema(
  name: r'TdsEntry',
  id: -2931909091544609772,
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
    r'tdsAmount': PropertySchema(
      id: 5,
      name: r'tdsAmount',
      type: IsarType.double,
    ),
    r'tdsDate': PropertySchema(
      id: 6,
      name: r'tdsDate',
      type: IsarType.dateTime,
    ),
    r'tdsNumber': PropertySchema(
      id: 7,
      name: r'tdsNumber',
      type: IsarType.string,
    ),
    r'tdsRate': PropertySchema(
      id: 8,
      name: r'tdsRate',
      type: IsarType.double,
    ),
    r'tdsSection': PropertySchema(
      id: 9,
      name: r'tdsSection',
      type: IsarType.string,
    )
  },
  estimateSize: _tdsEntryEstimateSize,
  serialize: _tdsEntrySerialize,
  deserialize: _tdsEntryDeserialize,
  deserializeProp: _tdsEntryDeserializeProp,
  idName: r'id',
  indexes: {
    r'tdsNumber': IndexSchema(
      id: -2329203507856414174,
      name: r'tdsNumber',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'tdsNumber',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _tdsEntryGetId,
  getLinks: _tdsEntryGetLinks,
  attach: _tdsEntryAttach,
  version: '3.1.0+1',
);

int _tdsEntryEstimateSize(
  TdsEntry object,
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
  bytesCount += 3 + object.tdsNumber.length * 3;
  bytesCount += 3 + object.tdsSection.length * 3;
  return bytesCount;
}

void _tdsEntrySerialize(
  TdsEntry object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.partyGstin);
  writer.writeLong(offsets[1], object.partyId);
  writer.writeString(offsets[2], object.partyName);
  writer.writeString(offsets[3], object.remarks);
  writer.writeDouble(offsets[4], object.taxableAmount);
  writer.writeDouble(offsets[5], object.tdsAmount);
  writer.writeDateTime(offsets[6], object.tdsDate);
  writer.writeString(offsets[7], object.tdsNumber);
  writer.writeDouble(offsets[8], object.tdsRate);
  writer.writeString(offsets[9], object.tdsSection);
}

TdsEntry _tdsEntryDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = TdsEntry();
  object.id = id;
  object.partyGstin = reader.readStringOrNull(offsets[0]);
  object.partyId = reader.readLongOrNull(offsets[1]);
  object.partyName = reader.readString(offsets[2]);
  object.remarks = reader.readStringOrNull(offsets[3]);
  object.taxableAmount = reader.readDouble(offsets[4]);
  object.tdsAmount = reader.readDouble(offsets[5]);
  object.tdsDate = reader.readDateTime(offsets[6]);
  object.tdsNumber = reader.readString(offsets[7]);
  object.tdsRate = reader.readDouble(offsets[8]);
  object.tdsSection = reader.readString(offsets[9]);
  return object;
}

P _tdsEntryDeserializeProp<P>(
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

Id _tdsEntryGetId(TdsEntry object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _tdsEntryGetLinks(TdsEntry object) {
  return [];
}

void _tdsEntryAttach(IsarCollection<dynamic> col, Id id, TdsEntry object) {
  object.id = id;
}

extension TdsEntryByIndex on IsarCollection<TdsEntry> {
  Future<TdsEntry?> getByTdsNumber(String tdsNumber) {
    return getByIndex(r'tdsNumber', [tdsNumber]);
  }

  TdsEntry? getByTdsNumberSync(String tdsNumber) {
    return getByIndexSync(r'tdsNumber', [tdsNumber]);
  }

  Future<bool> deleteByTdsNumber(String tdsNumber) {
    return deleteByIndex(r'tdsNumber', [tdsNumber]);
  }

  bool deleteByTdsNumberSync(String tdsNumber) {
    return deleteByIndexSync(r'tdsNumber', [tdsNumber]);
  }

  Future<List<TdsEntry?>> getAllByTdsNumber(List<String> tdsNumberValues) {
    final values = tdsNumberValues.map((e) => [e]).toList();
    return getAllByIndex(r'tdsNumber', values);
  }

  List<TdsEntry?> getAllByTdsNumberSync(List<String> tdsNumberValues) {
    final values = tdsNumberValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'tdsNumber', values);
  }

  Future<int> deleteAllByTdsNumber(List<String> tdsNumberValues) {
    final values = tdsNumberValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'tdsNumber', values);
  }

  int deleteAllByTdsNumberSync(List<String> tdsNumberValues) {
    final values = tdsNumberValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'tdsNumber', values);
  }

  Future<Id> putByTdsNumber(TdsEntry object) {
    return putByIndex(r'tdsNumber', object);
  }

  Id putByTdsNumberSync(TdsEntry object, {bool saveLinks = true}) {
    return putByIndexSync(r'tdsNumber', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByTdsNumber(List<TdsEntry> objects) {
    return putAllByIndex(r'tdsNumber', objects);
  }

  List<Id> putAllByTdsNumberSync(List<TdsEntry> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'tdsNumber', objects, saveLinks: saveLinks);
  }
}

extension TdsEntryQueryWhereSort on QueryBuilder<TdsEntry, TdsEntry, QWhere> {
  QueryBuilder<TdsEntry, TdsEntry, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TdsEntryQueryWhere on QueryBuilder<TdsEntry, TdsEntry, QWhereClause> {
  QueryBuilder<TdsEntry, TdsEntry, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterWhereClause> idBetween(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterWhereClause> tdsNumberEqualTo(
      String tdsNumber) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'tdsNumber',
        value: [tdsNumber],
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterWhereClause> tdsNumberNotEqualTo(
      String tdsNumber) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tdsNumber',
              lower: [],
              upper: [tdsNumber],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tdsNumber',
              lower: [tdsNumber],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tdsNumber',
              lower: [tdsNumber],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'tdsNumber',
              lower: [],
              upper: [tdsNumber],
              includeUpper: false,
            ));
      }
    });
  }
}

extension TdsEntryQueryFilter
    on QueryBuilder<TdsEntry, TdsEntry, QFilterCondition> {
  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> idBetween(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyGstinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyGstin',
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition>
      partyGstinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyGstin',
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyGstinEqualTo(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyGstinGreaterThan(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyGstinLessThan(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyGstinBetween(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyGstinStartsWith(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyGstinEndsWith(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyGstinContains(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyGstinMatches(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyGstinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyGstin',
        value: '',
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition>
      partyGstinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyGstin',
        value: '',
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyId',
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyId',
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyId',
        value: value,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyIdGreaterThan(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyIdLessThan(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyIdBetween(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyNameEqualTo(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyNameGreaterThan(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyNameLessThan(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyNameBetween(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyNameStartsWith(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyNameEndsWith(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyNameContains(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyNameMatches(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> partyNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyName',
        value: '',
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition>
      partyNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyName',
        value: '',
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> remarksIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'remarks',
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> remarksIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'remarks',
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> remarksEqualTo(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> remarksGreaterThan(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> remarksLessThan(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> remarksBetween(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> remarksStartsWith(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> remarksEndsWith(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> remarksContains(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> remarksMatches(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> remarksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remarks',
        value: '',
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> remarksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'remarks',
        value: '',
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> taxableAmountEqualTo(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition>
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> taxableAmountLessThan(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> taxableAmountBetween(
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

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tdsAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tdsAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tdsAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tdsAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tdsDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tdsDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tdsDate',
        value: value,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tdsDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tdsNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tdsNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tdsNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tdsNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tdsNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tdsNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tdsNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tdsNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tdsNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition>
      tdsNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tdsNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsRateEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tdsRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsRateGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tdsRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsRateLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tdsRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsRateBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tdsRate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsSectionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tdsSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsSectionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tdsSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsSectionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tdsSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsSectionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tdsSection',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsSectionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tdsSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsSectionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tdsSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsSectionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tdsSection',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsSectionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tdsSection',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition> tdsSectionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tdsSection',
        value: '',
      ));
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterFilterCondition>
      tdsSectionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tdsSection',
        value: '',
      ));
    });
  }
}

extension TdsEntryQueryObject
    on QueryBuilder<TdsEntry, TdsEntry, QFilterCondition> {}

extension TdsEntryQueryLinks
    on QueryBuilder<TdsEntry, TdsEntry, QFilterCondition> {}

extension TdsEntryQuerySortBy on QueryBuilder<TdsEntry, TdsEntry, QSortBy> {
  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByPartyGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByPartyGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByPartyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByPartyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByPartyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByRemarks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remarks', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByRemarksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remarks', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByTaxableAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxableAmount', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByTaxableAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxableAmount', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByTdsAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsAmount', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByTdsAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsAmount', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByTdsDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsDate', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByTdsDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsDate', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByTdsNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsNumber', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByTdsNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsNumber', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByTdsRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsRate', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByTdsRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsRate', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByTdsSection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsSection', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> sortByTdsSectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsSection', Sort.desc);
    });
  }
}

extension TdsEntryQuerySortThenBy
    on QueryBuilder<TdsEntry, TdsEntry, QSortThenBy> {
  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByPartyGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByPartyGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByPartyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByPartyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByPartyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByRemarks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remarks', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByRemarksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remarks', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByTaxableAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxableAmount', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByTaxableAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxableAmount', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByTdsAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsAmount', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByTdsAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsAmount', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByTdsDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsDate', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByTdsDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsDate', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByTdsNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsNumber', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByTdsNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsNumber', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByTdsRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsRate', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByTdsRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsRate', Sort.desc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByTdsSection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsSection', Sort.asc);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QAfterSortBy> thenByTdsSectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tdsSection', Sort.desc);
    });
  }
}

extension TdsEntryQueryWhereDistinct
    on QueryBuilder<TdsEntry, TdsEntry, QDistinct> {
  QueryBuilder<TdsEntry, TdsEntry, QDistinct> distinctByPartyGstin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyGstin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QDistinct> distinctByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyId');
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QDistinct> distinctByPartyName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QDistinct> distinctByRemarks(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'remarks', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QDistinct> distinctByTaxableAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxableAmount');
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QDistinct> distinctByTdsAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tdsAmount');
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QDistinct> distinctByTdsDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tdsDate');
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QDistinct> distinctByTdsNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tdsNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QDistinct> distinctByTdsRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tdsRate');
    });
  }

  QueryBuilder<TdsEntry, TdsEntry, QDistinct> distinctByTdsSection(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tdsSection', caseSensitive: caseSensitive);
    });
  }
}

extension TdsEntryQueryProperty
    on QueryBuilder<TdsEntry, TdsEntry, QQueryProperty> {
  QueryBuilder<TdsEntry, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<TdsEntry, String?, QQueryOperations> partyGstinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyGstin');
    });
  }

  QueryBuilder<TdsEntry, int?, QQueryOperations> partyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyId');
    });
  }

  QueryBuilder<TdsEntry, String, QQueryOperations> partyNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyName');
    });
  }

  QueryBuilder<TdsEntry, String?, QQueryOperations> remarksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'remarks');
    });
  }

  QueryBuilder<TdsEntry, double, QQueryOperations> taxableAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxableAmount');
    });
  }

  QueryBuilder<TdsEntry, double, QQueryOperations> tdsAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tdsAmount');
    });
  }

  QueryBuilder<TdsEntry, DateTime, QQueryOperations> tdsDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tdsDate');
    });
  }

  QueryBuilder<TdsEntry, String, QQueryOperations> tdsNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tdsNumber');
    });
  }

  QueryBuilder<TdsEntry, double, QQueryOperations> tdsRateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tdsRate');
    });
  }

  QueryBuilder<TdsEntry, String, QQueryOperations> tdsSectionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tdsSection');
    });
  }
}
