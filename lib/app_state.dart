import 'package:flutter/material.dart';
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
  set themeNumber(int value) {
    _themeNumber = value;
  }

  int _highScoreAccuracy = 0;
  int get highScoreAccuracy => _highScoreAccuracy;
  set highScoreAccuracy(int value) {
    _highScoreAccuracy = value;
  }

  int _highScore = 0;
  int get highScore => _highScore;
  set highScore(int value) {
    _highScore = value;
  }

  int _time = 60000;
  int get time => _time;
  set time(int value) {
    _time = value;
  }

  bool _autoStartRound = false;
  bool get autoStartRound => _autoStartRound;
  set autoStartRound(bool value) {
    _autoStartRound = value;
  }

  double _lowestTable = 0;
  double get lowestTable => _lowestTable;
  set lowestTable(double value) {
    _lowestTable = value;
  }

  double _highestTable = 12;
  double get highestTable => _highestTable;
  set highestTable(double value) {
    _highestTable = value;
  }

  bool _buttonSounds = true;
  bool get buttonSounds => _buttonSounds;
  set buttonSounds(bool value) {
    _buttonSounds = value;
  }

  int _gameMode = 0;
  int get gameMode => _gameMode;
  set gameMode(int value) {
    _gameMode = value;
  }

  double _containerOpacity = 0.85;
  double get containerOpacity => _containerOpacity;
  set containerOpacity(double value) {
    _containerOpacity = value;
  }

  List<int> _buttonNums = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  List<int> get buttonNums => _buttonNums;
  set buttonNums(List<int> value) {
    _buttonNums = value;
  }

  void addToButtonNums(int value) {
    _buttonNums.add(value);
  }

  void removeFromButtonNums(int value) {
    _buttonNums.remove(value);
  }

  void removeAtIndexFromButtonNums(int index) {
    _buttonNums.removeAt(index);
  }

  void updateButtonNumsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _buttonNums[index] = updateFn(_buttonNums[index]);
  }

  void insertAtIndexInButtonNums(int index, int value) {
    _buttonNums.insert(index, value);
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
