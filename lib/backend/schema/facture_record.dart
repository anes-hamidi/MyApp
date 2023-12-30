import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FactureRecord extends FirestoreRecord {
  FactureRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "DateOfSale" field.
  DateTime? _dateOfSale;
  DateTime? get dateOfSale => _dateOfSale;
  bool hasDateOfSale() => _dateOfSale != null;

  // "Total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "Rest" field.
  double? _rest;
  double get rest => _rest ?? 0.0;
  bool hasRest() => _rest != null;

  // "Command" field.
  DocumentReference? _command;
  DocumentReference? get command => _command;
  bool hasCommand() => _command != null;

  // "CustomerName" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "Pyement" field.
  double? _pyement;
  double get pyement => _pyement ?? 0.0;
  bool hasPyement() => _pyement != null;

  void _initializeFields() {
    _dateOfSale = snapshotData['DateOfSale'] as DateTime?;
    _total = castToType<double>(snapshotData['Total']);
    _rest = castToType<double>(snapshotData['Rest']);
    _command = snapshotData['Command'] as DocumentReference?;
    _customerName = snapshotData['CustomerName'] as String?;
    _pyement = castToType<double>(snapshotData['Pyement']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Facture');

  static Stream<FactureRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FactureRecord.fromSnapshot(s));

  static Future<FactureRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FactureRecord.fromSnapshot(s));

  static FactureRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FactureRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FactureRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FactureRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FactureRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FactureRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFactureRecordData({
  DateTime? dateOfSale,
  double? total,
  double? rest,
  DocumentReference? command,
  String? customerName,
  double? pyement,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'DateOfSale': dateOfSale,
      'Total': total,
      'Rest': rest,
      'Command': command,
      'CustomerName': customerName,
      'Pyement': pyement,
    }.withoutNulls,
  );

  return firestoreData;
}

class FactureRecordDocumentEquality implements Equality<FactureRecord> {
  const FactureRecordDocumentEquality();

  @override
  bool equals(FactureRecord? e1, FactureRecord? e2) {
    return e1?.dateOfSale == e2?.dateOfSale &&
        e1?.total == e2?.total &&
        e1?.rest == e2?.rest &&
        e1?.command == e2?.command &&
        e1?.customerName == e2?.customerName &&
        e1?.pyement == e2?.pyement;
  }

  @override
  int hash(FactureRecord? e) => const ListEquality().hash([
        e?.dateOfSale,
        e?.total,
        e?.rest,
        e?.command,
        e?.customerName,
        e?.pyement
      ]);

  @override
  bool isValidKey(Object? o) => o is FactureRecord;
}
