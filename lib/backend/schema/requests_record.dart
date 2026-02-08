import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestsRecord extends FirestoreRecord {
  RequestsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  bool hasUnit() => _unit != null;

  // "traveldate" field.
  DateTime? _traveldate;
  DateTime? get traveldate => _traveldate;
  bool hasTraveldate() => _traveldate != null;

  // "state" field.
  String? _state;
  String get state => _state ?? '';
  bool hasState() => _state != null;

  // "createddate" field.
  DateTime? _createddate;
  DateTime? get createddate => _createddate;
  bool hasCreateddate() => _createddate != null;

  // "start" field.
  String? _start;
  String get start => _start ?? '';
  bool hasStart() => _start != null;

  // "end" field.
  String? _end;
  String get end => _end ?? '';
  bool hasEnd() => _end != null;

  // "Lightcolor" field.
  Color? _lightcolor;
  Color? get lightcolor => _lightcolor;
  bool hasLightcolor() => _lightcolor != null;

  // "Darkcolor" field.
  Color? _darkcolor;
  Color? get darkcolor => _darkcolor;
  bool hasDarkcolor() => _darkcolor != null;

  // "requestedby" field.
  String? _requestedby;
  String get requestedby => _requestedby ?? '';
  bool hasRequestedby() => _requestedby != null;

  // "seatsrequired" field.
  int? _seatsrequired;
  int get seatsrequired => _seatsrequired ?? 0;
  bool hasSeatsrequired() => _seatsrequired != null;

  // "seatsalloted" field.
  int? _seatsalloted;
  int get seatsalloted => _seatsalloted ?? 0;
  bool hasSeatsalloted() => _seatsalloted != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "byAdmin" field.
  bool? _byAdmin;
  bool get byAdmin => _byAdmin ?? false;
  bool hasByAdmin() => _byAdmin != null;

  // "routeSno" field.
  int? _routeSno;
  int get routeSno => _routeSno ?? 0;
  bool hasRouteSno() => _routeSno != null;

  // "type_of_veh" field.
  String? _typeOfVeh;
  String get typeOfVeh => _typeOfVeh ?? '';
  bool hasTypeOfVeh() => _typeOfVeh != null;

  // "vacancy" field.
  DocumentReference? _vacancy;
  DocumentReference? get vacancy => _vacancy;
  bool hasVacancy() => _vacancy != null;

  // "Bustype" field.
  String? _bustype;
  String get bustype => _bustype ?? '';
  bool hasBustype() => _bustype != null;

  // "busalloted" field.
  String? _busalloted;
  String get busalloted => _busalloted ?? '';
  bool hasBusalloted() => _busalloted != null;

  void _initializeFields() {
    _unit = snapshotData['unit'] as String?;
    _traveldate = snapshotData['traveldate'] as DateTime?;
    _state = snapshotData['state'] as String?;
    _createddate = snapshotData['createddate'] as DateTime?;
    _start = snapshotData['start'] as String?;
    _end = snapshotData['end'] as String?;
    _lightcolor = getSchemaColor(snapshotData['Lightcolor']);
    _darkcolor = getSchemaColor(snapshotData['Darkcolor']);
    _requestedby = snapshotData['requestedby'] as String?;
    _seatsrequired = castToType<int>(snapshotData['seatsrequired']);
    _seatsalloted = castToType<int>(snapshotData['seatsalloted']);
    _type = snapshotData['Type'] as String?;
    _byAdmin = snapshotData['byAdmin'] as bool?;
    _routeSno = castToType<int>(snapshotData['routeSno']);
    _typeOfVeh = snapshotData['type_of_veh'] as String?;
    _vacancy = snapshotData['vacancy'] as DocumentReference?;
    _bustype = snapshotData['Bustype'] as String?;
    _busalloted = snapshotData['busalloted'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('requests');

  static Stream<RequestsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestsRecord.fromSnapshot(s));

  static Future<RequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RequestsRecord.fromSnapshot(s));

  static RequestsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestsRecordData({
  String? unit,
  DateTime? traveldate,
  String? state,
  DateTime? createddate,
  String? start,
  String? end,
  Color? lightcolor,
  Color? darkcolor,
  String? requestedby,
  int? seatsrequired,
  int? seatsalloted,
  String? type,
  bool? byAdmin,
  int? routeSno,
  String? typeOfVeh,
  DocumentReference? vacancy,
  String? bustype,
  String? busalloted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'unit': unit,
      'traveldate': traveldate,
      'state': state,
      'createddate': createddate,
      'start': start,
      'end': end,
      'Lightcolor': lightcolor,
      'Darkcolor': darkcolor,
      'requestedby': requestedby,
      'seatsrequired': seatsrequired,
      'seatsalloted': seatsalloted,
      'Type': type,
      'byAdmin': byAdmin,
      'routeSno': routeSno,
      'type_of_veh': typeOfVeh,
      'vacancy': vacancy,
      'Bustype': bustype,
      'busalloted': busalloted,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestsRecordDocumentEquality implements Equality<RequestsRecord> {
  const RequestsRecordDocumentEquality();

  @override
  bool equals(RequestsRecord? e1, RequestsRecord? e2) {
    return e1?.unit == e2?.unit &&
        e1?.traveldate == e2?.traveldate &&
        e1?.state == e2?.state &&
        e1?.createddate == e2?.createddate &&
        e1?.start == e2?.start &&
        e1?.end == e2?.end &&
        e1?.lightcolor == e2?.lightcolor &&
        e1?.darkcolor == e2?.darkcolor &&
        e1?.requestedby == e2?.requestedby &&
        e1?.seatsrequired == e2?.seatsrequired &&
        e1?.seatsalloted == e2?.seatsalloted &&
        e1?.type == e2?.type &&
        e1?.byAdmin == e2?.byAdmin &&
        e1?.routeSno == e2?.routeSno &&
        e1?.typeOfVeh == e2?.typeOfVeh &&
        e1?.vacancy == e2?.vacancy &&
        e1?.bustype == e2?.bustype &&
        e1?.busalloted == e2?.busalloted;
  }

  @override
  int hash(RequestsRecord? e) => const ListEquality().hash([
        e?.unit,
        e?.traveldate,
        e?.state,
        e?.createddate,
        e?.start,
        e?.end,
        e?.lightcolor,
        e?.darkcolor,
        e?.requestedby,
        e?.seatsrequired,
        e?.seatsalloted,
        e?.type,
        e?.byAdmin,
        e?.routeSno,
        e?.typeOfVeh,
        e?.vacancy,
        e?.bustype,
        e?.busalloted
      ]);

  @override
  bool isValidKey(Object? o) => o is RequestsRecord;
}
