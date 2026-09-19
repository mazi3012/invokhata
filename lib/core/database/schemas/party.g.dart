// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'party.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPartyCollection on Isar {
  IsarCollection<Party> get partys => this.collection();
}

const PartySchema = CollectionSchema(
  name: r'Party',
  id: -9169014745120495231,
  properties: {
    r'address': PropertySchema(
      id: 0,
      name: r'address',
      type: IsarType.string,
    ),
    r'balanceAsOfDate': PropertySchema(
      id: 1,
      name: r'balanceAsOfDate',
      type: IsarType.dateTime,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'creditLimit': PropertySchema(
      id: 3,
      name: r'creditLimit',
      type: IsarType.double,
    ),
    r'email': PropertySchema(
      id: 4,
      name: r'email',
      type: IsarType.string,
    ),
    r'gstType': PropertySchema(
      id: 5,
      name: r'gstType',
      type: IsarType.string,
    ),
    r'gstin': PropertySchema(
      id: 6,
      name: r'gstin',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 7,
      name: r'name',
      type: IsarType.string,
    ),
    r'outstandingBalance': PropertySchema(
      id: 8,
      name: r'outstandingBalance',
      type: IsarType.double,
    ),
    r'partyType': PropertySchema(
      id: 9,
      name: r'partyType',
      type: IsarType.string,
    ),
    r'phoneNumber': PropertySchema(
      id: 10,
      name: r'phoneNumber',
      type: IsarType.string,
    ),
    r'state': PropertySchema(
      id: 11,
      name: r'state',
      type: IsarType.string,
    )
  },
  estimateSize: _partyEstimateSize,
  serialize: _partySerialize,
  deserialize: _partyDeserialize,
  deserializeProp: _partyDeserializeProp,
  idName: r'id',
  indexes: {
    r'name': IndexSchema(
      id: 879695947855722453,
      name: r'name',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'name',
          type: IndexType.value,
          caseSensitive: true,
        )
      ],
    ),
    r'phoneNumber': IndexSchema(
      id: 5414128966131364535,
      name: r'phoneNumber',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'phoneNumber',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _partyGetId,
  getLinks: _partyGetLinks,
  attach: _partyAttach,
  version: '3.1.0+1',
);

int _partyEstimateSize(
  Party object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.address;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.gstType.length * 3;
  {
    final value = object.gstin;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.partyType.length * 3;
  {
    final value = object.phoneNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.state;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _partySerialize(
  Party object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.address);
  writer.writeDateTime(offsets[1], object.balanceAsOfDate);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeDouble(offsets[3], object.creditLimit);
  writer.writeString(offsets[4], object.email);
  writer.writeString(offsets[5], object.gstType);
  writer.writeString(offsets[6], object.gstin);
  writer.writeString(offsets[7], object.name);
  writer.writeDouble(offsets[8], object.outstandingBalance);
  writer.writeString(offsets[9], object.partyType);
  writer.writeString(offsets[10], object.phoneNumber);
  writer.writeString(offsets[11], object.state);
}

Party _partyDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Party();
  object.address = reader.readStringOrNull(offsets[0]);
  object.balanceAsOfDate = reader.readDateTimeOrNull(offsets[1]);
  object.createdAt = reader.readDateTime(offsets[2]);
  object.creditLimit = reader.readDouble(offsets[3]);
  object.email = reader.readStringOrNull(offsets[4]);
  object.gstType = reader.readString(offsets[5]);
  object.gstin = reader.readStringOrNull(offsets[6]);
  object.id = id;
  object.name = reader.readString(offsets[7]);
  object.outstandingBalance = reader.readDouble(offsets[8]);
  object.partyType = reader.readString(offsets[9]);
  object.phoneNumber = reader.readStringOrNull(offsets[10]);
  object.state = reader.readStringOrNull(offsets[11]);
  return object;
}

P _partyDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _partyGetId(Party object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _partyGetLinks(Party object) {
  return [];
}

void _partyAttach(IsarCollection<dynamic> col, Id id, Party object) {
  object.id = id;
}

extension PartyQueryWhereSort on QueryBuilder<Party, Party, QWhere> {
  QueryBuilder<Party, Party, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<Party, Party, QAfterWhere> anyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        const IndexWhereClause.any(indexName: r'name'),
      );
    });
  }
}

extension PartyQueryWhere on QueryBuilder<Party, Party, QWhereClause> {
  QueryBuilder<Party, Party, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Party, Party, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Party, Party, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Party, Party, QAfterWhereClause> idBetween(
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

  QueryBuilder<Party, Party, QAfterWhereClause> nameEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [name],
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterWhereClause> nameNotEqualTo(String name) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [name],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'name',
              lower: [],
              upper: [name],
              includeUpper: false,
            ));
      }
    });
  }

  QueryBuilder<Party, Party, QAfterWhereClause> nameGreaterThan(
    String name, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [name],
        includeLower: include,
        upper: [],
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterWhereClause> nameLessThan(
    String name, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [],
        upper: [name],
        includeUpper: include,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterWhereClause> nameBetween(
    String lowerName,
    String upperName, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [lowerName],
        includeLower: includeLower,
        upper: [upperName],
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterWhereClause> nameStartsWith(
      String NamePrefix) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'name',
        lower: [NamePrefix],
        upper: ['$NamePrefix\u{FFFFF}'],
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterWhereClause> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'name',
        value: [''],
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterWhereClause> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'name',
              upper: [''],
            ))
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'name',
              lower: [''],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.greaterThan(
              indexName: r'name',
              lower: [''],
            ))
            .addWhereClause(IndexWhereClause.lessThan(
              indexName: r'name',
              upper: [''],
            ));
      }
    });
  }

  QueryBuilder<Party, Party, QAfterWhereClause> phoneNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'phoneNumber',
        value: [null],
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterWhereClause> phoneNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'phoneNumber',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterWhereClause> phoneNumberEqualTo(
      String? phoneNumber) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'phoneNumber',
        value: [phoneNumber],
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterWhereClause> phoneNumberNotEqualTo(
      String? phoneNumber) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'phoneNumber',
              lower: [],
              upper: [phoneNumber],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'phoneNumber',
              lower: [phoneNumber],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'phoneNumber',
              lower: [phoneNumber],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'phoneNumber',
              lower: [],
              upper: [phoneNumber],
              includeUpper: false,
            ));
      }
    });
  }
}

extension PartyQueryFilter on QueryBuilder<Party, Party, QFilterCondition> {
  QueryBuilder<Party, Party, QAfterFilterCondition> addressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> addressIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'address',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> addressEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> addressGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> addressLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> addressBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'address',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> addressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> addressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> addressContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'address',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> addressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'address',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> addressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> addressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'address',
        value: '',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> balanceAsOfDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'balanceAsOfDate',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> balanceAsOfDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'balanceAsOfDate',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> balanceAsOfDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'balanceAsOfDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> balanceAsOfDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'balanceAsOfDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> balanceAsOfDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'balanceAsOfDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> balanceAsOfDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'balanceAsOfDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> createdAtGreaterThan(
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

  QueryBuilder<Party, Party, QAfterFilterCondition> createdAtLessThan(
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

  QueryBuilder<Party, Party, QAfterFilterCondition> createdAtBetween(
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

  QueryBuilder<Party, Party, QAfterFilterCondition> creditLimitEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'creditLimit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> creditLimitGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'creditLimit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> creditLimitLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'creditLimit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> creditLimitBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'creditLimit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> emailContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> emailMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> gstTypeEqualTo(
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

  QueryBuilder<Party, Party, QAfterFilterCondition> gstTypeGreaterThan(
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

  QueryBuilder<Party, Party, QAfterFilterCondition> gstTypeLessThan(
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

  QueryBuilder<Party, Party, QAfterFilterCondition> gstTypeBetween(
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

  QueryBuilder<Party, Party, QAfterFilterCondition> gstTypeStartsWith(
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

  QueryBuilder<Party, Party, QAfterFilterCondition> gstTypeEndsWith(
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

  QueryBuilder<Party, Party, QAfterFilterCondition> gstTypeContains(
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

  QueryBuilder<Party, Party, QAfterFilterCondition> gstTypeMatches(
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

  QueryBuilder<Party, Party, QAfterFilterCondition> gstTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gstType',
        value: '',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> gstTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gstType',
        value: '',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> gstinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gstin',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> gstinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gstin',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> gstinEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> gstinGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> gstinLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> gstinBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gstin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> gstinStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> gstinEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> gstinContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> gstinMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gstin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> gstinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gstin',
        value: '',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> gstinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gstin',
        value: '',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Party, Party, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Party, Party, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Party, Party, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> outstandingBalanceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'outstandingBalance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition>
      outstandingBalanceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'outstandingBalance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> outstandingBalanceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'outstandingBalance',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> outstandingBalanceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'outstandingBalance',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> partyTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> partyTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'partyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> partyTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'partyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> partyTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'partyType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> partyTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'partyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> partyTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'partyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> partyTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'partyType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> partyTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'partyType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> partyTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyType',
        value: '',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> partyTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyType',
        value: '',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> phoneNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> phoneNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'phoneNumber',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> phoneNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> phoneNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> phoneNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> phoneNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'phoneNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> phoneNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> phoneNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> phoneNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'phoneNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> phoneNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'phoneNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> phoneNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> phoneNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'phoneNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> stateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'state',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> stateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'state',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> stateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> stateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> stateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> stateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'state',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> stateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> stateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> stateContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'state',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> stateMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'state',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> stateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'state',
        value: '',
      ));
    });
  }

  QueryBuilder<Party, Party, QAfterFilterCondition> stateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'state',
        value: '',
      ));
    });
  }
}

extension PartyQueryObject on QueryBuilder<Party, Party, QFilterCondition> {}

extension PartyQueryLinks on QueryBuilder<Party, Party, QFilterCondition> {}

extension PartyQuerySortBy on QueryBuilder<Party, Party, QSortBy> {
  QueryBuilder<Party, Party, QAfterSortBy> sortByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByBalanceAsOfDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'balanceAsOfDate', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByBalanceAsOfDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'balanceAsOfDate', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByCreditLimit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creditLimit', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByCreditLimitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creditLimit', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByGstType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gstType', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByGstTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gstType', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gstin', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gstin', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByOutstandingBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outstandingBalance', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByOutstandingBalanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outstandingBalance', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByPartyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyType', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByPartyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyType', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> sortByStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.desc);
    });
  }
}

extension PartyQuerySortThenBy on QueryBuilder<Party, Party, QSortThenBy> {
  QueryBuilder<Party, Party, QAfterSortBy> thenByAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'address', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByBalanceAsOfDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'balanceAsOfDate', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByBalanceAsOfDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'balanceAsOfDate', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByCreditLimit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creditLimit', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByCreditLimitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'creditLimit', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByGstType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gstType', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByGstTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gstType', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gstin', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gstin', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByOutstandingBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outstandingBalance', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByOutstandingBalanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'outstandingBalance', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByPartyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyType', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByPartyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyType', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByPhoneNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByPhoneNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'phoneNumber', Sort.desc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.asc);
    });
  }

  QueryBuilder<Party, Party, QAfterSortBy> thenByStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'state', Sort.desc);
    });
  }
}

extension PartyQueryWhereDistinct on QueryBuilder<Party, Party, QDistinct> {
  QueryBuilder<Party, Party, QDistinct> distinctByAddress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'address', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Party, Party, QDistinct> distinctByBalanceAsOfDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'balanceAsOfDate');
    });
  }

  QueryBuilder<Party, Party, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Party, Party, QDistinct> distinctByCreditLimit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'creditLimit');
    });
  }

  QueryBuilder<Party, Party, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Party, Party, QDistinct> distinctByGstType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gstType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Party, Party, QDistinct> distinctByGstin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gstin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Party, Party, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Party, Party, QDistinct> distinctByOutstandingBalance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'outstandingBalance');
    });
  }

  QueryBuilder<Party, Party, QDistinct> distinctByPartyType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Party, Party, QDistinct> distinctByPhoneNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'phoneNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Party, Party, QDistinct> distinctByState(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'state', caseSensitive: caseSensitive);
    });
  }
}

extension PartyQueryProperty on QueryBuilder<Party, Party, QQueryProperty> {
  QueryBuilder<Party, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Party, String?, QQueryOperations> addressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'address');
    });
  }

  QueryBuilder<Party, DateTime?, QQueryOperations> balanceAsOfDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'balanceAsOfDate');
    });
  }

  QueryBuilder<Party, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Party, double, QQueryOperations> creditLimitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'creditLimit');
    });
  }

  QueryBuilder<Party, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<Party, String, QQueryOperations> gstTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gstType');
    });
  }

  QueryBuilder<Party, String?, QQueryOperations> gstinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gstin');
    });
  }

  QueryBuilder<Party, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Party, double, QQueryOperations> outstandingBalanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'outstandingBalance');
    });
  }

  QueryBuilder<Party, String, QQueryOperations> partyTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyType');
    });
  }

  QueryBuilder<Party, String?, QQueryOperations> phoneNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'phoneNumber');
    });
  }

  QueryBuilder<Party, String?, QQueryOperations> stateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'state');
    });
  }
}
