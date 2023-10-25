import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostProductRecord extends FirestoreRecord {
  PostProductRecord._(
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

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "sale_price" field.
  double? _salePrice;
  double get salePrice => _salePrice ?? 0.0;
  bool hasSalePrice() => _salePrice != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

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

  // "Brand_name" field.
  String? _brandName;
  String get brandName => _brandName ?? '';
  bool hasBrandName() => _brandName != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _onSale = snapshotData['on_sale'] as bool?;
    _salePrice = castToType<double>(snapshotData['sale_price']);
    _quantity = castToType<int>(snapshotData['quantity']);
    _picture = snapshotData['Picture'] as String?;
    _video = snapshotData['Video'] as String?;
    _categoryName = snapshotData['category_name'] as String?;
    _brandName = snapshotData['Brand_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('post_product');

  static Stream<PostProductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostProductRecord.fromSnapshot(s));

  static Future<PostProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostProductRecord.fromSnapshot(s));

  static PostProductRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PostProductRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostProductRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostProductRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostProductRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostProductRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostProductRecordData({
  String? name,
  String? description,
  double? price,
  DateTime? createdAt,
  bool? onSale,
  double? salePrice,
  int? quantity,
  String? picture,
  String? video,
  String? categoryName,
  String? brandName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'created_at': createdAt,
      'on_sale': onSale,
      'sale_price': salePrice,
      'quantity': quantity,
      'Picture': picture,
      'Video': video,
      'category_name': categoryName,
      'Brand_name': brandName,
    }.withoutNulls,
  );

  return firestoreData;
}
