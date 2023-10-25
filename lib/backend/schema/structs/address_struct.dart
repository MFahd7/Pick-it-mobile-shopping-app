// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends FFFirebaseStruct {
  AddressStruct({
    String? streetName,
    String? buildingNo,
    String? apartmentNo,
    String? city,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _streetName = streetName,
        _buildingNo = buildingNo,
        _apartmentNo = apartmentNo,
        _city = city,
        super(firestoreUtilData);

  // "Street_Name" field.
  String? _streetName;
  String get streetName => _streetName ?? '';
  set streetName(String? val) => _streetName = val;
  bool hasStreetName() => _streetName != null;

  // "Building_No" field.
  String? _buildingNo;
  String get buildingNo => _buildingNo ?? '';
  set buildingNo(String? val) => _buildingNo = val;
  bool hasBuildingNo() => _buildingNo != null;

  // "apartment_No" field.
  String? _apartmentNo;
  String get apartmentNo => _apartmentNo ?? '';
  set apartmentNo(String? val) => _apartmentNo = val;
  bool hasApartmentNo() => _apartmentNo != null;

  // "City" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        streetName: data['Street_Name'] as String?,
        buildingNo: data['Building_No'] as String?,
        apartmentNo: data['apartment_No'] as String?,
        city: data['City'] as String?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? AddressStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'Street_Name': _streetName,
        'Building_No': _buildingNo,
        'apartment_No': _apartmentNo,
        'City': _city,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Street_Name': serializeParam(
          _streetName,
          ParamType.String,
        ),
        'Building_No': serializeParam(
          _buildingNo,
          ParamType.String,
        ),
        'apartment_No': serializeParam(
          _apartmentNo,
          ParamType.String,
        ),
        'City': serializeParam(
          _city,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        streetName: deserializeParam(
          data['Street_Name'],
          ParamType.String,
          false,
        ),
        buildingNo: deserializeParam(
          data['Building_No'],
          ParamType.String,
          false,
        ),
        apartmentNo: deserializeParam(
          data['apartment_No'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['City'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        streetName == other.streetName &&
        buildingNo == other.buildingNo &&
        apartmentNo == other.apartmentNo &&
        city == other.city;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([streetName, buildingNo, apartmentNo, city]);
}

AddressStruct createAddressStruct({
  String? streetName,
  String? buildingNo,
  String? apartmentNo,
  String? city,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AddressStruct(
      streetName: streetName,
      buildingNo: buildingNo,
      apartmentNo: apartmentNo,
      city: city,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AddressStruct? updateAddressStruct(
  AddressStruct? address, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    address
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAddressStructData(
  Map<String, dynamic> firestoreData,
  AddressStruct? address,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (address == null) {
    return;
  }
  if (address.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && address.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final addressData = getAddressFirestoreData(address, forFieldValue);
  final nestedData = addressData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = address.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAddressFirestoreData(
  AddressStruct? address, [
  bool forFieldValue = false,
]) {
  if (address == null) {
    return {};
  }
  final firestoreData = mapToFirestore(address.toMap());

  // Add any Firestore field values
  address.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAddressListFirestoreData(
  List<AddressStruct>? addresss,
) =>
    addresss?.map((e) => getAddressFirestoreData(e, true)).toList() ?? [];
