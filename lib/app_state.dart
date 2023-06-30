import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _selectedFestName =
          prefs.getString('ff_selectedFestName') ?? _selectedFestName;
    });
    _safeInit(() {
      _selectedFestYear =
          prefs.getString('ff_selectedFestYear') ?? _selectedFestYear;
    });
    _safeInit(() {
      _festRef = prefs.getString('ff_festRef')?.ref ?? _festRef;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _selectedFestName = '';
  String get selectedFestName => _selectedFestName;
  set selectedFestName(String _value) {
    _selectedFestName = _value;
    prefs.setString('ff_selectedFestName', _value);
  }

  String _selectedFestYear = '';
  String get selectedFestYear => _selectedFestYear;
  set selectedFestYear(String _value) {
    _selectedFestYear = _value;
    prefs.setString('ff_selectedFestYear', _value);
  }

  DocumentReference? _festRef;
  DocumentReference? get festRef => _festRef;
  set festRef(DocumentReference? _value) {
    _festRef = _value;
    _value != null
        ? prefs.setString('ff_festRef', _value.path)
        : prefs.remove('ff_festRef');
  }

  bool _proshowRegister = false;
  bool get proshowRegister => _proshowRegister;
  set proshowRegister(bool _value) {
    _proshowRegister = _value;
  }

  bool _eventRegister = false;
  bool get eventRegister => _eventRegister;
  set eventRegister(bool _value) {
    _eventRegister = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
