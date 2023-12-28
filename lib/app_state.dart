import 'package:flutter/material.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _themeNumber = 1;
  int get themeNumber => _themeNumber;
  set themeNumber(int _value) {
    _themeNumber = _value;
  }

  int _highScoreAccuracy = 0;
  int get highScoreAccuracy => _highScoreAccuracy;
  set highScoreAccuracy(int _value) {
    _highScoreAccuracy = _value;
  }

  int _highScore = 0;
  int get highScore => _highScore;
  set highScore(int _value) {
    _highScore = _value;
  }

  int _time = 60000;
  int get time => _time;
  set time(int _value) {
    _time = _value;
  }

  bool _autoStartRound = false;
  bool get autoStartRound => _autoStartRound;
  set autoStartRound(bool _value) {
    _autoStartRound = _value;
  }

  double _lowestTable = 0;
  double get lowestTable => _lowestTable;
  set lowestTable(double _value) {
    _lowestTable = _value;
  }

  double _highestTable = 12;
  double get highestTable => _highestTable;
  set highestTable(double _value) {
    _highestTable = _value;
  }

  bool _buttonSounds = true;
  bool get buttonSounds => _buttonSounds;
  set buttonSounds(bool _value) {
    _buttonSounds = _value;
  }

  int _gameMode = 0;
  int get gameMode => _gameMode;
  set gameMode(int _value) {
    _gameMode = _value;
  }

  double _containerOpacity = 0.85;
  double get containerOpacity => _containerOpacity;
  set containerOpacity(double _value) {
    _containerOpacity = _value;
  }

  List<int> _buttonNums = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  List<int> get buttonNums => _buttonNums;
  set buttonNums(List<int> _value) {
    _buttonNums = _value;
  }

  void addToButtonNums(int _value) {
    _buttonNums.add(_value);
  }

  void removeFromButtonNums(int _value) {
    _buttonNums.remove(_value);
  }

  void removeAtIndexFromButtonNums(int _index) {
    _buttonNums.removeAt(_index);
  }

  void updateButtonNumsAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _buttonNums[_index] = updateFn(_buttonNums[_index]);
  }

  void insertAtIndexInButtonNums(int _index, int _value) {
    _buttonNums.insert(_index, _value);
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
