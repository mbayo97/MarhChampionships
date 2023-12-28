import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'game_page_model.dart';
export 'game_page_model.dart';

class GamePageWidget extends StatefulWidget {
  const GamePageWidget({Key? key}) : super(key: key);

  @override
  _GamePageWidgetState createState() => _GamePageWidgetState();
}

class _GamePageWidgetState extends State<GamePageWidget>
    with TickerProviderStateMixin {
  late GamePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.16, 1.16),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.16, 1.16),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.16, 1.16),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.16, 1.16),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.16, 1.16),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.16, 1.16),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.16, 1.16),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.16, 1.16),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation9': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(1.0, 1.0),
          end: Offset(1.16, 1.16),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GamePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.buttonColor = functions.changeButtonColor(
          _model.comboCounter, FFAppState().themeNumber);
      _model.buttonTextColor = functions.changeButtonTextColor(
          _model.comboCounter, FFAppState().themeNumber);
      await _model.newRound(context);
      setState(() {});
      _model.timerController.onStartTimer();
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    SchedulerBinding.instance.addPostFrameCallback((_) {
      animationsMap['containerOnPageLoadAnimation1']
          ?.controller
          .forward(from: 0.0);
      animationsMap['containerOnPageLoadAnimation2']
          ?.controller
          .forward(from: 0.0);
      animationsMap['containerOnPageLoadAnimation3']
          ?.controller
          .forward(from: 0.0);
      animationsMap['containerOnPageLoadAnimation4']
          ?.controller
          .forward(from: 0.0);
      animationsMap['containerOnPageLoadAnimation5']
          ?.controller
          .forward(from: 0.0);
      animationsMap['containerOnPageLoadAnimation6']
          ?.controller
          .forward(from: 0.0);
      animationsMap['containerOnPageLoadAnimation7']
          ?.controller
          .forward(from: 0.0);
      animationsMap['containerOnPageLoadAnimation8']
          ?.controller
          .forward(from: 0.0);
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(),
                child: FlutterFlowVideoPlayer(
                  path: functions
                      .changeBackgroundGameVideo(FFAppState().themeNumber)!,
                  videoType: VideoType.asset,
                  autoPlay: true,
                  looping: true,
                  showControls: false,
                  allowFullScreen: false,
                  allowPlaybackSpeedMenu: false,
                  pauseOnNavigate: false,
                ),
              ),
              Container(
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        if (FFAppState().autoStartRound == true)
                          FlutterFlowIconButton(
                            borderColor: Colors.white,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: MediaQuery.sizeOf(context).width * 0.15,
                            fillColor: Colors.white,
                            icon: FaIcon(
                              FontAwesomeIcons.angleLeft,
                              color: Colors.black,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              await _model.updateBestStats(context);
                            },
                          ),
                        Opacity(
                          opacity: FFAppState().containerOpacity,
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: FlutterFlowTimer(
                                initialTime: FFAppState().time,
                                getDisplayTime: (value) =>
                                    StopWatchTimer.getDisplayTime(
                                  value,
                                  hours: false,
                                  milliSecond: false,
                                ),
                                controller: _model.timerController,
                                updateStateInterval:
                                    Duration(milliseconds: 1000),
                                onChanged: (value, displayTime, shouldUpdate) {
                                  _model.timerMilliseconds = value;
                                  _model.timerValue = displayTime;
                                  if (shouldUpdate) setState(() {});
                                },
                                onEnded: () async {
                                  if (FFAppState().autoStartRound == false) {
                                    await _model.updateBestStats(context);
                                    return;
                                  } else {
                                    if (_model.correctAnswerCounter! >
                                        _model.bestRoundScore!) {
                                      _model.bestRoundScore =
                                          _model.correctAnswerCounter;
                                      _model.bestRoundAccuracy =
                                          _model.accuracy;
                                    }
                                    _model.accuracy = 0;
                                    _model.correctAnswerCounter = 0;
                                    _model.totalAnswers = 0;
                                    _model.comboCounter = 0;
                                    _model.buttonColor =
                                        functions.changeButtonColor(
                                            _model.comboCounter,
                                            FFAppState().themeNumber);
                                    _model.buttonTextColor =
                                        functions.changeButtonTextColor(
                                            _model.comboCounter,
                                            FFAppState().themeNumber);
                                    await _model.newRound(context);
                                    _model.timerController.onResetTimer();

                                    _model.timerController.onStartTimer();
                                    return;
                                  }
                                },
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Colors.black,
                                      fontSize: 45.0,
                                    ),
                              ),
                            ),
                          ),
                        ),
                        if (FFAppState().autoStartRound == true)
                          FlutterFlowIconButton(
                            borderColor: Colors.white,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: MediaQuery.sizeOf(context).width * 0.15,
                            fillColor: Colors.white,
                            icon: FaIcon(
                              FontAwesomeIcons.redo,
                              color: Colors.black,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              _model.timerController.onResetTimer();

                              _model.timerController.onStartTimer();
                              await _model.newRound(context);
                            },
                          ),
                      ],
                    ),
                    Opacity(
                      opacity: FFAppState().containerOpacity,
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: RichText(
                            textScaleFactor:
                                MediaQuery.of(context).textScaleFactor,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: valueOrDefault<String>(
                                    FFAppState().gameMode == 3
                                        ? ((int tableA, int tableB) {
                                            return tableA > tableB
                                                ? tableA.toString()
                                                : tableB.toString();
                                          }(_model.tableA, _model.tableB))
                                        : _model.tableA.toString(),
                                    '0',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: () {
                                    if (FFAppState().gameMode == 0) {
                                      return 'x';
                                    } else if (FFAppState().gameMode == 1) {
                                      return '/';
                                    } else if (FFAppState().gameMode == 2) {
                                      return '+';
                                    } else {
                                      return '-';
                                    }
                                  }(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 40.0,
                                  ),
                                ),
                                TextSpan(
                                  text: valueOrDefault<String>(
                                    FFAppState().gameMode == 3
                                        ? ((int tableA, int tableB) {
                                            return tableA < tableB
                                                ? tableA.toString()
                                                : tableB.toString();
                                          }(_model.tableA, _model.tableB))
                                        : _model.tableB.toString(),
                                    '0',
                                  ),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40.0,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    fontSize: 25.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: FFAppState().containerOpacity,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Visibility(
                          visible: FFAppState().autoStartRound == true,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              RichText(
                                textScaleFactor:
                                    MediaQuery.of(context).textScaleFactor,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Top S.  - ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.black,
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        _model.bestRoundScore?.toString(),
                                        '0',
                                      ),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25.0,
                                      ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              RichText(
                                textScaleFactor:
                                    MediaQuery.of(context).textScaleFactor,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Top A. - ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.black,
                                            fontSize: 25.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    TextSpan(
                                      text: valueOrDefault<String>(
                                        _model.bestRoundAccuracy?.toString(),
                                        '0',
                                      ),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '%',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25.0,
                                      ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RichText(
                            textScaleFactor:
                                MediaQuery.of(context).textScaleFactor,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Score - ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: valueOrDefault<String>(
                                    _model.correctAnswerCounter?.toString(),
                                    '0',
                                  ),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25.0,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          RichText(
                            textScaleFactor:
                                MediaQuery.of(context).textScaleFactor,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Accuracy - ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: valueOrDefault<String>(
                                    _model.accuracy?.toString(),
                                    '0',
                                  ),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '%',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25.0,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Wrap(
                        spacing: 16.0,
                        runSpacing: 16.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await _model.isAnswerCorrect(
                                context,
                                buttonNum: 0,
                              );
                              if (_model.isCorrect == true) {
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation1'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation1']!
                                      .controller
                                      .forward(from: 0.0)
                                      .whenComplete(animationsMap[
                                              'containerOnActionTriggerAnimation1']!
                                          .controller
                                          .reverse);
                                }
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer1 ??= AudioPlayer();
                                  if (_model.soundPlayer1!.playing) {
                                    await _model.soundPlayer1!.stop();
                                  }
                                  _model.soundPlayer1!.setVolume(0.53);
                                   
                                  _model.soundPlayer1!
                                      .setAsset(functions.changeButtonAudio(
                                          _model.comboCounter! - 1)!)
                                      .then((_) => _model.soundPlayer1!.play());
                                  //  await _model.player.play(audio.AssetSource(functions.changeButtonAudio(
                                  //         _model.comboCounter! - 1)!));
                                }
                                await _model.newRound(context);
                              } else {
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer2 ??= AudioPlayer();
                                  if (_model.soundPlayer2!.playing) {
                                    await _model.soundPlayer2!.stop();
                                  }
                                  _model.soundPlayer2!.setVolume(1.0);
                                  _model.soundPlayer2!
                                      .setAsset("assets/audios/wrong.wav")
                                      .then((_) => _model.soundPlayer2!.play());
                                // await _model.player.play(audio.AssetSource("audios/wrong.wav"));                                   
                                }
                                setState(() {});
                              }
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              decoration: BoxDecoration(
                                color: _model.buttonColor,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFAppState().buttonNums.first.toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: _model.buttonTextColor,
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                ),
                              ),
                            ),
                          ).animateOnActionTrigger(
                            animationsMap[
                                'containerOnActionTriggerAnimation1']!,
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await _model.isAnswerCorrect(
                                context,
                                buttonNum: 1,
                              );
                              if (_model.isCorrect == true) {
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation2'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation2']!
                                      .controller
                                      .forward(from: 0.0)
                                      .whenComplete(animationsMap[
                                              'containerOnActionTriggerAnimation2']!
                                          .controller
                                          .reverse);
                                }
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer3 ??= AudioPlayer();
                                  if (_model.soundPlayer3!.playing) {
                                    await _model.soundPlayer3!.stop();
                                  }
                                  _model.soundPlayer3!.setVolume(0.53);
                                  _model.soundPlayer3!
                                       .setAsset(functions.changeButtonAudio(
                                          _model.comboCounter! - 1)!)
                                      .then((_) => _model.soundPlayer3!.play());
                                }
                                await _model.newRound(context);
                              } else {
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer4 ??= AudioPlayer();
                                  if (_model.soundPlayer4!.playing) {
                                    await _model.soundPlayer4!.stop();
                                  }
                                  _model.soundPlayer4!.setVolume(1.0);
                                  _model.soundPlayer4!
                                      .setAsset("assets/audios/wrong.wav")
                                      .then((_) => _model.soundPlayer4!.play());
                                }
                                setState(() {});
                              }
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              decoration: BoxDecoration(
                                color: _model.buttonColor,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFAppState().buttonNums[1].toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: _model.buttonTextColor,
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                ),
                              ),
                            ),
                          ).animateOnActionTrigger(
                            animationsMap[
                                'containerOnActionTriggerAnimation2']!,
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await _model.isAnswerCorrect(
                                context,
                                buttonNum: 2,
                              );
                              if (_model.isCorrect == true) {
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation3'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation3']!
                                      .controller
                                      .forward(from: 0.0)
                                      .whenComplete(animationsMap[
                                              'containerOnActionTriggerAnimation3']!
                                          .controller
                                          .reverse);
                                }
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer5 ??= AudioPlayer();
                                  if (_model.soundPlayer5!.playing) {
                                    await _model.soundPlayer5!.stop();
                                  }
                                  _model.soundPlayer5!.setVolume(0.53);
                                  _model.soundPlayer5!
                                      .setAsset(functions.changeButtonAudio(
                                          _model.comboCounter! - 1)!)
                                      .then((_) => _model.soundPlayer5!.play());
                                }
                                await _model.newRound(context);
                              } else {
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer6 ??= AudioPlayer();
                                  if (_model.soundPlayer6!.playing) {
                                    await _model.soundPlayer6!.stop();
                                  }
                                  _model.soundPlayer6!.setVolume(1.0);
                                  _model.soundPlayer6!
                                      .setAsset("assets/audios/wrong.wav")
                                      .then((_) => _model.soundPlayer6!.play());
                                }
                                setState(() {});
                              }
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              decoration: BoxDecoration(
                                color: _model.buttonColor,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFAppState().buttonNums[2].toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: _model.buttonTextColor,
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                ),
                              ),
                            ),
                          ).animateOnActionTrigger(
                            animationsMap[
                                'containerOnActionTriggerAnimation3']!,
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await _model.isAnswerCorrect(
                                context,
                                buttonNum: 3,
                              );
                              if (_model.isCorrect == true) {
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation4'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation4']!
                                      .controller
                                      .forward(from: 0.0)
                                      .whenComplete(animationsMap[
                                              'containerOnActionTriggerAnimation4']!
                                          .controller
                                          .reverse);
                                }
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer7 ??= AudioPlayer();
                                  if (_model.soundPlayer7!.playing) {
                                    await _model.soundPlayer7!.stop();
                                  }
                                  _model.soundPlayer7!.setVolume(0.53);
                                  _model.soundPlayer7!
                                       .setAsset(functions.changeButtonAudio(
                                          _model.comboCounter! - 1)!)
                                      .then((_) => _model.soundPlayer7!.play());
                                }
                                await _model.newRound(context);
                              } else {
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer8 ??= AudioPlayer();
                                  if (_model.soundPlayer8!.playing) {
                                    await _model.soundPlayer8!.stop();
                                  }
                                  _model.soundPlayer8!.setVolume(1.0);
                                  _model.soundPlayer8!
                                     .setAsset("assets/audios/wrong.wav")
                                      .then((_) => _model.soundPlayer8!.play());
                                }
                                setState(() {});
                              }
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              decoration: BoxDecoration(
                                color: _model.buttonColor,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFAppState().buttonNums[3].toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: _model.buttonTextColor,
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                ),
                              ),
                            ),
                          ).animateOnActionTrigger(
                            animationsMap[
                                'containerOnActionTriggerAnimation4']!,
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await _model.isAnswerCorrect(
                                context,
                                buttonNum: 4,
                              );
                              if (_model.isCorrect == true) {
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation5'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation5']!
                                      .controller
                                      .forward(from: 0.0)
                                      .whenComplete(animationsMap[
                                              'containerOnActionTriggerAnimation5']!
                                          .controller
                                          .reverse);
                                }
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer9 ??= AudioPlayer();
                                  if (_model.soundPlayer9!.playing) {
                                    await _model.soundPlayer9!.stop();
                                  }
                                  _model.soundPlayer9!.setVolume(0.53);
                                  _model.soundPlayer9!
                                     .setAsset(functions.changeButtonAudio(
                                          _model.comboCounter! - 1)!)
                                      .then((_) => _model.soundPlayer9!.play());
                                }
                                await _model.newRound(context);
                              } else {
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer10 ??= AudioPlayer();
                                  if (_model.soundPlayer10!.playing) {
                                    await _model.soundPlayer10!.stop();
                                  }
                                  _model.soundPlayer10!.setVolume(1.0);
                                  _model.soundPlayer10!
                                     .setAsset("assets/audios/wrong.wav")
                                      .then(
                                          (_) => _model.soundPlayer10!.play());
                                }
                                setState(() {});
                              }
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              decoration: BoxDecoration(
                                color: _model.buttonColor,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFAppState().buttonNums[4].toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: _model.buttonTextColor,
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                ),
                              ),
                            ),
                          ).animateOnActionTrigger(
                            animationsMap[
                                'containerOnActionTriggerAnimation5']!,
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await _model.isAnswerCorrect(
                                context,
                                buttonNum: 5,
                              );
                              if (_model.isCorrect == true) {
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation6'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation6']!
                                      .controller
                                      .forward(from: 0.0)
                                      .whenComplete(animationsMap[
                                              'containerOnActionTriggerAnimation6']!
                                          .controller
                                          .reverse);
                                }
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer11 ??= AudioPlayer();
                                  if (_model.soundPlayer11!.playing) {
                                    await _model.soundPlayer11!.stop();
                                  }
                                  _model.soundPlayer11!.setVolume(0.53);
                                  _model.soundPlayer11!
                                    .setAsset(functions.changeButtonAudio(
                                          _model.comboCounter! - 1)!)
                                      .then(
                                          (_) => _model.soundPlayer11!.play());
                                }
                                await _model.newRound(context);
                              } else {
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer12 ??= AudioPlayer();
                                  if (_model.soundPlayer12!.playing) {
                                    await _model.soundPlayer12!.stop();
                                  }
                                  _model.soundPlayer12!.setVolume(1.0);
                                  _model.soundPlayer12!
                                     .setAsset("assets/audios/wrong.wav")
                                      .then(
                                          (_) => _model.soundPlayer12!.play());
                                }
                                setState(() {});
                              }
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              decoration: BoxDecoration(
                                color: _model.buttonColor,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFAppState().buttonNums[5].toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: _model.buttonTextColor,
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                ),
                              ),
                            ),
                          ).animateOnActionTrigger(
                            animationsMap[
                                'containerOnActionTriggerAnimation6']!,
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await _model.isAnswerCorrect(
                                context,
                                buttonNum: 6,
                              );
                              if (_model.isCorrect == true) {
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation7'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation7']!
                                      .controller
                                      .forward(from: 0.0)
                                      .whenComplete(animationsMap[
                                              'containerOnActionTriggerAnimation7']!
                                          .controller
                                          .reverse);
                                }
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer13 ??= AudioPlayer();
                                  if (_model.soundPlayer13!.playing) {
                                    await _model.soundPlayer13!.stop();
                                  }
                                  _model.soundPlayer13!.setVolume(0.53);
                                  _model.soundPlayer13!
                                    .setAsset(functions.changeButtonAudio(
                                          _model.comboCounter! - 1)!)
                                      .then(
                                          (_) => _model.soundPlayer13!.play());
                                }
                                await _model.newRound(context);
                              } else {
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer14 ??= AudioPlayer();
                                  if (_model.soundPlayer14!.playing) {
                                    await _model.soundPlayer14!.stop();
                                  }
                                  _model.soundPlayer14!.setVolume(1.0);
                                  _model.soundPlayer14!
                                     .setAsset("assets/audios/wrong.wav")
                                      .then(
                                          (_) => _model.soundPlayer14!.play());
                                }
                                setState(() {});
                              }
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              decoration: BoxDecoration(
                                color: _model.buttonColor,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFAppState().buttonNums[6].toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: _model.buttonTextColor,
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                ),
                              ),
                            ),
                          ).animateOnActionTrigger(
                            animationsMap[
                                'containerOnActionTriggerAnimation7']!,
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await _model.isAnswerCorrect(
                                context,
                                buttonNum: 7,
                              );
                              if (_model.isCorrect == true) {
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation8'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation8']!
                                      .controller
                                      .forward(from: 0.0)
                                      .whenComplete(animationsMap[
                                              'containerOnActionTriggerAnimation8']!
                                          .controller
                                          .reverse);
                                }
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer15 ??= AudioPlayer();
                                  if (_model.soundPlayer15!.playing) {
                                    await _model.soundPlayer15!.stop();
                                  }
                                  _model.soundPlayer15!.setVolume(0.53);
                                  _model.soundPlayer15!
                                      .setAsset(functions.changeButtonAudio(
                                          _model.comboCounter! - 1)!)
                                      .then(
                                          (_) => _model.soundPlayer15!.play());
                                }
                                await _model.newRound(context);
                              } else {
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer16 ??= AudioPlayer();
                                  if (_model.soundPlayer16!.playing) {
                                    await _model.soundPlayer16!.stop();
                                  }
                                  _model.soundPlayer16!.setVolume(1.0);
                                  _model.soundPlayer16!
                                       .setAsset("assets/audios/wrong.wav")
                                      .then(
                                          (_) => _model.soundPlayer16!.play());
                                }
                                setState(() {});
                              }
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              decoration: BoxDecoration(
                                color: _model.buttonColor,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFAppState().buttonNums[7].toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: _model.buttonTextColor,
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                ),
                              ),
                            ),
                          ).animateOnActionTrigger(
                            animationsMap[
                                'containerOnActionTriggerAnimation8']!,
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await _model.isAnswerCorrect(
                                context,
                                buttonNum: 8,
                              );
                              if (_model.isCorrect == true) {
                                if (animationsMap[
                                        'containerOnActionTriggerAnimation9'] !=
                                    null) {
                                  animationsMap[
                                          'containerOnActionTriggerAnimation9']!
                                      .controller
                                      .forward(from: 0.0)
                                      .whenComplete(animationsMap[
                                              'containerOnActionTriggerAnimation9']!
                                          .controller
                                          .reverse);
                                }
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer17 ??= AudioPlayer();
                                  if (_model.soundPlayer17!.playing) {
                                    await _model.soundPlayer17!.stop();
                                  }
                                  _model.soundPlayer17!.setVolume(0.53);
                                  _model.soundPlayer17!
                                        .setAsset(functions.changeButtonAudio(
                                          _model.comboCounter! - 1)!)
                                      .then(
                                          (_) => _model.soundPlayer17!.play());
                                }
                                await _model.newRound(context);
                              } else {
                                if (FFAppState().buttonSounds == true) {
                                  _model.soundPlayer18 ??= AudioPlayer();
                                  if (_model.soundPlayer18!.playing) {
                                    await _model.soundPlayer18!.stop();
                                  }
                                  _model.soundPlayer18!.setVolume(1.0);
                                  _model.soundPlayer18!
                                       .setAsset("assets/audios/wrong.wav")
                                      .then(
                                          (_) => _model.soundPlayer18!.play());
                                }
                                setState(() {});
                              }
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              height: MediaQuery.sizeOf(context).height * 0.15,
                              decoration: BoxDecoration(
                                color: _model.buttonColor,
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  FFAppState().buttonNums[8].toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: _model.buttonTextColor,
                                        fontSize: 35.0,
                                        fontWeight: FontWeight.w900,
                                      ),
                                ),
                              ),
                            ),
                          ).animateOnActionTrigger(
                            animationsMap[
                                'containerOnActionTriggerAnimation9']!,
                          ),
                        ],
                      ),
                    ),
                  ]
                      .divide(SizedBox(height: 30.0))
                      .around(SizedBox(height: 30.0)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
