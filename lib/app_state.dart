import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _RoleAppState = prefs.getString('ff_RoleAppState') ?? _RoleAppState;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _RoleAppState = '';
  String get RoleAppState => _RoleAppState;
  set RoleAppState(String value) {
    _RoleAppState = value;
    prefs.setString('ff_RoleAppState', value);
  }

  DateTime? _currentDate;
  DateTime? get currentDate => _currentDate;
  set currentDate(DateTime? value) {
    _currentDate = value;
  }

  DateTime? _currentDateCharter;
  DateTime? get currentDateCharter => _currentDateCharter;
  set currentDateCharter(DateTime? value) {
    _currentDateCharter = value;
  }

  String _UID = '';
  String get UID => _UID;
  set UID(String value) {
    _UID = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
