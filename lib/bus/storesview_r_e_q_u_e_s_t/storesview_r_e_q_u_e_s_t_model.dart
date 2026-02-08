import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'storesview_r_e_q_u_e_s_t_widget.dart' show StoresviewREQUESTWidget;
import 'package:flutter/material.dart';

class StoresviewREQUESTModel extends FlutterFlowModel<StoresviewREQUESTWidget> {
  ///  Local state fields for this page.

  String searchActive = '';

  List<String> stores = [
    '6 Ton',
    'JCB',
    'Water Bowser',
    'FBT 20 Ton',
    'Tipper'
  ];
  void addToStores(String item) => stores.add(item);
  void removeFromStores(String item) => stores.remove(item);
  void removeAtIndexFromStores(int index) => stores.removeAt(index);
  void insertAtIndexInStores(int index, String item) =>
      stores.insert(index, item);
  void updateStoresAtIndex(int index, Function(String) updateFn) =>
      stores[index] = updateFn(stores[index]);

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
