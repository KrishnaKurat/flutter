import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlertRecord extends FirestoreRecord {
  AlertRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "createddate" field.
  DateTime? _createddate;
  DateTime? get createddate => _createddate;
  bool hasCreateddate() => _createddate != null;

  // "cancelledFlights" field.
  DocumentReference? _cancelledFlights;
  DocumentReference? get cancelledFlights => _cancelledFlights;
  bool hasCancelledFlights() => _cancelledFlights != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _createddate = snapshotData['createddate'] as DateTime?;
    _cancelledFlights = snapshotData['cancelledFlights'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alert');

  static Stream<AlertRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlertRecord.fromSnapshot(s));

  static Future<AlertRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlertRecord.fromSnapshot(s));

  static AlertRecord fromSnapshot(DocumentSnapshot snapshot) => AlertRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlertRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlertRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlertRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlertRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlertRecordData({
  String? title,
  String? description,
  DateTime? createddate,
  DocumentReference? cancelledFlights,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'createddate': createddate,
      'cancelledFlights': cancelledFlights,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlertRecordDocumentEquality implements Equality<AlertRecord> {
  const AlertRecordDocumentEquality();

  @override
  bool equals(AlertRecord? e1, AlertRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.createddate == e2?.createddate &&
        e1?.cancelledFlights == e2?.cancelledFlights;
  }

  @override
  int hash(AlertRecord? e) => const ListEquality()
      .hash([e?.title, e?.description, e?.createddate, e?.cancelledFlights]);

  @override
  bool isValidKey(Object? o) => o is AlertRecord;
}
