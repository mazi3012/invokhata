// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eway_bill.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEWayBillCollection on Isar {
  IsarCollection<EWayBill> get eWayBills => this.collection();
}

const EWayBillSchema = CollectionSchema(
  name: r'EWayBill',
  id: 8827420704342781143,
  properties: {
    r'cancelledDate': PropertySchema(
      id: 0,
      name: r'cancelledDate',
      type: IsarType.dateTime,
    ),
    r'cancelledReason': PropertySchema(
      id: 1,
      name: r'cancelledReason',
      type: IsarType.string,
    ),
    r'cess': PropertySchema(
      id: 2,
      name: r'cess',
      type: IsarType.double,
    ),
    r'cgst': PropertySchema(
      id: 3,
      name: r'cgst',
      type: IsarType.double,
    ),
    r'createdAt': PropertySchema(
      id: 4,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'dispatchFromAddress': PropertySchema(
      id: 5,
      name: r'dispatchFromAddress',
      type: IsarType.string,
    ),
    r'dispatchFromGstin': PropertySchema(
      id: 6,
      name: r'dispatchFromGstin',
      type: IsarType.string,
    ),
    r'dispatchFromName': PropertySchema(
      id: 7,
      name: r'dispatchFromName',
      type: IsarType.string,
    ),
    r'dispatchFromState': PropertySchema(
      id: 8,
      name: r'dispatchFromState',
      type: IsarType.string,
    ),
    r'distance': PropertySchema(
      id: 9,
      name: r'distance',
      type: IsarType.double,
    ),
    r'docTypeCode': PropertySchema(
      id: 10,
      name: r'docTypeCode',
      type: IsarType.string,
    ),
    r'documentDate': PropertySchema(
      id: 11,
      name: r'documentDate',
      type: IsarType.dateTime,
    ),
    r'documentId': PropertySchema(
      id: 12,
      name: r'documentId',
      type: IsarType.long,
    ),
    r'documentNumber': PropertySchema(
      id: 13,
      name: r'documentNumber',
      type: IsarType.string,
    ),
    r'documentType': PropertySchema(
      id: 14,
      name: r'documentType',
      type: IsarType.string,
    ),
    r'ewayBillDate': PropertySchema(
      id: 15,
      name: r'ewayBillDate',
      type: IsarType.dateTime,
    ),
    r'ewayBillNumber': PropertySchema(
      id: 16,
      name: r'ewayBillNumber',
      type: IsarType.string,
    ),
    r'extensionCount': PropertySchema(
      id: 17,
      name: r'extensionCount',
      type: IsarType.long,
    ),
    r'generatedBy': PropertySchema(
      id: 18,
      name: r'generatedBy',
      type: IsarType.string,
    ),
    r'igst': PropertySchema(
      id: 19,
      name: r'igst',
      type: IsarType.double,
    ),
    r'items': PropertySchema(
      id: 20,
      name: r'items',
      type: IsarType.objectList,
      target: r'EWayBillLineItem',
    ),
    r'partyGstin': PropertySchema(
      id: 21,
      name: r'partyGstin',
      type: IsarType.string,
    ),
    r'partyId': PropertySchema(
      id: 22,
      name: r'partyId',
      type: IsarType.long,
    ),
    r'partyName': PropertySchema(
      id: 23,
      name: r'partyName',
      type: IsarType.string,
    ),
    r'partyState': PropertySchema(
      id: 24,
      name: r'partyState',
      type: IsarType.string,
    ),
    r'placeOfChangeOfVehicle': PropertySchema(
      id: 25,
      name: r'placeOfChangeOfVehicle',
      type: IsarType.string,
    ),
    r'remarks': PropertySchema(
      id: 26,
      name: r'remarks',
      type: IsarType.string,
    ),
    r'sgst': PropertySchema(
      id: 27,
      name: r'sgst',
      type: IsarType.double,
    ),
    r'shipToAddress': PropertySchema(
      id: 28,
      name: r'shipToAddress',
      type: IsarType.string,
    ),
    r'shipToGstin': PropertySchema(
      id: 29,
      name: r'shipToGstin',
      type: IsarType.string,
    ),
    r'shipToName': PropertySchema(
      id: 30,
      name: r'shipToName',
      type: IsarType.string,
    ),
    r'shipToState': PropertySchema(
      id: 31,
      name: r'shipToState',
      type: IsarType.string,
    ),
    r'stateOfChangeOfVehicle': PropertySchema(
      id: 32,
      name: r'stateOfChangeOfVehicle',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 33,
      name: r'status',
      type: IsarType.string,
    ),
    r'subSupplyDescription': PropertySchema(
      id: 34,
      name: r'subSupplyDescription',
      type: IsarType.string,
    ),
    r'subSupplyType': PropertySchema(
      id: 35,
      name: r'subSupplyType',
      type: IsarType.long,
    ),
    r'supplyType': PropertySchema(
      id: 36,
      name: r'supplyType',
      type: IsarType.string,
    ),
    r'taxableValue': PropertySchema(
      id: 37,
      name: r'taxableValue',
      type: IsarType.double,
    ),
    r'totalValue': PropertySchema(
      id: 38,
      name: r'totalValue',
      type: IsarType.double,
    ),
    r'transportationMode': PropertySchema(
      id: 39,
      name: r'transportationMode',
      type: IsarType.string,
    ),
    r'transporterId': PropertySchema(
      id: 40,
      name: r'transporterId',
      type: IsarType.string,
    ),
    r'transporterName': PropertySchema(
      id: 41,
      name: r'transporterName',
      type: IsarType.string,
    ),
    r'validUpto': PropertySchema(
      id: 42,
      name: r'validUpto',
      type: IsarType.dateTime,
    ),
    r'vehicleNumber': PropertySchema(
      id: 43,
      name: r'vehicleNumber',
      type: IsarType.string,
    ),
    r'vehicleType': PropertySchema(
      id: 44,
      name: r'vehicleType',
      type: IsarType.string,
    )
  },
  estimateSize: _eWayBillEstimateSize,
  serialize: _eWayBillSerialize,
  deserialize: _eWayBillDeserialize,
  deserializeProp: _eWayBillDeserializeProp,
  idName: r'id',
  indexes: {
    r'ewayBillNumber': IndexSchema(
      id: 3524029542187653683,
      name: r'ewayBillNumber',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'ewayBillNumber',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {r'EWayBillLineItem': EWayBillLineItemSchema},
  getId: _eWayBillGetId,
  getLinks: _eWayBillGetLinks,
  attach: _eWayBillAttach,
  version: '3.1.0+1',
);

int _eWayBillEstimateSize(
  EWayBill object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.cancelledReason;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dispatchFromAddress;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dispatchFromGstin;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dispatchFromName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.dispatchFromState;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.docTypeCode.length * 3;
  bytesCount += 3 + object.documentNumber.length * 3;
  bytesCount += 3 + object.documentType.length * 3;
  {
    final value = object.ewayBillNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.generatedBy.length * 3;
  bytesCount += 3 + object.items.length * 3;
  {
    final offsets = allOffsets[EWayBillLineItem]!;
    for (var i = 0; i < object.items.length; i++) {
      final value = object.items[i];
      bytesCount +=
          EWayBillLineItemSchema.estimateSize(value, offsets, allOffsets);
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
    final value = object.partyState;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.placeOfChangeOfVehicle;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.remarks;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.shipToAddress;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.shipToGstin;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.shipToName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.shipToState;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.stateOfChangeOfVehicle;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.status.length * 3;
  {
    final value = object.subSupplyDescription;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.supplyType.length * 3;
  bytesCount += 3 + object.transportationMode.length * 3;
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
  bytesCount += 3 + object.vehicleType.length * 3;
  return bytesCount;
}

void _eWayBillSerialize(
  EWayBill object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.cancelledDate);
  writer.writeString(offsets[1], object.cancelledReason);
  writer.writeDouble(offsets[2], object.cess);
  writer.writeDouble(offsets[3], object.cgst);
  writer.writeDateTime(offsets[4], object.createdAt);
  writer.writeString(offsets[5], object.dispatchFromAddress);
  writer.writeString(offsets[6], object.dispatchFromGstin);
  writer.writeString(offsets[7], object.dispatchFromName);
  writer.writeString(offsets[8], object.dispatchFromState);
  writer.writeDouble(offsets[9], object.distance);
  writer.writeString(offsets[10], object.docTypeCode);
  writer.writeDateTime(offsets[11], object.documentDate);
  writer.writeLong(offsets[12], object.documentId);
  writer.writeString(offsets[13], object.documentNumber);
  writer.writeString(offsets[14], object.documentType);
  writer.writeDateTime(offsets[15], object.ewayBillDate);
  writer.writeString(offsets[16], object.ewayBillNumber);
  writer.writeLong(offsets[17], object.extensionCount);
  writer.writeString(offsets[18], object.generatedBy);
  writer.writeDouble(offsets[19], object.igst);
  writer.writeObjectList<EWayBillLineItem>(
    offsets[20],
    allOffsets,
    EWayBillLineItemSchema.serialize,
    object.items,
  );
  writer.writeString(offsets[21], object.partyGstin);
  writer.writeLong(offsets[22], object.partyId);
  writer.writeString(offsets[23], object.partyName);
  writer.writeString(offsets[24], object.partyState);
  writer.writeString(offsets[25], object.placeOfChangeOfVehicle);
  writer.writeString(offsets[26], object.remarks);
  writer.writeDouble(offsets[27], object.sgst);
  writer.writeString(offsets[28], object.shipToAddress);
  writer.writeString(offsets[29], object.shipToGstin);
  writer.writeString(offsets[30], object.shipToName);
  writer.writeString(offsets[31], object.shipToState);
  writer.writeString(offsets[32], object.stateOfChangeOfVehicle);
  writer.writeString(offsets[33], object.status);
  writer.writeString(offsets[34], object.subSupplyDescription);
  writer.writeLong(offsets[35], object.subSupplyType);
  writer.writeString(offsets[36], object.supplyType);
  writer.writeDouble(offsets[37], object.taxableValue);
  writer.writeDouble(offsets[38], object.totalValue);
  writer.writeString(offsets[39], object.transportationMode);
  writer.writeString(offsets[40], object.transporterId);
  writer.writeString(offsets[41], object.transporterName);
  writer.writeDateTime(offsets[42], object.validUpto);
  writer.writeString(offsets[43], object.vehicleNumber);
  writer.writeString(offsets[44], object.vehicleType);
}

EWayBill _eWayBillDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EWayBill();
  object.cancelledDate = reader.readDateTimeOrNull(offsets[0]);
  object.cancelledReason = reader.readStringOrNull(offsets[1]);
  object.cess = reader.readDouble(offsets[2]);
  object.cgst = reader.readDouble(offsets[3]);
  object.createdAt = reader.readDateTime(offsets[4]);
  object.dispatchFromAddress = reader.readStringOrNull(offsets[5]);
  object.dispatchFromGstin = reader.readStringOrNull(offsets[6]);
  object.dispatchFromName = reader.readStringOrNull(offsets[7]);
  object.dispatchFromState = reader.readStringOrNull(offsets[8]);
  object.distance = reader.readDouble(offsets[9]);
  object.docTypeCode = reader.readString(offsets[10]);
  object.documentDate = reader.readDateTime(offsets[11]);
  object.documentId = reader.readLongOrNull(offsets[12]);
  object.documentNumber = reader.readString(offsets[13]);
  object.documentType = reader.readString(offsets[14]);
  object.ewayBillDate = reader.readDateTimeOrNull(offsets[15]);
  object.ewayBillNumber = reader.readStringOrNull(offsets[16]);
  object.extensionCount = reader.readLong(offsets[17]);
  object.generatedBy = reader.readString(offsets[18]);
  object.id = id;
  object.igst = reader.readDouble(offsets[19]);
  object.items = reader.readObjectList<EWayBillLineItem>(
        offsets[20],
        EWayBillLineItemSchema.deserialize,
        allOffsets,
        EWayBillLineItem(),
      ) ??
      [];
  object.partyGstin = reader.readStringOrNull(offsets[21]);
  object.partyId = reader.readLongOrNull(offsets[22]);
  object.partyName = reader.readString(offsets[23]);
  object.partyState = reader.readStringOrNull(offsets[24]);
  object.placeOfChangeOfVehicle = reader.readStringOrNull(offsets[25]);
  object.remarks = reader.readStringOrNull(offsets[26]);
  object.sgst = reader.readDouble(offsets[27]);
  object.shipToAddress = reader.readStringOrNull(offsets[28]);
  object.shipToGstin = reader.readStringOrNull(offsets[29]);
  object.shipToName = reader.readStringOrNull(offsets[30]);
  object.shipToState = reader.readStringOrNull(offsets[31]);
  object.stateOfChangeOfVehicle = reader.readStringOrNull(offsets[32]);
  object.status = reader.readString(offsets[33]);
  object.subSupplyDescription = reader.readStringOrNull(offsets[34]);
  object.subSupplyType = reader.readLong(offsets[35]);
  object.supplyType = reader.readString(offsets[36]);
  object.taxableValue = reader.readDouble(offsets[37]);
  object.totalValue = reader.readDouble(offsets[38]);
  object.transportationMode = reader.readString(offsets[39]);
  object.transporterId = reader.readStringOrNull(offsets[40]);
  object.transporterName = reader.readStringOrNull(offsets[41]);
  object.validUpto = reader.readDateTimeOrNull(offsets[42]);
  object.vehicleNumber = reader.readStringOrNull(offsets[43]);
  object.vehicleType = reader.readString(offsets[44]);
  return object;
}

P _eWayBillDeserializeProp<P>(
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
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readDateTime(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readLong(offset)) as P;
    case 18:
      return (reader.readString(offset)) as P;
    case 19:
      return (reader.readDouble(offset)) as P;
    case 20:
      return (reader.readObjectList<EWayBillLineItem>(
            offset,
            EWayBillLineItemSchema.deserialize,
            allOffsets,
            EWayBillLineItem(),
          ) ??
          []) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readLongOrNull(offset)) as P;
    case 23:
      return (reader.readString(offset)) as P;
    case 24:
      return (reader.readStringOrNull(offset)) as P;
    case 25:
      return (reader.readStringOrNull(offset)) as P;
    case 26:
      return (reader.readStringOrNull(offset)) as P;
    case 27:
      return (reader.readDouble(offset)) as P;
    case 28:
      return (reader.readStringOrNull(offset)) as P;
    case 29:
      return (reader.readStringOrNull(offset)) as P;
    case 30:
      return (reader.readStringOrNull(offset)) as P;
    case 31:
      return (reader.readStringOrNull(offset)) as P;
    case 32:
      return (reader.readStringOrNull(offset)) as P;
    case 33:
      return (reader.readString(offset)) as P;
    case 34:
      return (reader.readStringOrNull(offset)) as P;
    case 35:
      return (reader.readLong(offset)) as P;
    case 36:
      return (reader.readString(offset)) as P;
    case 37:
      return (reader.readDouble(offset)) as P;
    case 38:
      return (reader.readDouble(offset)) as P;
    case 39:
      return (reader.readString(offset)) as P;
    case 40:
      return (reader.readStringOrNull(offset)) as P;
    case 41:
      return (reader.readStringOrNull(offset)) as P;
    case 42:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 43:
      return (reader.readStringOrNull(offset)) as P;
    case 44:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _eWayBillGetId(EWayBill object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _eWayBillGetLinks(EWayBill object) {
  return [];
}

void _eWayBillAttach(IsarCollection<dynamic> col, Id id, EWayBill object) {
  object.id = id;
}

extension EWayBillByIndex on IsarCollection<EWayBill> {
  Future<EWayBill?> getByEwayBillNumber(String? ewayBillNumber) {
    return getByIndex(r'ewayBillNumber', [ewayBillNumber]);
  }

  EWayBill? getByEwayBillNumberSync(String? ewayBillNumber) {
    return getByIndexSync(r'ewayBillNumber', [ewayBillNumber]);
  }

  Future<bool> deleteByEwayBillNumber(String? ewayBillNumber) {
    return deleteByIndex(r'ewayBillNumber', [ewayBillNumber]);
  }

  bool deleteByEwayBillNumberSync(String? ewayBillNumber) {
    return deleteByIndexSync(r'ewayBillNumber', [ewayBillNumber]);
  }

  Future<List<EWayBill?>> getAllByEwayBillNumber(
      List<String?> ewayBillNumberValues) {
    final values = ewayBillNumberValues.map((e) => [e]).toList();
    return getAllByIndex(r'ewayBillNumber', values);
  }

  List<EWayBill?> getAllByEwayBillNumberSync(
      List<String?> ewayBillNumberValues) {
    final values = ewayBillNumberValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'ewayBillNumber', values);
  }

  Future<int> deleteAllByEwayBillNumber(List<String?> ewayBillNumberValues) {
    final values = ewayBillNumberValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'ewayBillNumber', values);
  }

  int deleteAllByEwayBillNumberSync(List<String?> ewayBillNumberValues) {
    final values = ewayBillNumberValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'ewayBillNumber', values);
  }

  Future<Id> putByEwayBillNumber(EWayBill object) {
    return putByIndex(r'ewayBillNumber', object);
  }

  Id putByEwayBillNumberSync(EWayBill object, {bool saveLinks = true}) {
    return putByIndexSync(r'ewayBillNumber', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByEwayBillNumber(List<EWayBill> objects) {
    return putAllByIndex(r'ewayBillNumber', objects);
  }

  List<Id> putAllByEwayBillNumberSync(List<EWayBill> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'ewayBillNumber', objects, saveLinks: saveLinks);
  }
}

extension EWayBillQueryWhereSort on QueryBuilder<EWayBill, EWayBill, QWhere> {
  QueryBuilder<EWayBill, EWayBill, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EWayBillQueryWhere on QueryBuilder<EWayBill, EWayBill, QWhereClause> {
  QueryBuilder<EWayBill, EWayBill, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<EWayBill, EWayBill, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterWhereClause> idBetween(
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

  QueryBuilder<EWayBill, EWayBill, QAfterWhereClause> ewayBillNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ewayBillNumber',
        value: [null],
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterWhereClause>
      ewayBillNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'ewayBillNumber',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterWhereClause> ewayBillNumberEqualTo(
      String? ewayBillNumber) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'ewayBillNumber',
        value: [ewayBillNumber],
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterWhereClause> ewayBillNumberNotEqualTo(
      String? ewayBillNumber) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ewayBillNumber',
              lower: [],
              upper: [ewayBillNumber],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ewayBillNumber',
              lower: [ewayBillNumber],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ewayBillNumber',
              lower: [ewayBillNumber],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'ewayBillNumber',
              lower: [],
              upper: [ewayBillNumber],
              includeUpper: false,
            ));
      }
    });
  }
}

extension EWayBillQueryFilter
    on QueryBuilder<EWayBill, EWayBill, QFilterCondition> {
  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      cancelledDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cancelledDate',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      cancelledDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cancelledDate',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> cancelledDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cancelledDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> cancelledDateLessThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> cancelledDateBetween(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      cancelledReasonIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cancelledReason',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      cancelledReasonIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cancelledReason',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      cancelledReasonContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cancelledReason',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      cancelledReasonMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cancelledReason',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      cancelledReasonIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cancelledReason',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      cancelledReasonIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cancelledReason',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> cessEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cess',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> cessGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cess',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> cessLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cess',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> cessBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cess',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> cgstEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cgst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> cgstGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cgst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> cgstLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cgst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> cgstBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cgst',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> createdAtGreaterThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> createdAtLessThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> createdAtBetween(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromAddressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dispatchFromAddress',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromAddressIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dispatchFromAddress',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromAddressEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispatchFromAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromAddressGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dispatchFromAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromAddressLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dispatchFromAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromAddressBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dispatchFromAddress',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromAddressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dispatchFromAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromAddressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dispatchFromAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromAddressContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dispatchFromAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromAddressMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dispatchFromAddress',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromAddressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispatchFromAddress',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromAddressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dispatchFromAddress',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromGstinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dispatchFromGstin',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromGstinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dispatchFromGstin',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromGstinEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispatchFromGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromGstinGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dispatchFromGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromGstinLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dispatchFromGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromGstinBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dispatchFromGstin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromGstinStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dispatchFromGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromGstinEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dispatchFromGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromGstinContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dispatchFromGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromGstinMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dispatchFromGstin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromGstinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispatchFromGstin',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromGstinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dispatchFromGstin',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dispatchFromName',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dispatchFromName',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispatchFromName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dispatchFromName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dispatchFromName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dispatchFromName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dispatchFromName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dispatchFromName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dispatchFromName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dispatchFromName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispatchFromName',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dispatchFromName',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromStateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dispatchFromState',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromStateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dispatchFromState',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromStateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispatchFromState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromStateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dispatchFromState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromStateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dispatchFromState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromStateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dispatchFromState',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromStateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'dispatchFromState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromStateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'dispatchFromState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromStateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'dispatchFromState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromStateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'dispatchFromState',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromStateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dispatchFromState',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      dispatchFromStateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'dispatchFromState',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> distanceEqualTo(
    double value, {
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> distanceGreaterThan(
    double value, {
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> distanceLessThan(
    double value, {
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> distanceBetween(
    double lower,
    double upper, {
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> docTypeCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'docTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      docTypeCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'docTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> docTypeCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'docTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> docTypeCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'docTypeCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> docTypeCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'docTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> docTypeCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'docTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> docTypeCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'docTypeCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> docTypeCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'docTypeCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> docTypeCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'docTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      docTypeCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'docTypeCode',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentDateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'documentDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      documentDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'documentDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'documentDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'documentDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'documentId',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      documentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'documentId',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'documentId',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'documentId',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'documentId',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'documentId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'documentNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      documentNumberGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'documentNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      documentNumberLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'documentNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentNumberBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'documentNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      documentNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'documentNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      documentNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'documentNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      documentNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'documentNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'documentNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      documentNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'documentNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      documentNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'documentNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentTypeEqualTo(
    String value, {
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      documentTypeGreaterThan(
    String value, {
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentTypeLessThan(
    String value, {
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentTypeBetween(
    String lower,
    String upper, {
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentTypeEndsWith(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentTypeContains(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> documentTypeMatches(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      documentTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'documentType',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      documentTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'documentType',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> ewayBillDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ewayBillDate',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      ewayBillDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ewayBillDate',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> ewayBillDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ewayBillDate',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> ewayBillDateLessThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> ewayBillDateBetween(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      ewayBillNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'ewayBillNumber',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      ewayBillNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'ewayBillNumber',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> ewayBillNumberEqualTo(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> ewayBillNumberBetween(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      ewayBillNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'ewayBillNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> ewayBillNumberMatches(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      ewayBillNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'ewayBillNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      ewayBillNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'ewayBillNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> extensionCountEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'extensionCount',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      extensionCountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'extensionCount',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      extensionCountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'extensionCount',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> extensionCountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'extensionCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> generatedByEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'generatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      generatedByGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'generatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> generatedByLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'generatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> generatedByBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'generatedBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> generatedByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'generatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> generatedByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'generatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> generatedByContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'generatedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> generatedByMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'generatedBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> generatedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'generatedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      generatedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'generatedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> idBetween(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> igstEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'igst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> igstGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'igst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> igstLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'igst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> igstBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'igst',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> itemsLengthEqualTo(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> itemsIsEmpty() {
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> itemsIsNotEmpty() {
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> itemsLengthLessThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> itemsLengthBetween(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyGstinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyGstin',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      partyGstinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyGstin',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyGstinEqualTo(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyGstinGreaterThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyGstinLessThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyGstinBetween(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyGstinStartsWith(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyGstinEndsWith(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyGstinContains(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyGstinMatches(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyGstinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyGstin',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      partyGstinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyGstin',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyId',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyId',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyId',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyIdGreaterThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyIdLessThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyIdBetween(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyNameEqualTo(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyNameGreaterThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyNameLessThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyNameBetween(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyNameStartsWith(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyNameEndsWith(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyNameContains(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyNameMatches(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyName',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      partyNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyName',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyStateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'partyState',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      partyStateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'partyState',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyStateEqualTo(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyStateGreaterThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyStateLessThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyStateBetween(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyStateStartsWith(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyStateEndsWith(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyStateContains(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyStateMatches(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> partyStateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'partyState',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      partyStateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'partyState',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      placeOfChangeOfVehicleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'placeOfChangeOfVehicle',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      placeOfChangeOfVehicleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'placeOfChangeOfVehicle',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      placeOfChangeOfVehicleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeOfChangeOfVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      placeOfChangeOfVehicleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'placeOfChangeOfVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      placeOfChangeOfVehicleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'placeOfChangeOfVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      placeOfChangeOfVehicleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'placeOfChangeOfVehicle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      placeOfChangeOfVehicleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'placeOfChangeOfVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      placeOfChangeOfVehicleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'placeOfChangeOfVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      placeOfChangeOfVehicleContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'placeOfChangeOfVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      placeOfChangeOfVehicleMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'placeOfChangeOfVehicle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      placeOfChangeOfVehicleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'placeOfChangeOfVehicle',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      placeOfChangeOfVehicleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'placeOfChangeOfVehicle',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> remarksIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'remarks',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> remarksIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'remarks',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> remarksEqualTo(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> remarksGreaterThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> remarksLessThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> remarksBetween(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> remarksStartsWith(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> remarksEndsWith(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> remarksContains(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> remarksMatches(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> remarksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'remarks',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> remarksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'remarks',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> sgstEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sgst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> sgstGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sgst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> sgstLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sgst',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> sgstBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sgst',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      shipToAddressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shipToAddress',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      shipToAddressIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shipToAddress',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToAddressEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shipToAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      shipToAddressGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shipToAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToAddressLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shipToAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToAddressBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shipToAddress',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      shipToAddressStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shipToAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToAddressEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shipToAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToAddressContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shipToAddress',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToAddressMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shipToAddress',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      shipToAddressIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shipToAddress',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      shipToAddressIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shipToAddress',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToGstinIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shipToGstin',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      shipToGstinIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shipToGstin',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToGstinEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shipToGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      shipToGstinGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shipToGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToGstinLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shipToGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToGstinBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shipToGstin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToGstinStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shipToGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToGstinEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shipToGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToGstinContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shipToGstin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToGstinMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shipToGstin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToGstinIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shipToGstin',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      shipToGstinIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shipToGstin',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shipToName',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      shipToNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shipToName',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shipToName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shipToName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shipToName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shipToName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shipToName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shipToName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shipToName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shipToName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shipToName',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      shipToNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shipToName',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToStateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'shipToState',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      shipToStateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'shipToState',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToStateEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shipToState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      shipToStateGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shipToState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToStateLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shipToState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToStateBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shipToState',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToStateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'shipToState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToStateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'shipToState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToStateContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'shipToState',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToStateMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'shipToState',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> shipToStateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shipToState',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      shipToStateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'shipToState',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      stateOfChangeOfVehicleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stateOfChangeOfVehicle',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      stateOfChangeOfVehicleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stateOfChangeOfVehicle',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      stateOfChangeOfVehicleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stateOfChangeOfVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      stateOfChangeOfVehicleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stateOfChangeOfVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      stateOfChangeOfVehicleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stateOfChangeOfVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      stateOfChangeOfVehicleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stateOfChangeOfVehicle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      stateOfChangeOfVehicleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stateOfChangeOfVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      stateOfChangeOfVehicleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stateOfChangeOfVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      stateOfChangeOfVehicleContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stateOfChangeOfVehicle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      stateOfChangeOfVehicleMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stateOfChangeOfVehicle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      stateOfChangeOfVehicleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stateOfChangeOfVehicle',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      stateOfChangeOfVehicleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stateOfChangeOfVehicle',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> statusEqualTo(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> statusGreaterThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> statusLessThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> statusBetween(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> statusStartsWith(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> statusEndsWith(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> statusContains(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> statusMatches(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      subSupplyDescriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'subSupplyDescription',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      subSupplyDescriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'subSupplyDescription',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      subSupplyDescriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subSupplyDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      subSupplyDescriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subSupplyDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      subSupplyDescriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subSupplyDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      subSupplyDescriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subSupplyDescription',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      subSupplyDescriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'subSupplyDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      subSupplyDescriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'subSupplyDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      subSupplyDescriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'subSupplyDescription',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      subSupplyDescriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'subSupplyDescription',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      subSupplyDescriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subSupplyDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      subSupplyDescriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'subSupplyDescription',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> subSupplyTypeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'subSupplyType',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      subSupplyTypeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'subSupplyType',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> subSupplyTypeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'subSupplyType',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> subSupplyTypeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'subSupplyType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> supplyTypeEqualTo(
    String value, {
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> supplyTypeGreaterThan(
    String value, {
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> supplyTypeLessThan(
    String value, {
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> supplyTypeBetween(
    String lower,
    String upper, {
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> supplyTypeStartsWith(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> supplyTypeEndsWith(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> supplyTypeContains(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> supplyTypeMatches(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> supplyTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supplyType',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      supplyTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'supplyType',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> taxableValueEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxableValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      taxableValueGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxableValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> taxableValueLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxableValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> taxableValueBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxableValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> totalValueEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> totalValueGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> totalValueLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> totalValueBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transportationModeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transportationMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transportationModeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transportationMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transportationModeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transportationMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transportationModeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transportationMode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transportationModeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'transportationMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transportationModeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'transportationMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transportationModeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transportationMode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transportationModeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transportationMode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transportationModeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transportationMode',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transportationModeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transportationMode',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transporterIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transporterId',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transporterIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transporterId',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> transporterIdEqualTo(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> transporterIdLessThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> transporterIdBetween(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> transporterIdEndsWith(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> transporterIdContains(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> transporterIdMatches(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transporterIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transporterId',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transporterIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transporterId',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transporterNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'transporterName',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transporterNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'transporterName',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transporterNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'transporterName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transporterNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'transporterName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transporterNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transporterName',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      transporterNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'transporterName',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> validUptoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'validUpto',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> validUptoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'validUpto',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> validUptoEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'validUpto',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> validUptoGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'validUpto',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> validUptoLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'validUpto',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> validUptoBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'validUpto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      vehicleNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vehicleNumber',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      vehicleNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vehicleNumber',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> vehicleNumberEqualTo(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> vehicleNumberLessThan(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> vehicleNumberBetween(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> vehicleNumberEndsWith(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> vehicleNumberContains(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> vehicleNumberMatches(
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

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      vehicleNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vehicleNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      vehicleNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'vehicleNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> vehicleTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vehicleType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      vehicleTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'vehicleType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> vehicleTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'vehicleType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> vehicleTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'vehicleType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> vehicleTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'vehicleType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> vehicleTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'vehicleType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> vehicleTypeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'vehicleType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> vehicleTypeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'vehicleType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> vehicleTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vehicleType',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition>
      vehicleTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'vehicleType',
        value: '',
      ));
    });
  }
}

extension EWayBillQueryObject
    on QueryBuilder<EWayBill, EWayBill, QFilterCondition> {
  QueryBuilder<EWayBill, EWayBill, QAfterFilterCondition> itemsElement(
      FilterQuery<EWayBillLineItem> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'items');
    });
  }
}

extension EWayBillQueryLinks
    on QueryBuilder<EWayBill, EWayBill, QFilterCondition> {}

extension EWayBillQuerySortBy on QueryBuilder<EWayBill, EWayBill, QSortBy> {
  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByCancelledDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledDate', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByCancelledDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledDate', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByCancelledReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledReason', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByCancelledReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledReason', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByCess() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cess', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByCessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cess', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByCgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cgst', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByCgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cgst', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDispatchFromAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispatchFromAddress', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy>
      sortByDispatchFromAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispatchFromAddress', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDispatchFromGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispatchFromGstin', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDispatchFromGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispatchFromGstin', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDispatchFromName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispatchFromName', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDispatchFromNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispatchFromName', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDispatchFromState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispatchFromState', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDispatchFromStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispatchFromState', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDocTypeCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docTypeCode', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDocTypeCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docTypeCode', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDocumentDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentDate', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDocumentDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentDate', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDocumentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentId', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDocumentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentId', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDocumentNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentNumber', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDocumentNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentNumber', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDocumentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentType', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByDocumentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentType', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByEwayBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillDate', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByEwayBillDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillDate', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByEwayBillNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillNumber', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByEwayBillNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillNumber', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByExtensionCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extensionCount', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByExtensionCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extensionCount', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByGeneratedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'generatedBy', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByGeneratedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'generatedBy', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByIgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'igst', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByIgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'igst', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByPartyGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByPartyGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByPartyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByPartyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByPartyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByPartyState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyState', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByPartyStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyState', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy>
      sortByPlaceOfChangeOfVehicle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfChangeOfVehicle', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy>
      sortByPlaceOfChangeOfVehicleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfChangeOfVehicle', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByRemarks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remarks', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByRemarksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remarks', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortBySgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sgst', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortBySgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sgst', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByShipToAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shipToAddress', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByShipToAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shipToAddress', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByShipToGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shipToGstin', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByShipToGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shipToGstin', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByShipToName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shipToName', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByShipToNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shipToName', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByShipToState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shipToState', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByShipToStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shipToState', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy>
      sortByStateOfChangeOfVehicle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stateOfChangeOfVehicle', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy>
      sortByStateOfChangeOfVehicleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stateOfChangeOfVehicle', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortBySubSupplyDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subSupplyDescription', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy>
      sortBySubSupplyDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subSupplyDescription', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortBySubSupplyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subSupplyType', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortBySubSupplyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subSupplyType', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortBySupplyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supplyType', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortBySupplyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supplyType', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByTaxableValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxableValue', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByTaxableValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxableValue', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByTotalValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalValue', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByTotalValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalValue', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByTransportationMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transportationMode', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy>
      sortByTransportationModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transportationMode', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByTransporterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterId', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByTransporterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterId', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByTransporterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterName', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByTransporterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterName', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByValidUpto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validUpto', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByValidUptoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validUpto', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByVehicleNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleNumber', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByVehicleNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleNumber', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByVehicleType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleType', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> sortByVehicleTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleType', Sort.desc);
    });
  }
}

extension EWayBillQuerySortThenBy
    on QueryBuilder<EWayBill, EWayBill, QSortThenBy> {
  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByCancelledDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledDate', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByCancelledDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledDate', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByCancelledReason() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledReason', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByCancelledReasonDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cancelledReason', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByCess() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cess', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByCessDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cess', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByCgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cgst', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByCgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cgst', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDispatchFromAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispatchFromAddress', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy>
      thenByDispatchFromAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispatchFromAddress', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDispatchFromGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispatchFromGstin', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDispatchFromGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispatchFromGstin', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDispatchFromName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispatchFromName', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDispatchFromNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispatchFromName', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDispatchFromState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispatchFromState', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDispatchFromStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dispatchFromState', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDistanceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'distance', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDocTypeCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docTypeCode', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDocTypeCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'docTypeCode', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDocumentDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentDate', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDocumentDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentDate', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDocumentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentId', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDocumentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentId', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDocumentNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentNumber', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDocumentNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentNumber', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDocumentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentType', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByDocumentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'documentType', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByEwayBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillDate', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByEwayBillDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillDate', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByEwayBillNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillNumber', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByEwayBillNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'ewayBillNumber', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByExtensionCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extensionCount', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByExtensionCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'extensionCount', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByGeneratedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'generatedBy', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByGeneratedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'generatedBy', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByIgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'igst', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByIgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'igst', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByPartyGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByPartyGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyGstin', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByPartyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyId', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByPartyName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByPartyNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyName', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByPartyState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyState', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByPartyStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'partyState', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy>
      thenByPlaceOfChangeOfVehicle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfChangeOfVehicle', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy>
      thenByPlaceOfChangeOfVehicleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'placeOfChangeOfVehicle', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByRemarks() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remarks', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByRemarksDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'remarks', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenBySgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sgst', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenBySgstDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sgst', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByShipToAddress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shipToAddress', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByShipToAddressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shipToAddress', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByShipToGstin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shipToGstin', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByShipToGstinDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shipToGstin', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByShipToName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shipToName', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByShipToNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shipToName', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByShipToState() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shipToState', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByShipToStateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'shipToState', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy>
      thenByStateOfChangeOfVehicle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stateOfChangeOfVehicle', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy>
      thenByStateOfChangeOfVehicleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stateOfChangeOfVehicle', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenBySubSupplyDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subSupplyDescription', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy>
      thenBySubSupplyDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subSupplyDescription', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenBySubSupplyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subSupplyType', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenBySubSupplyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'subSupplyType', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenBySupplyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supplyType', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenBySupplyTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supplyType', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByTaxableValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxableValue', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByTaxableValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'taxableValue', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByTotalValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalValue', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByTotalValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalValue', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByTransportationMode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transportationMode', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy>
      thenByTransportationModeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transportationMode', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByTransporterId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterId', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByTransporterIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterId', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByTransporterName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterName', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByTransporterNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transporterName', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByValidUpto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validUpto', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByValidUptoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'validUpto', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByVehicleNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleNumber', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByVehicleNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleNumber', Sort.desc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByVehicleType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleType', Sort.asc);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QAfterSortBy> thenByVehicleTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vehicleType', Sort.desc);
    });
  }
}

extension EWayBillQueryWhereDistinct
    on QueryBuilder<EWayBill, EWayBill, QDistinct> {
  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByCancelledDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cancelledDate');
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByCancelledReason(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cancelledReason',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByCess() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cess');
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByCgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cgst');
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByDispatchFromAddress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dispatchFromAddress',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByDispatchFromGstin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dispatchFromGstin',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByDispatchFromName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dispatchFromName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByDispatchFromState(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dispatchFromState',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByDistance() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'distance');
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByDocTypeCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'docTypeCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByDocumentDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'documentDate');
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByDocumentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'documentId');
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByDocumentNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'documentNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByDocumentType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'documentType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByEwayBillDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ewayBillDate');
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByEwayBillNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'ewayBillNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByExtensionCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'extensionCount');
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByGeneratedBy(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'generatedBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByIgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'igst');
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByPartyGstin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyGstin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByPartyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyId');
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByPartyName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByPartyState(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'partyState', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByPlaceOfChangeOfVehicle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'placeOfChangeOfVehicle',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByRemarks(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'remarks', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctBySgst() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sgst');
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByShipToAddress(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shipToAddress',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByShipToGstin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shipToGstin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByShipToName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shipToName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByShipToState(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'shipToState', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByStateOfChangeOfVehicle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stateOfChangeOfVehicle',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctBySubSupplyDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subSupplyDescription',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctBySubSupplyType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'subSupplyType');
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctBySupplyType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'supplyType', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByTaxableValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'taxableValue');
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByTotalValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalValue');
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByTransportationMode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transportationMode',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByTransporterId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transporterId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByTransporterName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transporterName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByValidUpto() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'validUpto');
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByVehicleNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vehicleNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<EWayBill, EWayBill, QDistinct> distinctByVehicleType(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vehicleType', caseSensitive: caseSensitive);
    });
  }
}

extension EWayBillQueryProperty
    on QueryBuilder<EWayBill, EWayBill, QQueryProperty> {
  QueryBuilder<EWayBill, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<EWayBill, DateTime?, QQueryOperations> cancelledDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cancelledDate');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations> cancelledReasonProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cancelledReason');
    });
  }

  QueryBuilder<EWayBill, double, QQueryOperations> cessProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cess');
    });
  }

  QueryBuilder<EWayBill, double, QQueryOperations> cgstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cgst');
    });
  }

  QueryBuilder<EWayBill, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations>
      dispatchFromAddressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dispatchFromAddress');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations>
      dispatchFromGstinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dispatchFromGstin');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations> dispatchFromNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dispatchFromName');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations>
      dispatchFromStateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dispatchFromState');
    });
  }

  QueryBuilder<EWayBill, double, QQueryOperations> distanceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'distance');
    });
  }

  QueryBuilder<EWayBill, String, QQueryOperations> docTypeCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'docTypeCode');
    });
  }

  QueryBuilder<EWayBill, DateTime, QQueryOperations> documentDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'documentDate');
    });
  }

  QueryBuilder<EWayBill, int?, QQueryOperations> documentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'documentId');
    });
  }

  QueryBuilder<EWayBill, String, QQueryOperations> documentNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'documentNumber');
    });
  }

  QueryBuilder<EWayBill, String, QQueryOperations> documentTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'documentType');
    });
  }

  QueryBuilder<EWayBill, DateTime?, QQueryOperations> ewayBillDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ewayBillDate');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations> ewayBillNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'ewayBillNumber');
    });
  }

  QueryBuilder<EWayBill, int, QQueryOperations> extensionCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'extensionCount');
    });
  }

  QueryBuilder<EWayBill, String, QQueryOperations> generatedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'generatedBy');
    });
  }

  QueryBuilder<EWayBill, double, QQueryOperations> igstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'igst');
    });
  }

  QueryBuilder<EWayBill, List<EWayBillLineItem>, QQueryOperations>
      itemsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'items');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations> partyGstinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyGstin');
    });
  }

  QueryBuilder<EWayBill, int?, QQueryOperations> partyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyId');
    });
  }

  QueryBuilder<EWayBill, String, QQueryOperations> partyNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyName');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations> partyStateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'partyState');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations>
      placeOfChangeOfVehicleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'placeOfChangeOfVehicle');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations> remarksProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'remarks');
    });
  }

  QueryBuilder<EWayBill, double, QQueryOperations> sgstProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sgst');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations> shipToAddressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shipToAddress');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations> shipToGstinProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shipToGstin');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations> shipToNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shipToName');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations> shipToStateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'shipToState');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations>
      stateOfChangeOfVehicleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stateOfChangeOfVehicle');
    });
  }

  QueryBuilder<EWayBill, String, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations>
      subSupplyDescriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subSupplyDescription');
    });
  }

  QueryBuilder<EWayBill, int, QQueryOperations> subSupplyTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'subSupplyType');
    });
  }

  QueryBuilder<EWayBill, String, QQueryOperations> supplyTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'supplyType');
    });
  }

  QueryBuilder<EWayBill, double, QQueryOperations> taxableValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'taxableValue');
    });
  }

  QueryBuilder<EWayBill, double, QQueryOperations> totalValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalValue');
    });
  }

  QueryBuilder<EWayBill, String, QQueryOperations>
      transportationModeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transportationMode');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations> transporterIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transporterId');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations> transporterNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transporterName');
    });
  }

  QueryBuilder<EWayBill, DateTime?, QQueryOperations> validUptoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'validUpto');
    });
  }

  QueryBuilder<EWayBill, String?, QQueryOperations> vehicleNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vehicleNumber');
    });
  }

  QueryBuilder<EWayBill, String, QQueryOperations> vehicleTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vehicleType');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const EWayBillLineItemSchema = Schema(
  name: r'EWayBillLineItem',
  id: -8715887903540203517,
  properties: {
    r'gstRate': PropertySchema(
      id: 0,
      name: r'gstRate',
      type: IsarType.double,
    ),
    r'hsnCode': PropertySchema(
      id: 1,
      name: r'hsnCode',
      type: IsarType.string,
    ),
    r'itemId': PropertySchema(
      id: 2,
      name: r'itemId',
      type: IsarType.long,
    ),
    r'itemName': PropertySchema(
      id: 3,
      name: r'itemName',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 4,
      name: r'quantity',
      type: IsarType.double,
    ),
    r'taxableValue': PropertySchema(
      id: 5,
      name: r'taxableValue',
      type: IsarType.double,
    ),
    r'unit': PropertySchema(
      id: 6,
      name: r'unit',
      type: IsarType.string,
    )
  },
  estimateSize: _eWayBillLineItemEstimateSize,
  serialize: _eWayBillLineItemSerialize,
  deserialize: _eWayBillLineItemDeserialize,
  deserializeProp: _eWayBillLineItemDeserializeProp,
);

int _eWayBillLineItemEstimateSize(
  EWayBillLineItem object,
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

void _eWayBillLineItemSerialize(
  EWayBillLineItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.gstRate);
  writer.writeString(offsets[1], object.hsnCode);
  writer.writeLong(offsets[2], object.itemId);
  writer.writeString(offsets[3], object.itemName);
  writer.writeDouble(offsets[4], object.quantity);
  writer.writeDouble(offsets[5], object.taxableValue);
  writer.writeString(offsets[6], object.unit);
}

EWayBillLineItem _eWayBillLineItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = EWayBillLineItem();
  object.gstRate = reader.readDouble(offsets[0]);
  object.hsnCode = reader.readStringOrNull(offsets[1]);
  object.itemId = reader.readLongOrNull(offsets[2]);
  object.itemName = reader.readStringOrNull(offsets[3]);
  object.quantity = reader.readDouble(offsets[4]);
  object.taxableValue = reader.readDouble(offsets[5]);
  object.unit = reader.readStringOrNull(offsets[6]);
  return object;
}

P _eWayBillLineItemDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDouble(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension EWayBillLineItemQueryFilter
    on QueryBuilder<EWayBillLineItem, EWayBillLineItem, QFilterCondition> {
  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      hsnCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hsnCode',
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      hsnCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hsnCode',
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      hsnCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hsnCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      hsnCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hsnCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      hsnCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hsnCode',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      hsnCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hsnCode',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      itemIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      itemIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      itemIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemId',
        value: value,
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      itemNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemName',
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      itemNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemName',
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      itemNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      itemNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      itemNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemName',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      itemNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemName',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      taxableValueEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'taxableValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      taxableValueGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'taxableValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      taxableValueLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'taxableValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      taxableValueBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'taxableValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      unitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'unit',
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      unitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'unit',
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
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

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      unitContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      unitMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'unit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      unitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: '',
      ));
    });
  }

  QueryBuilder<EWayBillLineItem, EWayBillLineItem, QAfterFilterCondition>
      unitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unit',
        value: '',
      ));
    });
  }
}

extension EWayBillLineItemQueryObject
    on QueryBuilder<EWayBillLineItem, EWayBillLineItem, QFilterCondition> {}
