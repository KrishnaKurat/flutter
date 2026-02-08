import '/flutter_flow/flutter_flow_util.dart';
import 'a_i_input_widget.dart' show AIInputWidget;
import 'package:flutter/material.dart';

class AIInputModel extends FlutterFlowModel<AIInputWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Allotted Seats is required';
    }

    return null;
  }

  // Stores action output result for [AI Agent - Send Message to quick booking assistant] action in Button widget.
  String? aIresponse;

  @override
  void initState(BuildContext context) {
    textControllerValidator = _textControllerValidator;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
