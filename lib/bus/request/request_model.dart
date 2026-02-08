import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'request_widget.dart' show RequestWidget;
import 'package:flutter/material.dart';

class RequestModel extends FlutterFlowModel<RequestWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
