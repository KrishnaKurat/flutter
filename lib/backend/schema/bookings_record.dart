import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingsRecord extends FirestoreRecord {
  BookingsRecord._(
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

  // "bookedby" field.
  String? _bookedby;
  String get bookedby => _bookedby ?? '';
  bool hasBookedby() => _bookedby != null;

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

  // "requests" field.
  DocumentReference? _requests;
  DocumentReference? get requests => _requests;
  bool hasRequests() => _requests != null;

  // "seatallocated" field.
  int? _seatallocated;
  int get seatallocated => _seatallocated ?? 0;
  bool hasSeatallocated() => _seatallocated != null;

  // "seatsrequested" field.
  int? _seatsrequested;
  int get seatsrequested => _seatsrequested ?? 0;
  bool hasSeatsrequested() => _seatsrequested != null;

  // "Type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

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

  // "bustype" field.
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
    _bookedby = snapshotData['bookedby'] as String?;
    _start = snapshotData['start'] as String?;
    _end = snapshotData['end'] as String?;
    _lightcolor = getSchemaColor(snapshotData['Lightcolor']);
    _darkcolor = getSchemaColor(snapshotData['Darkcolor']);
    _requests = snapshotData['requests'] as DocumentReference?;
    _seatallocated = castToType<int>(snapshotData['seatallocated']);
    _seatsrequested = castToType<int>(snapshotData['seatsrequested']);
    _type = snapshotData['Type'] as String?;
    _routeSno = castToType<int>(snapshotData['routeSno']);
    _typeOfVeh = snapshotData['type_of_veh'] as String?;
    _vacancy = snapshotData['vacancy'] as DocumentReference?;
    _bustype = snapshotData['bustype'] as String?;
    _busalloted = snapshotData['busalloted'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingsRecord.fromSnapshot(s));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingsRecord.fromSnapshot(s));

  static BookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingsRecordData({
  String? unit,
  DateTime? traveldate,
  String? state,
  DateTime? createddate,
  String? bookedby,
  String? start,
  String? end,
  Color? lightcolor,
  Color? darkcolor,
  DocumentReference? requests,
  int? seatallocated,
  int? seatsrequested,
  String? type,
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
      'bookedby': bookedby,
      'start': start,
      'end': end,
      'Lightcolor': lightcolor,
      'Darkcolor': darkcolor,
      'requests': requests,
      'seatallocated': seatallocated,
      'seatsrequested': seatsrequested,
      'Type': type,
      'routeSno': routeSno,
      'type_of_veh': typeOfVeh,
      'vacancy': vacancy,
      'bustype': bustype,
      'busalloted': busalloted,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingsRecordDocumentEquality implements Equality<BookingsRecord> {
  const BookingsRecordDocumentEquality();

  @override
  bool equals(BookingsRecord? e1, BookingsRecord? e2) {
    return e1?.unit == e2?.unit &&
        e1?.traveldate == e2?.traveldate &&
        e1?.state == e2?.state &&
        e1?.createddate == e2?.createddate &&
        e1?.bookedby == e2?.bookedby &&
        e1?.start == e2?.start &&
        e1?.end == e2?.end &&
        e1?.lightcolor == e2?.lightcolor &&
        e1?.darkcolor == e2?.darkcolor &&
        e1?.requests == e2?.requests &&
        e1?.seatallocated == e2?.seatallocated &&
        e1?.seatsrequested == e2?.seatsrequested &&
        e1?.type == e2?.type &&
        e1?.routeSno == e2?.routeSno &&
        e1?.typeOfVeh == e2?.typeOfVeh &&
        e1?.vacancy == e2?.vacancy &&
        e1?.bustype == e2?.bustype &&
        e1?.busalloted == e2?.busalloted;
  }

  @override
  int hash(BookingsRecord? e) => const ListEquality().hash([
        e?.unit,
        e?.traveldate,
        e?.state,
        e?.createddate,
        e?.bookedby,
        e?.start,
        e?.end,
        e?.lightcolor,
        e?.darkcolor,
        e?.requests,
        e?.seatallocated,
        e?.seatsrequested,
        e?.type,
        e?.routeSno,
        e?.typeOfVeh,
        e?.vacancy,
        e?.bustype,
        e?.busalloted
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingsRecord;
}
