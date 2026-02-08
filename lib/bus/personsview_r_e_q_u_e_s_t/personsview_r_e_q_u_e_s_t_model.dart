import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'personsview_r_e_q_u_e_s_t_widget.dart' show PersonsviewREQUESTWidget;
import 'package:flutter/material.dart';

class PersonsviewREQUESTModel
    extends FlutterFlowModel<PersonsviewREQUESTWidget> {
  ///  Local state fields for this page.

  String searchActive = '';

  List<String> persons = ['CHT bus', 'Lt veh'];
  void addToPersons(String item) => persons.add(item);
  void removeFromPersons(String item) => persons.remove(item);
  void removeAtIndexFromPersons(int index) => persons.removeAt(index);
  void insertAtIndexInPersons(int index, String item) =>
      persons.insert(index, item);
  void updatePersonsAtIndex(int index, Function(String) updateFn) =>
      persons[index] = updateFn(persons[index]);

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
