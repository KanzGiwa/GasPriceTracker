// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class GasStationStruct extends FFFirebaseStruct {
  GasStationStruct({
    String? station,
    String? address,
    String? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _station = station,
        _address = address,
        _price = price,
        super(firestoreUtilData);

  // "station" field.
  String? _station;
  String get station => _station ?? '';
  set station(String? val) => _station = val;

  bool hasStation() => _station != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  static GasStationStruct fromMap(Map<String, dynamic> data) =>
      GasStationStruct(
        station: data['station'] as String?,
        address: data['address'] as String?,
        price: data['price'] as String?,
      );

  static GasStationStruct? maybeFromMap(dynamic data) => data is Map
      ? GasStationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'station': _station,
        'address': _address,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'station': serializeParam(
          _station,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
      }.withoutNulls;

  static GasStationStruct fromSerializableMap(Map<String, dynamic> data) =>
      GasStationStruct(
        station: deserializeParam(
          data['station'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'GasStationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GasStationStruct &&
        station == other.station &&
        address == other.address &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([station, address, price]);
}

GasStationStruct createGasStationStruct({
  String? station,
  String? address,
  String? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GasStationStruct(
      station: station,
      address: address,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GasStationStruct? updateGasStationStruct(
  GasStationStruct? gasStation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    gasStation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGasStationStructData(
  Map<String, dynamic> firestoreData,
  GasStationStruct? gasStation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (gasStation == null) {
    return;
  }
  if (gasStation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && gasStation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final gasStationData = getGasStationFirestoreData(gasStation, forFieldValue);
  final nestedData = gasStationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = gasStation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGasStationFirestoreData(
  GasStationStruct? gasStation, [
  bool forFieldValue = false,
]) {
  if (gasStation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(gasStation.toMap());

  // Add any Firestore field values
  gasStation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGasStationListFirestoreData(
  List<GasStationStruct>? gasStations,
) =>
    gasStations?.map((e) => getGasStationFirestoreData(e, true)).toList() ?? [];
