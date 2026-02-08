import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CharterLoadRecord extends FirestoreRecord {
  CharterLoadRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "CurrentLoad" field.
  double? _currentLoad;
  double get currentLoad => _currentLoad ?? 0.0;
  bool hasCurrentLoad() => _currentLoad != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  bool hasUnit() => _unit != null;

  // "offrDl" field.
  int? _offrDl;
  int get offrDl => _offrDl ?? 0;
  bool hasOffrDl() => _offrDl != null;

  // "JCODl" field.
  int? _jCODl;
  int get jCODl => _jCODl ?? 0;
  bool hasJCODl() => _jCODl != null;

  // "OR_Dl" field.
  int? _oRDl;
  int get oRDl => _oRDl ?? 0;
  bool hasORDl() => _oRDl != null;

  // "offr_CH" field.
  int? _offrCH;
  int get offrCH => _offrCH ?? 0;
  bool hasOffrCH() => _offrCH != null;

  // "JCO_CH" field.
  int? _jcoCh;
  int get jcoCh => _jcoCh ?? 0;
  bool hasJcoCh() => _jcoCh != null;

  // "OR_CH" field.
  int? _orCh;
  int get orCh => _orCh ?? 0;
  bool hasOrCh() => _orCh != null;

  // "offr_leh" field.
  int? _offrLeh;
  int get offrLeh => _offrLeh ?? 0;
  bool hasOffrLeh() => _offrLeh != null;

  // "JCO_leh" field.
  int? _jCOLeh;
  int get jCOLeh => _jCOLeh ?? 0;
  bool hasJCOLeh() => _jCOLeh != null;

  // "OR_leh" field.
  int? _oRLeh;
  int get oRLeh => _oRLeh ?? 0;
  bool hasORLeh() => _oRLeh != null;

  // "total_DL" field.
  int? _totalDL;
  int get totalDL => _totalDL ?? 0;
  bool hasTotalDL() => _totalDL != null;

  // "total_CH" field.
  int? _totalCH;
  int get totalCH => _totalCH ?? 0;
  bool hasTotalCH() => _totalCH != null;

  // "total_leh" field.
  int? _totalLeh;
  int get totalLeh => _totalLeh ?? 0;
  bool hasTotalLeh() => _totalLeh != null;

  // "airinoffr" field.
  int? _airinoffr;
  int get airinoffr => _airinoffr ?? 0;
  bool hasAirinoffr() => _airinoffr != null;

  // "airinjco" field.
  int? _airinjco;
  int get airinjco => _airinjco ?? 0;
  bool hasAirinjco() => _airinjco != null;

  // "airinor" field.
  int? _airinor;
  int get airinor => _airinor ?? 0;
  bool hasAirinor() => _airinor != null;

  // "airoutoffr" field.
  int? _airoutoffr;
  int get airoutoffr => _airoutoffr ?? 0;
  bool hasAiroutoffr() => _airoutoffr != null;

  // "airoutjco" field.
  int? _airoutjco;
  int get airoutjco => _airoutjco ?? 0;
  bool hasAiroutjco() => _airoutjco != null;

  // "airoutor" field.
  int? _airoutor;
  int get airoutor => _airoutor ?? 0;
  bool hasAiroutor() => _airoutor != null;

  // "totalairin" field.
  int? _totalairin;
  int get totalairin => _totalairin ?? 0;
  bool hasTotalairin() => _totalairin != null;

  // "totalairout" field.
  int? _totalairout;
  int get totalairout => _totalairout ?? 0;
  bool hasTotalairout() => _totalairout != null;

  // "offr_D" field.
  int? _offrD;
  int get offrD => _offrD ?? 0;
  bool hasOffrD() => _offrD != null;

  // "JCO_D" field.
  int? _jcoD;
  int get jcoD => _jcoD ?? 0;
  bool hasJcoD() => _jcoD != null;

  // "OR_D" field.
  int? _orD;
  int get orD => _orD ?? 0;
  bool hasOrD() => _orD != null;

  // "total_Dogra" field.
  int? _totalDogra;
  int get totalDogra => _totalDogra ?? 0;
  bool hasTotalDogra() => _totalDogra != null;

  // "offr_Chumathang" field.
  int? _offrChumathang;
  int get offrChumathang => _offrChumathang ?? 0;
  bool hasOffrChumathang() => _offrChumathang != null;

  // "JCO_chumathang" field.
  int? _jCOChumathang;
  int get jCOChumathang => _jCOChumathang ?? 0;
  bool hasJCOChumathang() => _jCOChumathang != null;

  // "OR_chumathang" field.
  int? _oRChumathang;
  int get oRChumathang => _oRChumathang ?? 0;
  bool hasORChumathang() => _oRChumathang != null;

  // "total_chumathang" field.
  int? _totalChumathang;
  int get totalChumathang => _totalChumathang ?? 0;
  bool hasTotalChumathang() => _totalChumathang != null;

  // "offr_karu" field.
  int? _offrKaru;
  int get offrKaru => _offrKaru ?? 0;
  bool hasOffrKaru() => _offrKaru != null;

  // "JCO_karu" field.
  int? _jCOKaru;
  int get jCOKaru => _jCOKaru ?? 0;
  bool hasJCOKaru() => _jCOKaru != null;

  // "OR_karu" field.
  int? _oRKaru;
  int get oRKaru => _oRKaru ?? 0;
  bool hasORKaru() => _oRKaru != null;

  // "total_karu" field.
  int? _totalKaru;
  int get totalKaru => _totalKaru ?? 0;
  bool hasTotalKaru() => _totalKaru != null;

  // "unitno" field.
  int? _unitno;
  int get unitno => _unitno ?? 0;
  bool hasUnitno() => _unitno != null;

  void _initializeFields() {
    _currentLoad = castToType<double>(snapshotData['CurrentLoad']);
    _unit = snapshotData['unit'] as String?;
    _offrDl = castToType<int>(snapshotData['offrDl']);
    _jCODl = castToType<int>(snapshotData['JCODl']);
    _oRDl = castToType<int>(snapshotData['OR_Dl']);
    _offrCH = castToType<int>(snapshotData['offr_CH']);
    _jcoCh = castToType<int>(snapshotData['JCO_CH']);
    _orCh = castToType<int>(snapshotData['OR_CH']);
    _offrLeh = castToType<int>(snapshotData['offr_leh']);
    _jCOLeh = castToType<int>(snapshotData['JCO_leh']);
    _oRLeh = castToType<int>(snapshotData['OR_leh']);
    _totalDL = castToType<int>(snapshotData['total_DL']);
    _totalCH = castToType<int>(snapshotData['total_CH']);
    _totalLeh = castToType<int>(snapshotData['total_leh']);
    _airinoffr = castToType<int>(snapshotData['airinoffr']);
    _airinjco = castToType<int>(snapshotData['airinjco']);
    _airinor = castToType<int>(snapshotData['airinor']);
    _airoutoffr = castToType<int>(snapshotData['airoutoffr']);
    _airoutjco = castToType<int>(snapshotData['airoutjco']);
    _airoutor = castToType<int>(snapshotData['airoutor']);
    _totalairin = castToType<int>(snapshotData['totalairin']);
    _totalairout = castToType<int>(snapshotData['totalairout']);
    _offrD = castToType<int>(snapshotData['offr_D']);
    _jcoD = castToType<int>(snapshotData['JCO_D']);
    _orD = castToType<int>(snapshotData['OR_D']);
    _totalDogra = castToType<int>(snapshotData['total_Dogra']);
    _offrChumathang = castToType<int>(snapshotData['offr_Chumathang']);
    _jCOChumathang = castToType<int>(snapshotData['JCO_chumathang']);
    _oRChumathang = castToType<int>(snapshotData['OR_chumathang']);
    _totalChumathang = castToType<int>(snapshotData['total_chumathang']);
    _offrKaru = castToType<int>(snapshotData['offr_karu']);
    _jCOKaru = castToType<int>(snapshotData['JCO_karu']);
    _oRKaru = castToType<int>(snapshotData['OR_karu']);
    _totalKaru = castToType<int>(snapshotData['total_karu']);
    _unitno = castToType<int>(snapshotData['unitno']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('CharterLoad');

  static Stream<CharterLoadRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CharterLoadRecord.fromSnapshot(s));

  static Future<CharterLoadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CharterLoadRecord.fromSnapshot(s));

  static CharterLoadRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CharterLoadRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CharterLoadRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CharterLoadRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CharterLoadRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CharterLoadRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCharterLoadRecordData({
  double? currentLoad,
  String? unit,
  int? offrDl,
  int? jCODl,
  int? oRDl,
  int? offrCH,
  int? jcoCh,
  int? orCh,
  int? offrLeh,
  int? jCOLeh,
  int? oRLeh,
  int? totalDL,
  int? totalCH,
  int? totalLeh,
  int? airinoffr,
  int? airinjco,
  int? airinor,
  int? airoutoffr,
  int? airoutjco,
  int? airoutor,
  int? totalairin,
  int? totalairout,
  int? offrD,
  int? jcoD,
  int? orD,
  int? totalDogra,
  int? offrChumathang,
  int? jCOChumathang,
  int? oRChumathang,
  int? totalChumathang,
  int? offrKaru,
  int? jCOKaru,
  int? oRKaru,
  int? totalKaru,
  int? unitno,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'CurrentLoad': currentLoad,
      'unit': unit,
      'offrDl': offrDl,
      'JCODl': jCODl,
      'OR_Dl': oRDl,
      'offr_CH': offrCH,
      'JCO_CH': jcoCh,
      'OR_CH': orCh,
      'offr_leh': offrLeh,
      'JCO_leh': jCOLeh,
      'OR_leh': oRLeh,
      'total_DL': totalDL,
      'total_CH': totalCH,
      'total_leh': totalLeh,
      'airinoffr': airinoffr,
      'airinjco': airinjco,
      'airinor': airinor,
      'airoutoffr': airoutoffr,
      'airoutjco': airoutjco,
      'airoutor': airoutor,
      'totalairin': totalairin,
      'totalairout': totalairout,
      'offr_D': offrD,
      'JCO_D': jcoD,
      'OR_D': orD,
      'total_Dogra': totalDogra,
      'offr_Chumathang': offrChumathang,
      'JCO_chumathang': jCOChumathang,
      'OR_chumathang': oRChumathang,
      'total_chumathang': totalChumathang,
      'offr_karu': offrKaru,
      'JCO_karu': jCOKaru,
      'OR_karu': oRKaru,
      'total_karu': totalKaru,
      'unitno': unitno,
    }.withoutNulls,
  );

  return firestoreData;
}

class CharterLoadRecordDocumentEquality implements Equality<CharterLoadRecord> {
  const CharterLoadRecordDocumentEquality();

  @override
  bool equals(CharterLoadRecord? e1, CharterLoadRecord? e2) {
    return e1?.currentLoad == e2?.currentLoad &&
        e1?.unit == e2?.unit &&
        e1?.offrDl == e2?.offrDl &&
        e1?.jCODl == e2?.jCODl &&
        e1?.oRDl == e2?.oRDl &&
        e1?.offrCH == e2?.offrCH &&
        e1?.jcoCh == e2?.jcoCh &&
        e1?.orCh == e2?.orCh &&
        e1?.offrLeh == e2?.offrLeh &&
        e1?.jCOLeh == e2?.jCOLeh &&
        e1?.oRLeh == e2?.oRLeh &&
        e1?.totalDL == e2?.totalDL &&
        e1?.totalCH == e2?.totalCH &&
        e1?.totalLeh == e2?.totalLeh &&
        e1?.airinoffr == e2?.airinoffr &&
        e1?.airinjco == e2?.airinjco &&
        e1?.airinor == e2?.airinor &&
        e1?.airoutoffr == e2?.airoutoffr &&
        e1?.airoutjco == e2?.airoutjco &&
        e1?.airoutor == e2?.airoutor &&
        e1?.totalairin == e2?.totalairin &&
        e1?.totalairout == e2?.totalairout &&
        e1?.offrD == e2?.offrD &&
        e1?.jcoD == e2?.jcoD &&
        e1?.orD == e2?.orD &&
        e1?.totalDogra == e2?.totalDogra &&
        e1?.offrChumathang == e2?.offrChumathang &&
        e1?.jCOChumathang == e2?.jCOChumathang &&
        e1?.oRChumathang == e2?.oRChumathang &&
        e1?.totalChumathang == e2?.totalChumathang &&
        e1?.offrKaru == e2?.offrKaru &&
        e1?.jCOKaru == e2?.jCOKaru &&
        e1?.oRKaru == e2?.oRKaru &&
        e1?.totalKaru == e2?.totalKaru &&
        e1?.unitno == e2?.unitno;
  }

  @override
  int hash(CharterLoadRecord? e) => const ListEquality().hash([
        e?.currentLoad,
        e?.unit,
        e?.offrDl,
        e?.jCODl,
        e?.oRDl,
        e?.offrCH,
        e?.jcoCh,
        e?.orCh,
        e?.offrLeh,
        e?.jCOLeh,
        e?.oRLeh,
        e?.totalDL,
        e?.totalCH,
        e?.totalLeh,
        e?.airinoffr,
        e?.airinjco,
        e?.airinor,
        e?.airoutoffr,
        e?.airoutjco,
        e?.airoutor,
        e?.totalairin,
        e?.totalairout,
        e?.offrD,
        e?.jcoD,
        e?.orD,
        e?.totalDogra,
        e?.offrChumathang,
        e?.jCOChumathang,
        e?.oRChumathang,
        e?.totalChumathang,
        e?.offrKaru,
        e?.jCOKaru,
        e?.oRKaru,
        e?.totalKaru,
        e?.unitno
      ]);

  @override
  bool isValidKey(Object? o) => o is CharterLoadRecord;
}
