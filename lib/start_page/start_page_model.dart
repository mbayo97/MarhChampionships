import '/flutter_flow/flutter_flow_util.dart';
import 'start_page_widget.dart' show StartPageWidget;
import 'package:flutter/material.dart';

class StartPageModel extends FlutterFlowModel<StartPageWidget> {
  ///  Local state fields for this page.

  String? backgroundVideo;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  Future modeSelection(
    BuildContext context, {
    required bool? autoStartRound,
    required int? time,
  }) async {
    FFAppState().autoStartRound = autoStartRound!;
    FFAppState().time = time!;
    FFAppState().lowestTable = 0.0;
    FFAppState().highestTable = FFAppState().gameMode == 0 ? 12.0 : 100.0;

    context.goNamed(
      'GamePage',
      extra: <String, dynamic>{
        kTransitionInfoKey: const TransitionInfo(
          hasTransition: true,
          transitionType: PageTransitionType.leftToRight,
        ),
      },
    );
  }

  /// Additional helper methods are added here.
}
