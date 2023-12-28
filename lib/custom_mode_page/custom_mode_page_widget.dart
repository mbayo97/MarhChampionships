import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'custom_mode_page_model.dart';
export 'custom_mode_page_model.dart';

class CustomModePageWidget extends StatefulWidget {
  const CustomModePageWidget({super.key});

  @override
  _CustomModePageWidgetState createState() => _CustomModePageWidgetState();
}

class _CustomModePageWidgetState extends State<CustomModePageWidget>
    with TickerProviderStateMixin {
  late CustomModePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'iconButtonOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 470.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.15, 1.15),
        ),
      ],
    ),
    'iconButtonOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 470.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.15, 1.15),
        ),
      ],
    ),
    'iconButtonOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 470.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.15, 1.15),
        ),
      ],
    ),
    'iconButtonOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 470.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.15, 1.15),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomModePageModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              buttonSize: 46.0,
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
                size: 24.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
          ),
          title: Text(
            'Custom Mode',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: 'Outfit',
                  color: Colors.black,
                  fontSize: 30.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            scrollDirection: Axis.vertical,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: MediaQuery.sizeOf(context).width * 0.15,
                    fillColor: (int gameMode) {
                      return gameMode == 0
                          ? const Color(0xFF42A5F5)
                          : const Color(0xFFFFFFFF);
                    }(FFAppState().gameMode),
                    icon: const Icon(
                      Icons.close,
                      color: Colors.black,
                      size: 40.0,
                    ),
                    onPressed: () async {
                      setState(() {
                        FFAppState().gameMode = 0;
                      });
                      if (animationsMap[
                              'iconButtonOnActionTriggerAnimation1'] !=
                          null) {
                        animationsMap['iconButtonOnActionTriggerAnimation1']!
                            .controller
                            .forward(from: 0.0)
                            .whenComplete(animationsMap[
                                    'iconButtonOnActionTriggerAnimation1']!
                                .controller
                                .reverse);
                      }
                    },
                  ).animateOnActionTrigger(
                    animationsMap['iconButtonOnActionTriggerAnimation1']!,
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: MediaQuery.sizeOf(context).width * 0.15,
                    fillColor: (int gameMode) {
                      return gameMode == 1
                          ? const Color(0xFFff0000)
                          : const Color(0xFFFFFFFF);
                    }(FFAppState().gameMode),
                    icon: const FaIcon(
                      FontAwesomeIcons.divide,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      setState(() {
                        FFAppState().gameMode = 1;
                      });
                      if (animationsMap[
                              'iconButtonOnActionTriggerAnimation2'] !=
                          null) {
                        animationsMap['iconButtonOnActionTriggerAnimation2']!
                            .controller
                            .forward(from: 0.0)
                            .whenComplete(animationsMap[
                                    'iconButtonOnActionTriggerAnimation2']!
                                .controller
                                .reverse);
                      }
                    },
                  ).animateOnActionTrigger(
                    animationsMap['iconButtonOnActionTriggerAnimation2']!,
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: MediaQuery.sizeOf(context).width * 0.15,
                    fillColor: (int gameMode) {
                      return gameMode == 2
                          ? const Color(0xFFffff00)
                          : const Color(0xFFFFFFFF);
                    }(FFAppState().gameMode),
                    icon: const Icon(
                      Icons.add_sharp,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      setState(() {
                        FFAppState().gameMode = 2;
                      });
                      if (animationsMap[
                              'iconButtonOnActionTriggerAnimation3'] !=
                          null) {
                        animationsMap['iconButtonOnActionTriggerAnimation3']!
                            .controller
                            .forward(from: 0.0)
                            .whenComplete(animationsMap[
                                    'iconButtonOnActionTriggerAnimation3']!
                                .controller
                                .reverse);
                      }
                    },
                  ).animateOnActionTrigger(
                    animationsMap['iconButtonOnActionTriggerAnimation3']!,
                  ),
                  FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: MediaQuery.sizeOf(context).width * 0.15,
                    fillColor: (int gameMode) {
                      return gameMode == 3
                          ? const Color(0xFF00ff00)
                          : const Color(0xFFFFFFFF);
                    }(FFAppState().gameMode),
                    icon: const FaIcon(
                      FontAwesomeIcons.minus,
                      color: Colors.black,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      setState(() {
                        FFAppState().gameMode = 3;
                      });
                      if (animationsMap[
                              'iconButtonOnActionTriggerAnimation4'] !=
                          null) {
                        animationsMap['iconButtonOnActionTriggerAnimation4']!
                            .controller
                            .forward(from: 0.0)
                            .whenComplete(animationsMap[
                                    'iconButtonOnActionTriggerAnimation4']!
                                .controller
                                .reverse);
                      }
                    },
                  ).animateOnActionTrigger(
                    animationsMap['iconButtonOnActionTriggerAnimation4']!,
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: RichText(
                  textScaleFactor: MediaQuery.of(context).textScaleFactor,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Lower End - ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      TextSpan(
                        text: FFAppState().lowestTable.toString(),
                        style: const TextStyle(
                          fontSize: 20.0,
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
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                      TextSpan(
                        text: FFAppState().lowestTable.toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.black,
                        ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Slider(
                activeColor: FlutterFlowTheme.of(context).emerald,
                inactiveColor: FlutterFlowTheme.of(context).alternate,
                min: 0.0,
                max: 100.0,
                value: _model.sliderValue1 ??= FFAppState().lowestTable,
                label: _model.sliderValue1.toString(),
                divisions: 100,
                onChanged: (newValue) async {
                  newValue = double.parse(newValue.toStringAsFixed(0));
                  setState(() => _model.sliderValue1 = newValue);
                  setState(() {
                    FFAppState().lowestTable = _model.sliderValue1!;
                  });
                },
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: RichText(
                  textScaleFactor: MediaQuery.of(context).textScaleFactor,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Higher End - ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      TextSpan(
                        text: FFAppState().highestTable.toString(),
                        style: const TextStyle(
                          fontSize: 20.0,
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
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                      TextSpan(
                        text: FFAppState().highestTable.toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.black,
                        ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Slider(
                activeColor: FlutterFlowTheme.of(context).emerald,
                inactiveColor: FlutterFlowTheme.of(context).alternate,
                min: 0.0,
                max: 100.0,
                value: _model.sliderValue2 ??= FFAppState().highestTable,
                label: _model.sliderValue2.toString(),
                divisions: 100,
                onChanged: (newValue) async {
                  newValue = double.parse(newValue.toStringAsFixed(0));
                  setState(() => _model.sliderValue2 = newValue);
                  setState(() {
                    FFAppState().highestTable = _model.sliderValue2!;
                  });
                },
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: RichText(
                  textScaleFactor: MediaQuery.of(context).textScaleFactor,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Round Time - ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      TextSpan(
                        text: (FFAppState().time / 1000).toString(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                      const TextSpan(
                        text: ' seconds',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.black,
                        ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Slider(
                activeColor: FlutterFlowTheme.of(context).emerald,
                inactiveColor: FlutterFlowTheme.of(context).alternate,
                min: 5000.0,
                max: 300000.0,
                value: _model.sliderValue3 ??= valueOrDefault<double>(
                  FFAppState().time.toDouble(),
                  60000.0,
                ),
                label: _model.sliderValue3.toString(),
                divisions: 295,
                onChanged: (newValue) async {
                  newValue = double.parse(newValue.toStringAsFixed(0));
                  setState(() => _model.sliderValue3 = newValue);
                  setState(() {
                    FFAppState().time = _model.sliderValue3!.toInt();
                  });
                },
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: RichText(
                      textScaleFactor: MediaQuery.of(context).textScaleFactor,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Autostart New Round\n\n',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          TextSpan(
                            text: (bool var1) {
                              return var1 == true ? "ON" : "OFF";
                            }(FFAppState().autoStartRound),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Colors.black,
                            ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Switch.adaptive(
                    value: _model.switchValue ??= FFAppState().autoStartRound,
                    onChanged: (newValue) async {
                      setState(() => _model.switchValue = newValue);
                      if (newValue) {
                        setState(() {
                          FFAppState().autoStartRound = true;
                        });
                      } else {
                        setState(() {
                          FFAppState().autoStartRound = false;
                        });
                      }
                    },
                    activeColor: FlutterFlowTheme.of(context).emerald,
                    activeTrackColor: FlutterFlowTheme.of(context).accent1,
                    inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
                    inactiveThumbColor:
                        FlutterFlowTheme.of(context).secondaryText,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 30.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    if (FFAppState().lowestTable > FFAppState().highestTable) {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: const Text('Range Error'),
                            content:
                                const Text('Lower end is higher than upper end.'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext),
                                child: const Text('Ok'),
                              ),
                            ],
                          );
                        },
                      );
                      return;
                    } else {
                      if ((double low, double high, int gameMode) {
                        return (gameMode == 0 || gameMode == 2) &&
                                high - low < 5
                            ? true
                            : false;
                      }(FFAppState().lowestTable, FFAppState().highestTable,
                          FFAppState().gameMode)) {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: const Text('Range Error'),
                              content: const Text(
                                  'The difference between lower and upper end needs to be 5 or greater'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
                                  child: const Text('Ok'),
                                ),
                              ],
                            );
                          },
                        );
                        return;
                      } else {
                        if ((double low, double high, int gameMode) {
                          return gameMode == 3 && high - low < 9 ? true : false;
                        }(FFAppState().lowestTable, FFAppState().highestTable,
                            FFAppState().gameMode)) {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: const Text('Range Error'),
                                content: const Text(
                                    'The difference between lower and upper end needs to be 9 or greater'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: const Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                          return;
                        } else {
                          if ((FFAppState().gameMode == 1) &&
                              ((double low, double high) {
                                return high - low != 100 ? true : false;
                              }(FFAppState().lowestTable,
                                  FFAppState().highestTable))) {
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: const Text('Range Error'),
                                  content: const Text(
                                      'Please keep lower at 0 and upper at 100, for division.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: const Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                            return;
                          } else {
                            context.goNamed('GamePage');

                            return;
                          }
                        }
                      }
                    }
                  },
                  text: 'GO',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).emerald,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 30.0)),
          ),
        ),
      ),
    );
  }
}
