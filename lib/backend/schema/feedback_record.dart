import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeedbackRecord extends FirestoreRecord {
  FeedbackRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "textfield" field.
  String? _textfield;
  String get textfield => _textfield ?? '';
  bool hasTextfield() => _textfield != null;

  // "createddate" field.
  DateTime? _createddate;
  DateTime? get createddate => _createddate;
  bool hasCreateddate() => _createddate != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _textfield = snapshotData['textfield'] as String?;
    _createddate = snapshotData['createddate'] as DateTime?;
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedback');

  static Stream<FeedbackRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeedbackRecord.fromSnapshot(s));

  static Future<FeedbackRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeedbackRecord.fromSnapshot(s));

  static FeedbackRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeedbackRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeedbackRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeedbackRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeedbackRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeedbackRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeedbackRecordData({
  String? textfield,
  DateTime? createddate,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'textfield': textfield,
      'createddate': createddate,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeedbackRecordDocumentEquality implements Equality<FeedbackRecord> {
  const FeedbackRecordDocumentEquality();

  @override
  bool equals(FeedbackRecord? e1, FeedbackRecord? e2) {
    return e1?.textfield == e2?.textfield &&
        e1?.createddate == e2?.createddate &&
        e1?.name == e2?.name;
  }

  @override
  int hash(FeedbackRecord? e) =>
      const ListEquality().hash([e?.textfield, e?.createddate, e?.name]);

  @override
  bool isValidKey(Object? o) => o is FeedbackRecord;
}
