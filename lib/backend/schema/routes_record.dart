import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoutesRecord extends FirestoreRecord {
  RoutesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "startpoint" field.
  String? _startpoint;
  String get startpoint => _startpoint ?? '';
  bool hasStartpoint() => _startpoint != null;

  // "endpoint" field.
  String? _endpoint;
  String get endpoint => _endpoint ?? '';
  bool hasEndpoint() => _endpoint != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "Photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "sNo" field.
  int? _sNo;
  int get sNo => _sNo ?? 0;
  bool hasSNo() => _sNo != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "startEnd" field.
  String? _startEnd;
  String get startEnd => _startEnd ?? '';
  bool hasStartEnd() => _startEnd != null;

  void _initializeFields() {
    _startpoint = snapshotData['startpoint'] as String?;
    _endpoint = snapshotData['endpoint'] as String?;
    _description = snapshotData['Description'] as String?;
    _photo = snapshotData['Photo'] as String?;
    _sNo = castToType<int>(snapshotData['sNo']);
    _type = snapshotData['Type'] as String?;
    _startEnd = snapshotData['startEnd'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('routes');

  static Stream<RoutesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoutesRecord.fromSnapshot(s));

  static Future<RoutesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoutesRecord.fromSnapshot(s));

  static RoutesRecord fromSnapshot(DocumentSnapshot snapshot) => RoutesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoutesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoutesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoutesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoutesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoutesRecordData({
  String? startpoint,
  String? endpoint,
  String? description,
  String? photo,
  int? sNo,
  String? type,
  String? startEnd,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'startpoint': startpoint,
      'endpoint': endpoint,
      'Description': description,
      'Photo': photo,
      'sNo': sNo,
      'Type': type,
      'startEnd': startEnd,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoutesRecordDocumentEquality implements Equality<RoutesRecord> {
  const RoutesRecordDocumentEquality();

  @override
  bool equals(RoutesRecord? e1, RoutesRecord? e2) {
    return e1?.startpoint == e2?.startpoint &&
        e1?.endpoint == e2?.endpoint &&
        e1?.description == e2?.description &&
        e1?.photo == e2?.photo &&
        e1?.sNo == e2?.sNo &&
        e1?.type == e2?.type &&
        e1?.startEnd == e2?.startEnd;
  }

  @override
  int hash(RoutesRecord? e) => const ListEquality().hash([
        e?.startpoint,
        e?.endpoint,
        e?.description,
        e?.photo,
        e?.sNo,
        e?.type,
        e?.startEnd
      ]);

  @override
  bool isValidKey(Object? o) => o is RoutesRecord;
}
