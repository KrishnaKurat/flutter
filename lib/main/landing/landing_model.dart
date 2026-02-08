import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'landing_widget.dart' show LandingWidget;
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';

class LandingModel extends FlutterFlowModel<LandingWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? appWalkthroughController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    appWalkthroughController?.finish();
  }
}
