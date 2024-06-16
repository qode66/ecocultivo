import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'backend/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      _vacio = prefs.getBool('ff_vacio') ?? _vacio;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _botonSinRegistrarse = false;
  bool get botonSinRegistrarse => _botonSinRegistrarse;
  set botonSinRegistrarse(bool value) {
    _botonSinRegistrarse = value;
  }

  String _diarioCultSelec = '';
  String get diarioCultSelec => _diarioCultSelec;
  set diarioCultSelec(String value) {
    _diarioCultSelec = value;
  }

  String _diarioOperSelec = '';
  String get diarioOperSelec => _diarioOperSelec;
  set diarioOperSelec(String value) {
    _diarioOperSelec = value;
  }

  List<int> _row = [1, 2, 3, 4, 5];
  List<int> get row => _row;
  set row(List<int> value) {
    _row = value;
  }

  void addToRow(int value) {
    row.add(value);
  }

  void removeFromRow(int value) {
    row.remove(value);
  }

  void removeAtIndexFromRow(int index) {
    row.removeAt(index);
  }

  void updateRowAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    row[index] = updateFn(_row[index]);
  }

  void insertAtIndexInRow(int index, int value) {
    row.insert(index, value);
  }

  List<String> _COLUMN = ['A', 'B', 'C', 'D', 'E'];
  List<String> get COLUMN => _COLUMN;
  set COLUMN(List<String> value) {
    _COLUMN = value;
  }

  void addToCOLUMN(String value) {
    COLUMN.add(value);
  }

  void removeFromCOLUMN(String value) {
    COLUMN.remove(value);
  }

  void removeAtIndexFromCOLUMN(int index) {
    COLUMN.removeAt(index);
  }

  void updateCOLUMNAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    COLUMN[index] = updateFn(_COLUMN[index]);
  }

  void insertAtIndexInCOLUMN(int index, String value) {
    COLUMN.insert(index, value);
  }

  bool _vacio = false;
  bool get vacio => _vacio;
  set vacio(bool value) {
    _vacio = value;
    prefs.setBool('ff_vacio', value);
  }

  String _cultivoSelect = '';
  String get cultivoSelect => _cultivoSelect;
  set cultivoSelect(String value) {
    _cultivoSelect = value;
  }

  String _pesticidaSelect = '';
  String get pesticidaSelect => _pesticidaSelect;
  set pesticidaSelect(String value) {
    _pesticidaSelect = value;
  }

  String _fertilizantesSelect = '';
  String get fertilizantesSelect => _fertilizantesSelect;
  set fertilizantesSelect(String value) {
    _fertilizantesSelect = value;
  }

  String _plagasSelect = '';
  String get plagasSelect => _plagasSelect;
  set plagasSelect(String value) {
    _plagasSelect = value;
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
