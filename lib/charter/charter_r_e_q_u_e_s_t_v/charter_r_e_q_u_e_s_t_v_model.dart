import '/flutter_flow/flutter_flow_util.dart';
import 'charter_r_e_q_u_e_s_t_v_widget.dart' show CharterREQUESTVWidget;
import 'package:flutter/material.dart';

class CharterREQUESTVModel extends FlutterFlowModel<CharterREQUESTVWidget> {
  ///  Local state fields for this page.

  String searchActive = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
