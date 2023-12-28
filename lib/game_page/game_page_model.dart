import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'game_page_widget.dart' show GamePageWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class GamePageModel extends FlutterFlowModel<GamePageWidget> {
  ///  Local state fields for this page.

  int? accuracy = 0;

  int? correctAnswerCounter = 0;

  int? totalAnswers = 0;

  int? comboCounter = 0;

  Color? buttonColor;

  Color? buttonTextColor;

  String? buttonSound = '';

  int tableA = 0;

  int tableB = 0;

  List<int> buttonNums = [];
  void addToButtonNums(int item) => buttonNums.add(item);
  void removeFromButtonNums(int item) => buttonNums.remove(item);
  void removeAtIndexFromButtonNums(int index) => buttonNums.removeAt(index);
  void insertAtIndexInButtonNums(int index, int item) =>
      buttonNums.insert(index, item);
  void updateButtonNumsAtIndex(int index, Function(int) updateFn) =>
      buttonNums[index] = updateFn(buttonNums[index]);

  int correctAnswer = 0;

  bool? isCorrect;

  int? bestRoundScore = 0;

  int? bestRoundAccuracy = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Timer widget.
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  AudioPlayer? soundPlayer3;
  AudioPlayer? soundPlayer4;
  AudioPlayer? soundPlayer5;
  AudioPlayer? soundPlayer6;
  AudioPlayer? soundPlayer7;
  AudioPlayer? soundPlayer8;
  AudioPlayer? soundPlayer9;
  AudioPlayer? soundPlayer10;
  AudioPlayer? soundPlayer11;
  AudioPlayer? soundPlayer12;
  AudioPlayer? soundPlayer13;
  AudioPlayer? soundPlayer14;
  AudioPlayer? soundPlayer15;
  AudioPlayer? soundPlayer16;
  AudioPlayer? soundPlayer17;
  AudioPlayer? soundPlayer18;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    timerController.dispose();
  }

  /// Action blocks are added here.

  Future isAnswerCorrect(
    BuildContext context, {
    required int? buttonNum,
  }) async {
    totalAnswers = totalAnswers! + 1;
    if (correctAnswer == FFAppState().buttonNums[buttonNum!]) {
      comboCounter = comboCounter! + 1;
      buttonColor =
          functions.changeButtonColor(comboCounter, FFAppState().themeNumber);
      buttonTextColor = functions.changeButtonTextColor(
          comboCounter, FFAppState().themeNumber);
      correctAnswerCounter = correctAnswerCounter! + 1;
      accuracy = ((correctAnswerCounter! / totalAnswers!) * 100).toInt();
      isCorrect = true;
    } else {
      comboCounter = 0;
      buttonColor =
          functions.changeButtonColor(comboCounter, FFAppState().themeNumber);
      buttonTextColor = functions.changeButtonTextColor(
          comboCounter, FFAppState().themeNumber);
      accuracy = ((correctAnswerCounter! / totalAnswers!) * 100).toInt();
      isCorrect = false;
    }
  }

  Future newRound(BuildContext context) async {
    tableA = functions.randomNumber(
        FFAppState().lowestTable.toInt(), FFAppState().highestTable.toInt())!;
    tableB = functions.randomNumber(
        FFAppState().lowestTable.toInt(), FFAppState().highestTable.toInt())!;
    if (FFAppState().gameMode == 1) {
      while ((int numA, int numB) {
        return numA % numB != 0 ? true : false;
      }(tableA, tableB)) {
        tableA = functions.randomNumber(FFAppState().lowestTable.toInt(),
            FFAppState().highestTable.toInt())!;
        tableB = functions.randomNumber(FFAppState().lowestTable.toInt(),
            FFAppState().highestTable.toInt())!;
      }
    }
    correctAnswer = () {
      if (FFAppState().gameMode == 0) {
        return (tableA * tableB);
      } else if (FFAppState().gameMode == 1) {
        return (tableA ~/ tableB);
      } else if (FFAppState().gameMode == 2) {
        return (tableA + tableB);
      } else {
        return ((tableA - tableB).abs());
      }
    }();
    FFAppState().update(() {
      FFAppState().buttonNums = () {
        if (FFAppState().gameMode == 0) {
          return functions.multiplicationAnswersList(
              tableA,
              tableB,
              FFAppState().lowestTable.toInt(),
              FFAppState().highestTable.toInt())!;
        } else if (FFAppState().gameMode == 1) {
          return functions.divisionAnswersList(
              tableA,
              tableB,
              FFAppState().lowestTable.toInt(),
              FFAppState().highestTable.toInt())!;
        } else if (FFAppState().gameMode == 2) {
          return functions.additionAnswersList(
              tableA,
              tableB,
              FFAppState().lowestTable.toInt(),
              FFAppState().highestTable.toInt())!;
        } else {
          return functions.subtractionAnswersList(
              tableA,
              tableB,
              FFAppState().lowestTable.toInt(),
              FFAppState().highestTable.toInt())!;
        }
      }()
          .toList()
          .cast<int>();
    });
  }

  Future updateBestStats(BuildContext context) async {
    if (correctAnswerCounter! > bestRoundScore!) {
      if ((int bestScore, int highScore) {
        return bestScore > highScore ? true : false;
      }(correctAnswerCounter!, FFAppState().highScore)) {
        FFAppState().highScoreAccuracy = accuracy!;
        FFAppState().highScore = correctAnswerCounter!;
      }
    } else {
      if ((int bestScore, int highScore) {
        return bestScore > highScore ? true : false;
      }(bestRoundScore!, FFAppState().highScore)) {
        FFAppState().highScoreAccuracy = bestRoundAccuracy!;
        FFAppState().highScore = bestRoundScore!;
      }
    }

    context.goNamed(
      'StartPage',
      extra: <String, dynamic>{
        kTransitionInfoKey: const TransitionInfo(
          hasTransition: true,
          transitionType: PageTransitionType.fade,
        ),
      },
    );
  }

  /// Additional helper methods are added here.
}
