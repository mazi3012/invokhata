// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'einvoice.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEInvoiceCollection on Isar {
  IsarCollection<EInvoice> get eInvoices => this.collection();
}

const EInvoiceSchema = CollectionSchema(
  name: r'EInvoice',
  id: -5442807190607174526,
  properties: {
    r'ackDate': PropertySchema(
      id: 0,
      name: r'ackDate',
      type: IsarType.dateTime,
    ),
    r'ackNumber': PropertySchema(
      id: 1,
      name: r'ackNumber',
      type: IsarType.string,
    ),
    r'cancelledDate': PropertySchema(
      id: 2,
      name: r'cancelledDate',
      type: IsarType.dateTime,
    ),
    r'cancelledReason': PropertySchema(
      id: 3,
      name: r'cancelledReason',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 4,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'errorCode': PropertySchema(
      id: 5,
      name: r'errorCode',
      type: IsarType.string,
    ),
    r'errorMessage': PropertySchema(
      id: 6,
      name: r'errorMessage',
      type: IsarType.string,
    ),
    r'invoiceDate': PropertySchema(
      id: 7,
      name: r'invoiceDate',
      type: IsarType.dateTime,
    ),
    r'invoiceId': PropertySchema(
      id: 8,
      name: r'invoiceId',
      type: IsarType.long,
    ),
    r'invoiceNumber': PropertySchema(
      id: 9,
      name: r'invoiceNumber',
      type: IsarType.string,
    ),
    r'irn': PropertySchema(
      id: 10,
      name: r'irn',
      type: IsarType.string,
    ),
    r'isRequired': PropertySchema(
      id: 11,
      name: r'isRequired',
      type: IsarType.bool,
    ),
    r'qrCodeData': PropertySchema(
      id: 12,
      name: r'qrCodeData',
      type: IsarType.string,
    ),
    r'signedInvoiceJson': PropertySchema(
      id: 13,
      name: r'signedInvoiceJson',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 14,
      name: r'status',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 15,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _eInvoiceEstimateSize,
  serialize: _eInvoiceSerialize,
  deserialize: _eInvoiceDeserialize,
  deserializeProp: _eInvoiceDeserializeProp,
  idName: r'id',
  indexes: {
    r'irn': IndexSchema(
      id: 5088128618537130957,
      name: r'irn',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'irn',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _eInvoiceGetId,
  getLinks: _eInvoiceGetLinks,
  attach: _eInvoiceAttach,
  version: '3.1.0+1',
);

int _eInvoiceEstimateSize(
  EInvoice object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.ackNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cancelledReason;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.errorCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.errorMessage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.invoiceNumber.length * 3;
  {
    final value = object.irn;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.qrCodeData;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.signedInvoiceJson;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.status.length * 3;
  return bytesCount;
}

void _eInvoiceSerialize(
  EInvoice object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.ackDate);
  writer.writeString(offsets[1], object.ackNumber);
  writer.writeDateTime(offsets[2], object.cancelledDate);
  writer.writeString(offsets[3], object.cancelledReason);
  writer.writeDateTime(offsets[4], object.createdAt);
  writer.writeString(offsets[5], object.errorCode);
  writer.writeString(offsets[6], object.errorMessage);
  writer.writeDateTime(offsets[7], object.invoiceDate);
  writer.writeLong(offsets[8], object.invoiceId);
  writer.writeString(offsets[9], object.invoiceNumber);
  writer.writeString(offsets[10], object.irn);
  writer.writeBool(offsets[11], object.isRequired);
  writer.writeString(offsets[12], object.qrCodeData);
  writer.writeString(offsets[13], object.signedInvoiceJson);
  writer.writeString(offsets[14], object.status);
  writer.writeDateTime(offsets[15], object.updatedAt);
}

EInvoice _eInvoiceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EInvoice();
  object.ackDate = reader.readDateTimeOrNull(offsets[0]);
  object.ackNumber = reader.readStringOrNull(offsets[1]);
  object.cancelledDate = reader.readDateTimeOrNull(offsets[2]);
  object.cancelledReason = reader.readStringOrNull(offsets[3]);
  object.createdAt = reader.readDateTime(offsets[4]);
  object.errorCode = reader.readStringOrNull(offsets[5]);
  object.errorMessage = reader.readStringOrNull(offsets[6]);
  object.id = id;
  object.invoiceDate = reader.readDateTime(offsets[7]);
  object.invoiceId = reader.readLongOrNull(offsets[8]);
  object.invoiceNumber = reader.readString(offsets[9]);
  object.irn = reader.readStringOrNull(offsets[10]);
  object.isRequired = reader.readBool(offsets[11]);
  object.qrCodeData = reader.readStringOrNull(offsets[12]);
  object.signedInvoiceJson = reader.readStringOrNull(offsets[13]);
  object.status = reader.readString(offsets[14]);
  object.updatedAt = reader.readDateTimeOrNull(offsets[15]);
  return object;
}

P _eInvoiceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readDateTime(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readBool(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _eInvoiceGetId(EInvoice object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _eInvoiceGetLinks(EInvoice object) {
  return [];
}

void _eInvoiceAttach(IsarCollection<dynamic> col, Id id, EInvoice object) {
  object.id = id;
}

extension EInvoiceByIndex on IsarCollection<EInvoice> {
  Future<EInvoice?> getByIrn(String? irn) {
    return getByIndex(r'irn', [irn]);
  }

  EInvoice? getByIrnSync(String? irn) {
    return getByIndexSync(r'irn', [irn]);
  }

  Future<bool> deleteByIrn(String? irn) {
    return deleteByIndex(r'irn', [irn]);
  }

  bool deleteByIrnSync(String? irn) {
    return deleteByIndexSync(r'irn', [irn]);
  }

  Future<List<EInvoice?>> getAllByIrn(List<String?> irnValues) {
    final values = irnValues.map((e) => [e]).toList();
    return getAllByIndex(r'irn', values);
  }

  List<EInvoice?> getAllByIrnSync(List<String?> irnValues) {
    final values = irnValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'irn', values);
  }

  Future<int> deleteAllByIrn(List<String?> irnValues) {
    final values = irnValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'irn', values);
  }

  int deleteAllByIrnSync(List<String?> irnValues) {
    final values = irnValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'irn', values);
  }

  Future<Id> putByIrn(EInvoice object) {
    return putByIndex(r'irn', object);
  }

  Id putByIrnSync(EInvoice object, {bool saveLinks = true}) {
    return putByIndexSync(r'irn', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByIrn(List<EInvoice> objects) {
    return putAllByIndex(r'irn', objects);
  }

  List<Id> putAllByIrnSync(List<EInvoice> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'irn', objects, saveLinks: saveLinks);
  }
}

extension EInvoiceQueryWhereSort on QueryBuilder<EInvoice, EInvoice, QWhere> {
  QueryBuilder<EInvoice, EInvoice, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EInvoiceQueryWhere on QueryBuilder<EInvoice, EInvoice, QWhereClause> {
  QueryBuilder<EInvoice, EInvoice, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<EInvoice, EInvoice, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterWhereClause> idBetween(
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

  QueryBuilder<EInvoice, EInvoice, QAfterWhereClause> irnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'irn',
        value: [null],
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterWhereClause> irnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'irn',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterWhereClause> irnEqualTo(String? irn) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'irn',
        value: [irn],
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterWhereClause> irnNotEqualTo(
      String? irn) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'irn',
              lower: [],
              upper: [irn],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'irn',
              lower: [irn],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'irn',
              lower: [irn],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'irn',
              lower: [],
              upper: [irn],
              includeUpper: false,
            ));
      }
    });
  }
}

extension EInvoiceQueryFilter
    on QueryBuilder<EInvoice, EInvoice, QFilterCondition> {
  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ackDate',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ackDate',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ackDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ackDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ackDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ackDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ackNumber',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ackNumber',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ackNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'ackNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'ackNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'ackNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'ackNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'ackNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ackNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'ackNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> ackNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ackNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      ackNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ackNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      cancelledDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cancelledDate',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      cancelledDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cancelledDate',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> cancelledDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cancelledDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      cancelledDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cancelledDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> cancelledDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cancelledDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> cancelledDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cancelledDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      cancelledReasonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cancelledReason',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      cancelledReasonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cancelledReason',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      cancelledReasonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cancelledReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      cancelledReasonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cancelledReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      cancelledReasonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cancelledReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      cancelledReasonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cancelledReason',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      cancelledReasonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cancelledReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      cancelledReasonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cancelledReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      cancelledReasonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cancelledReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      cancelledReasonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cancelledReason',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      cancelledReasonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cancelledReason',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      cancelledReasonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cancelledReason',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> createdAtGreaterThan(
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> createdAtLessThan(
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> createdAtBetween(
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'errorCode',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'errorCode',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'errorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'errorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'errorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'errorCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'errorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'errorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'errorCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'errorCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'errorCode',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      errorCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'errorCode',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorMessageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'errorMessage',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      errorMessageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'errorMessage',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorMessageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'errorMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      errorMessageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'errorMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorMessageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'errorMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorMessageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'errorMessage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      errorMessageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'errorMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorMessageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'errorMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorMessageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'errorMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> errorMessageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'errorMessage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      errorMessageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'errorMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      errorMessageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'errorMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> idBetween(
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> invoiceDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invoiceDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> invoiceDateLessThan(
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> invoiceDateBetween(
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> invoiceIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'invoiceId',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> invoiceIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'invoiceId',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> invoiceIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invoiceId',
        value: value,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> invoiceIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'invoiceId',
        value: value,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> invoiceIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'invoiceId',
        value: value,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> invoiceIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'invoiceId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> invoiceNumberEqualTo(
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> invoiceNumberLessThan(
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> invoiceNumberBetween(
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      invoiceNumberStartsWith(
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> invoiceNumberEndsWith(
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> invoiceNumberContains(
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> invoiceNumberMatches(
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      invoiceNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'invoiceNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      invoiceNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'invoiceNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> irnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'irn',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> irnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'irn',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> irnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'irn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> irnGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'irn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> irnLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'irn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> irnBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'irn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> irnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'irn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> irnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'irn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> irnContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'irn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> irnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'irn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> irnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'irn',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> irnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'irn',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> isRequiredEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isRequired',
        value: value,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> qrCodeDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qrCodeData',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      qrCodeDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qrCodeData',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> qrCodeDataEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qrCodeData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> qrCodeDataGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'qrCodeData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> qrCodeDataLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'qrCodeData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> qrCodeDataBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'qrCodeData',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> qrCodeDataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'qrCodeData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> qrCodeDataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'qrCodeData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> qrCodeDataContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'qrCodeData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> qrCodeDataMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'qrCodeData',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> qrCodeDataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qrCodeData',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      qrCodeDataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'qrCodeData',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      signedInvoiceJsonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'signedInvoiceJson',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      signedInvoiceJsonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'signedInvoiceJson',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      signedInvoiceJsonEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'signedInvoiceJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      signedInvoiceJsonGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'signedInvoiceJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      signedInvoiceJsonLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'signedInvoiceJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      signedInvoiceJsonBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'signedInvoiceJson',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      signedInvoiceJsonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'signedInvoiceJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      signedInvoiceJsonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'signedInvoiceJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      signedInvoiceJsonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'signedInvoiceJson',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      signedInvoiceJsonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'signedInvoiceJson',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      signedInvoiceJsonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'signedInvoiceJson',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition>
      signedInvoiceJsonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'signedInvoiceJson',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> statusEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> statusGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> statusLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> statusBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> statusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> updatedAtEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> updatedAtGreaterThan(
    DateTime? value, {
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> updatedAtLessThan(
    DateTime? value, {
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

  QueryBuilder<EInvoice, EInvoice, QAfterFilterCondition> updatedAtBetween(
    DateTime? lower,
    DateTime? upper, {
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
}

extension EInvoiceQueryObject
    on QueryBuilder<EInvoice, EInvoice, QFilterCondition> {}

extension EInvoiceQueryLinks
    on QueryBuilder<EInvoice, EInvoice, QFilterCondition> {}

extension EInvoiceQuerySortBy on QueryBuilder<EInvoice, EInvoice, QSortBy> {
  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByAckDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ackDate', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByAckDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ackDate', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByAckNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ackNumber', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByAckNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ackNumber', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByCancelledDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledDate', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByCancelledDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledDate', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByCancelledReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledReason', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByCancelledReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledReason', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByErrorCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errorCode', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByErrorCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errorCode', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByErrorMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errorMessage', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByErrorMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errorMessage', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByInvoiceDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceDate', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByInvoiceDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceDate', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByInvoiceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceId', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByInvoiceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceId', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByInvoiceNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceNumber', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByInvoiceNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceNumber', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByIrn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'irn', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByIrnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'irn', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByIsRequired() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRequired', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByIsRequiredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRequired', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByQrCodeData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qrCodeData', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByQrCodeDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qrCodeData', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortBySignedInvoiceJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'signedInvoiceJson', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortBySignedInvoiceJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'signedInvoiceJson', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension EInvoiceQuerySortThenBy
    on QueryBuilder<EInvoice, EInvoice, QSortThenBy> {
  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByAckDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ackDate', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByAckDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ackDate', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByAckNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ackNumber', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByAckNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ackNumber', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByCancelledDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledDate', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByCancelledDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledDate', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByCancelledReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledReason', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByCancelledReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledReason', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByErrorCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errorCode', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByErrorCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errorCode', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByErrorMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errorMessage', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByErrorMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'errorMessage', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByInvoiceDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceDate', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByInvoiceDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceDate', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByInvoiceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceId', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByInvoiceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceId', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByInvoiceNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceNumber', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByInvoiceNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'invoiceNumber', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByIrn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'irn', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByIrnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'irn', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByIsRequired() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRequired', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByIsRequiredDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isRequired', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByQrCodeData() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qrCodeData', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByQrCodeDataDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qrCodeData', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenBySignedInvoiceJson() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'signedInvoiceJson', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenBySignedInvoiceJsonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'signedInvoiceJson', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension EInvoiceQueryWhereDistinct
    on QueryBuilder<EInvoice, EInvoice, QDistinct> {
  QueryBuilder<EInvoice, EInvoice, QDistinct> distinctByAckDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ackDate');
    });
  }

  QueryBuilder<EInvoice, EInvoice, QDistinct> distinctByAckNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ackNumber', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QDistinct> distinctByCancelledDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cancelledDate');
    });
  }

  QueryBuilder<EInvoice, EInvoice, QDistinct> distinctByCancelledReason(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cancelledReason',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<EInvoice, EInvoice, QDistinct> distinctByErrorCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'errorCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QDistinct> distinctByErrorMessage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'errorMessage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QDistinct> distinctByInvoiceDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invoiceDate');
    });
  }

  QueryBuilder<EInvoice, EInvoice, QDistinct> distinctByInvoiceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invoiceId');
    });
  }

  QueryBuilder<EInvoice, EInvoice, QDistinct> distinctByInvoiceNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'invoiceNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QDistinct> distinctByIrn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'irn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QDistinct> distinctByIsRequired() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isRequired');
    });
  }

  QueryBuilder<EInvoice, EInvoice, QDistinct> distinctByQrCodeData(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'qrCodeData', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QDistinct> distinctBySignedInvoiceJson(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'signedInvoiceJson',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EInvoice, EInvoice, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension EInvoiceQueryProperty
    on QueryBuilder<EInvoice, EInvoice, QQueryProperty> {
  QueryBuilder<EInvoice, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<EInvoice, DateTime?, QQueryOperations> ackDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ackDate');
    });
  }

  QueryBuilder<EInvoice, String?, QQueryOperations> ackNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ackNumber');
    });
  }

  QueryBuilder<EInvoice, DateTime?, QQueryOperations> cancelledDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cancelledDate');
    });
  }

  QueryBuilder<EInvoice, String?, QQueryOperations> cancelledReasonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cancelledReason');
    });
  }

  QueryBuilder<EInvoice, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<EInvoice, String?, QQueryOperations> errorCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'errorCode');
    });
  }

  QueryBuilder<EInvoice, String?, QQueryOperations> errorMessageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'errorMessage');
    });
  }

  QueryBuilder<EInvoice, DateTime, QQueryOperations> invoiceDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invoiceDate');
    });
  }

  QueryBuilder<EInvoice, int?, QQueryOperations> invoiceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invoiceId');
    });
  }

  QueryBuilder<EInvoice, String, QQueryOperations> invoiceNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'invoiceNumber');
    });
  }

  QueryBuilder<EInvoice, String?, QQueryOperations> irnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'irn');
    });
  }

  QueryBuilder<EInvoice, bool, QQueryOperations> isRequiredProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isRequired');
    });
  }

  QueryBuilder<EInvoice, String?, QQueryOperations> qrCodeDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'qrCodeData');
    });
  }

  QueryBuilder<EInvoice, String?, QQueryOperations>
      signedInvoiceJsonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'signedInvoiceJson');
    });
  }

  QueryBuilder<EInvoice, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<EInvoice, DateTime?, QQueryOperations> updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}
