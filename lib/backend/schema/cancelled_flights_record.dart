import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CancelledFlightsRecord extends FirestoreRecord {
  CancelledFlightsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CFrouteSno" field.
  List<int>? _cFrouteSno;
  List<int> get cFrouteSno => _cFrouteSno ?? const [];
  bool hasCFrouteSno() => _cFrouteSno != null;

  // "CFdate" field.
  DateTime? _cFdate;
  DateTime? get cFdate => _cFdate;
  bool hasCFdate() => _cFdate != null;

  void _initializeFields() {
    _cFrouteSno = getDataList(snapshotData['CFrouteSno']);
    _cFdate = snapshotData['CFdate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cancelledFlights');

  static Stream<CancelledFlightsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CancelledFlightsRecord.fromSnapshot(s));

  static Future<CancelledFlightsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CancelledFlightsRecord.fromSnapshot(s));

  static CancelledFlightsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CancelledFlightsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CancelledFlightsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CancelledFlightsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CancelledFlightsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CancelledFlightsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCancelledFlightsRecordData({
  DateTime? cFdate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CFdate': cFdate,
    }.withoutNulls,
  );

  return firestoreData;
}

class CancelledFlightsRecordDocumentEquality
    implements Equality<CancelledFlightsRecord> {
  const CancelledFlightsRecordDocumentEquality();

  @override
  bool equals(CancelledFlightsRecord? e1, CancelledFlightsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.cFrouteSno, e2?.cFrouteSno) &&
        e1?.cFdate == e2?.cFdate;
  }

  @override
  int hash(CancelledFlightsRecord? e) =>
      const ListEquality().hash([e?.cFrouteSno, e?.cFdate]);

  @override
  bool isValidKey(Object? o) => o is CancelledFlightsRecord;
}
