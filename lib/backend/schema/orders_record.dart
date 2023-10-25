import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "product_qty" field.
  int? _productQty;
  int get productQty => _productQty ?? 0;
  bool hasProductQty() => _productQty != null;

  // "Deliver_Address" field.
  AddressStruct? _deliverAddress;
  AddressStruct get deliverAddress => _deliverAddress ?? AddressStruct();
  bool hasDeliverAddress() => _deliverAddress != null;

  // "Customer_name" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "Total_price" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  void _initializeFields() {
    _uid = snapshotData['Uid'] as DocumentReference?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _productQty = castToType<int>(snapshotData['product_qty']);
    _deliverAddress =
        AddressStruct.maybeFromMap(snapshotData['Deliver_Address']);
    _customerName = snapshotData['Customer_name'] as String?;
    _totalPrice = castToType<double>(snapshotData['Total_price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DocumentReference? uid,
  DateTime? createdTime,
  int? productQty,
  AddressStruct? deliverAddress,
  String? customerName,
  double? totalPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Uid': uid,
      'created_time': createdTime,
      'product_qty': productQty,
      'Deliver_Address': AddressStruct().toMap(),
      'Customer_name': customerName,
      'Total_price': totalPrice,
    }.withoutNulls,
  );

  // Handle nested data for "Deliver_Address" field.
  addAddressStructData(firestoreData, deliverAddress, 'Deliver_Address');

  return firestoreData;
}
