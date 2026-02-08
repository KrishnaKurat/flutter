import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'personsview_r_e_q_u_e_s_t_v_widget.dart' show PersonsviewREQUESTVWidget;
import 'package:flutter/material.dart';

class PersonsviewREQUESTVModel
    extends FlutterFlowModel<PersonsviewREQUESTVWidget> {
  ///  Local state fields for this page.

  String searchActive = '';

  List<String> person = ['CHT bus', 'Lt veh'];
  void addToPerson(String item) => person.add(item);
  void removeFromPerson(String item) => person.remove(item);
  void removeAtIndexFromPerson(int index) => person.removeAt(index);
  void insertAtIndexInPerson(int index, String item) =>
      person.insert(index, item);
  void updatePersonAtIndex(int index, Function(String) updateFn) =>
      person[index] = updateFn(person[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue;
  FormFieldController<List<String>>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
