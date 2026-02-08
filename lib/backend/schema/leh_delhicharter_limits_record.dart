import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LehDelhicharterLimitsRecord extends FirestoreRecord {
  LehDelhicharterLimitsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "mon_limit" field.
  int? _monLimit;
  int get monLimit => _monLimit ?? 0;
  bool hasMonLimit() => _monLimit != null;

  // "tue_limit" field.
  int? _tueLimit;
  int get tueLimit => _tueLimit ?? 0;
  bool hasTueLimit() => _tueLimit != null;

  // "wed_limit" field.
  int? _wedLimit;
  int get wedLimit => _wedLimit ?? 0;
  bool hasWedLimit() => _wedLimit != null;

  // "thur_limit" field.
  int? _thurLimit;
  int get thurLimit => _thurLimit ?? 0;
  bool hasThurLimit() => _thurLimit != null;

  // "fri_limit" field.
  int? _friLimit;
  int get friLimit => _friLimit ?? 0;
  bool hasFriLimit() => _friLimit != null;

  // "sat_limit" field.
  int? _satLimit;
  int get satLimit => _satLimit ?? 0;
  bool hasSatLimit() => _satLimit != null;

  // "sun_limit" field.
  int? _sunLimit;
  int get sunLimit => _sunLimit ?? 0;
  bool hasSunLimit() => _sunLimit != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as String?;
    _monLimit = castToType<int>(snapshotData['mon_limit']);
    _tueLimit = castToType<int>(snapshotData['tue_limit']);
    _wedLimit = castToType<int>(snapshotData['wed_limit']);
    _thurLimit = castToType<int>(snapshotData['thur_limit']);
    _friLimit = castToType<int>(snapshotData['fri_limit']);
    _satLimit = castToType<int>(snapshotData['sat_limit']);
    _sunLimit = castToType<int>(snapshotData['sun_limit']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('leh-delhicharter_limits');

  static Stream<LehDelhicharterLimitsRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => LehDelhicharterLimitsRecord.fromSnapshot(s));

  static Future<LehDelhicharterLimitsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => LehDelhicharterLimitsRecord.fromSnapshot(s));

  static LehDelhicharterLimitsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LehDelhicharterLimitsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LehDelhicharterLimitsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LehDelhicharterLimitsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LehDelhicharterLimitsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LehDelhicharterLimitsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLehDelhicharterLimitsRecordData({
  String? userId,
  int? monLimit,
  int? tueLimit,
  int? wedLimit,
  int? thurLimit,
  int? friLimit,
  int? satLimit,
  int? sunLimit,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'mon_limit': monLimit,
      'tue_limit': tueLimit,
      'wed_limit': wedLimit,
      'thur_limit': thurLimit,
      'fri_limit': friLimit,
      'sat_limit': satLimit,
      'sun_limit': sunLimit,
    }.withoutNulls,
  );

  return firestoreData;
}

class LehDelhicharterLimitsRecordDocumentEquality
    implements Equality<LehDelhicharterLimitsRecord> {
  const LehDelhicharterLimitsRecordDocumentEquality();

  @override
  bool equals(
      LehDelhicharterLimitsRecord? e1, LehDelhicharterLimitsRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.monLimit == e2?.monLimit &&
        e1?.tueLimit == e2?.tueLimit &&
        e1?.wedLimit == e2?.wedLimit &&
        e1?.thurLimit == e2?.thurLimit &&
        e1?.friLimit == e2?.friLimit &&
        e1?.satLimit == e2?.satLimit &&
        e1?.sunLimit == e2?.sunLimit;
  }

  @override
  int hash(LehDelhicharterLimitsRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.monLimit,
        e?.tueLimit,
        e?.wedLimit,
        e?.thurLimit,
        e?.friLimit,
        e?.satLimit,
        e?.sunLimit
      ]);

  @override
  bool isValidKey(Object? o) => o is LehDelhicharterLimitsRecord;
}
