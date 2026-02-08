import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'welcome_widget.dart' show WelcomeWidget;
import 'package:flutter/material.dart';

class WelcomeModel extends FlutterFlowModel<WelcomeWidget> {
  ///  State fields for stateful widgets in this page.

  TutorialCoachMark? welcomeController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    welcomeController?.finish();
  }
}
