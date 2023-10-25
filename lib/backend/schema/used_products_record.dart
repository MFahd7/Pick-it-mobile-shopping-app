import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsedProductsRecord extends FirestoreRecord {
  UsedProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "Picture" field.
  String? _picture;
  String get picture => _picture ?? '';
  bool hasPicture() => _picture != null;

  // "Video" field.
  String? _video;
  String get video => _video ?? '';
  bool hasVideo() => _video != null;

  // "category_name" field.
  String? _categoryName;
  String get categoryName => _categoryName ?? '';
  bool hasCategoryName() => _categoryName != null;

  // "Cutomer_name" field.
  String? _cutomerName;
  String get cutomerName => _cutomerName ?? '';
  bool hasCutomerName() => _cutomerName != null;

  // "Uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "PhoneNo" field.
  int? _phoneNo;
  int get phoneNo => _phoneNo ?? 0;
  bool hasPhoneNo() => _phoneNo != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _picture = snapshotData['Picture'] as String?;
    _video = snapshotData['Video'] as String?;
    _categoryName = snapshotData['category_name'] as String?;
    _cutomerName = snapshotData['Cutomer_name'] as String?;
    _uid = snapshotData['Uid'] as DocumentReference?;
    _phoneNo = castToType<int>(snapshotData['PhoneNo']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Used_products');

  static Stream<UsedProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsedProductsRecord.fromSnapshot(s));

  static Future<UsedProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsedProductsRecord.fromSnapshot(s));

  static UsedProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsedProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsedProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsedProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsedProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsedProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsedProductsRecordData({
  String? name,
  String? description,
  double? price,
  DateTime? createdAt,
  String? picture,
  String? video,
  String? categoryName,
  String? cutomerName,
  DocumentReference? uid,
  int? phoneNo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'created_at': createdAt,
      'Picture': picture,
      'Video': video,
      'category_name': categoryName,
      'Cutomer_name': cutomerName,
      'Uid': uid,
      'PhoneNo': phoneNo,
    }.withoutNulls,
  );

  return firestoreData;
}
