import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'charter_request_comp_widget.dart' show CharterRequestCompWidget;
import 'package:flutter/material.dart';

class CharterRequestCompModel
    extends FlutterFlowModel<CharterRequestCompWidget> {
  ///  Local state fields for this component.

  int maxLimitForDay = 0;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  String? _textControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'please specify required seats';
    }

    return null;
  }

  DateTime? datePicked;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<CancelledFlightsRecord>? cancelledFlightsList;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<LehDelhicharterLimitsRecord>? lehDelhiLimitDocList;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<LehChandigarhcharterLimitsRecord>? lehChdLimitDocList;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<CurrentVacancyRecord>? currentVacancyForUser;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<CurrentVacancyRecord>? currentVacancyForUser2;

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
