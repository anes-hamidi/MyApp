import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ShousSeresRecord extends FirestoreRecord {
  ShousSeresRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "color" field.
  String? _color;
  String get color => _color ?? '';
  bool hasColor() => _color != null;

  // "size" field.
  List<String>? _size;
  List<String> get size => _size ?? const [];
  bool hasSize() => _size != null;

  // "NumberOfPairs" field.
  int? _numberOfPairs;
  int get numberOfPairs => _numberOfPairs ?? 0;
  bool hasNumberOfPairs() => _numberOfPairs != null;

  // "CustomerName" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "StartMaking" field.
  bool? _startMaking;
  bool get startMaking => _startMaking ?? false;
  bool hasStartMaking() => _startMaking != null;

  // "EnStock" field.
  bool? _enStock;
  bool get enStock => _enStock ?? false;
  bool hasEnStock() => _enStock != null;

  // "Confirmation" field.
  bool? _confirmation;
  bool get confirmation => _confirmation ?? false;
  bool hasConfirmation() => _confirmation != null;

  // "TotalPrice" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  // "Rest" field.
  double? _rest;
  double get rest => _rest ?? 0.0;
  bool hasRest() => _rest != null;

  // "FacturationDate" field.
  DateTime? _facturationDate;
  DateTime? get facturationDate => _facturationDate;
  bool hasFacturationDate() => _facturationDate != null;

  // "Pyement" field.
  double? _pyement;
  double get pyement => _pyement ?? 0.0;
  bool hasPyement() => _pyement != null;

  void _initializeFields() {
    _model = snapshotData['model'] as String?;
    _color = snapshotData['color'] as String?;
    _size = getDataList(snapshotData['size']);
    _numberOfPairs = castToType<int>(snapshotData['NumberOfPairs']);
    _customerName = snapshotData['CustomerName'] as String?;
    _startMaking = snapshotData['StartMaking'] as bool?;
    _enStock = snapshotData['EnStock'] as bool?;
    _confirmation = snapshotData['Confirmation'] as bool?;
    _totalPrice = castToType<double>(snapshotData['TotalPrice']);
    _rest = castToType<double>(snapshotData['Rest']);
    _facturationDate = snapshotData['FacturationDate'] as DateTime?;
    _pyement = castToType<double>(snapshotData['Pyement']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('shousSeres');

  static Stream<ShousSeresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShousSeresRecord.fromSnapshot(s));

  static Future<ShousSeresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShousSeresRecord.fromSnapshot(s));

  static ShousSeresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShousSeresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShousSeresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShousSeresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShousSeresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShousSeresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShousSeresRecordData({
  String? model,
  String? color,
  int? numberOfPairs,
  String? customerName,
  bool? startMaking,
  bool? enStock,
  bool? confirmation,
  double? totalPrice,
  double? rest,
  DateTime? facturationDate,
  double? pyement,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'model': model,
      'color': color,
      'NumberOfPairs': numberOfPairs,
      'CustomerName': customerName,
      'StartMaking': startMaking,
      'EnStock': enStock,
      'Confirmation': confirmation,
      'TotalPrice': totalPrice,
      'Rest': rest,
      'FacturationDate': facturationDate,
      'Pyement': pyement,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShousSeresRecordDocumentEquality implements Equality<ShousSeresRecord> {
  const ShousSeresRecordDocumentEquality();

  @override
  bool equals(ShousSeresRecord? e1, ShousSeresRecord? e2) {
    const listEquality = ListEquality();
    return e1?.model == e2?.model &&
        e1?.color == e2?.color &&
        listEquality.equals(e1?.size, e2?.size) &&
        e1?.numberOfPairs == e2?.numberOfPairs &&
        e1?.customerName == e2?.customerName &&
        e1?.startMaking == e2?.startMaking &&
        e1?.enStock == e2?.enStock &&
        e1?.confirmation == e2?.confirmation &&
        e1?.totalPrice == e2?.totalPrice &&
        e1?.rest == e2?.rest &&
        e1?.facturationDate == e2?.facturationDate &&
        e1?.pyement == e2?.pyement;
  }

  @override
  int hash(ShousSeresRecord? e) => const ListEquality().hash([
        e?.model,
        e?.color,
        e?.size,
        e?.numberOfPairs,
        e?.customerName,
        e?.startMaking,
        e?.enStock,
        e?.confirmation,
        e?.totalPrice,
        e?.rest,
        e?.facturationDate,
        e?.pyement
      ]);

  @override
  bool isValidKey(Object? o) => o is ShousSeresRecord;
}
