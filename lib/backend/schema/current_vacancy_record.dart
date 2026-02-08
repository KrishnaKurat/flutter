import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CurrentVacancyRecord extends FirestoreRecord {
  CurrentVacancyRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  // "route" field.
  String? _route;
  String get route => _route ?? '';
  bool hasRoute() => _route != null;

  // "datebooked" field.
  DateTime? _datebooked;
  DateTime? get datebooked => _datebooked;
  bool hasDatebooked() => _datebooked != null;

  // "filled_vacancies" field.
  int? _filledVacancies;
  int get filledVacancies => _filledVacancies ?? 0;
  bool hasFilledVacancies() => _filledVacancies != null;

  void _initializeFields() {
    _user = snapshotData['user'] as String?;
    _route = snapshotData['route'] as String?;
    _datebooked = snapshotData['datebooked'] as DateTime?;
    _filledVacancies = castToType<int>(snapshotData['filled_vacancies']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('current_vacancy');

  static Stream<CurrentVacancyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CurrentVacancyRecord.fromSnapshot(s));

  static Future<CurrentVacancyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CurrentVacancyRecord.fromSnapshot(s));

  static CurrentVacancyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CurrentVacancyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CurrentVacancyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CurrentVacancyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CurrentVacancyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CurrentVacancyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCurrentVacancyRecordData({
  String? user,
  String? route,
  DateTime? datebooked,
  int? filledVacancies,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'route': route,
      'datebooked': datebooked,
      'filled_vacancies': filledVacancies,
    }.withoutNulls,
  );

  return firestoreData;
}

class CurrentVacancyRecordDocumentEquality
    implements Equality<CurrentVacancyRecord> {
  const CurrentVacancyRecordDocumentEquality();

  @override
  bool equals(CurrentVacancyRecord? e1, CurrentVacancyRecord? e2) {
    return e1?.user == e2?.user &&
        e1?.route == e2?.route &&
        e1?.datebooked == e2?.datebooked &&
        e1?.filledVacancies == e2?.filledVacancies;
  }

  @override
  int hash(CurrentVacancyRecord? e) => const ListEquality()
      .hash([e?.user, e?.route, e?.datebooked, e?.filledVacancies]);

  @override
  bool isValidKey(Object? o) => o is CurrentVacancyRecord;
}
