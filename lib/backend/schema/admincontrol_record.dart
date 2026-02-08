import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdmincontrolRecord extends FirestoreRecord {
  AdmincontrolRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "disablerequest" field.
  bool? _disablerequest;
  bool get disablerequest => _disablerequest ?? false;
  bool hasDisablerequest() => _disablerequest != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  void _initializeFields() {
    _disablerequest = snapshotData['disablerequest'] as bool?;
    _color = getSchemaColor(snapshotData['color']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('admincontrol');

  static Stream<AdmincontrolRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdmincontrolRecord.fromSnapshot(s));

  static Future<AdmincontrolRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdmincontrolRecord.fromSnapshot(s));

  static AdmincontrolRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdmincontrolRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdmincontrolRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdmincontrolRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdmincontrolRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdmincontrolRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdmincontrolRecordData({
  bool? disablerequest,
  Color? color,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'disablerequest': disablerequest,
      'color': color,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdmincontrolRecordDocumentEquality
    implements Equality<AdmincontrolRecord> {
  const AdmincontrolRecordDocumentEquality();

  @override
  bool equals(AdmincontrolRecord? e1, AdmincontrolRecord? e2) {
    return e1?.disablerequest == e2?.disablerequest && e1?.color == e2?.color;
  }

  @override
  int hash(AdmincontrolRecord? e) =>
      const ListEquality().hash([e?.disablerequest, e?.color]);

  @override
  bool isValidKey(Object? o) => o is AdmincontrolRecord;
}
