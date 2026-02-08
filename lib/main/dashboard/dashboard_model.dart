import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  Local state fields for this page.

  String searchActive = '';

  String searchActiveMP = '';

  List<String> persons = ['CHT bus', 'Lt veh'];
  void addToPersons(String item) => persons.add(item);
  void removeFromPersons(String item) => persons.remove(item);
  void removeAtIndexFromPersons(int index) => persons.removeAt(index);
  void insertAtIndexInPersons(int index, String item) =>
      persons.insert(index, item);
  void updatePersonsAtIndex(int index, Function(String) updateFn) =>
      persons[index] = updateFn(persons[index]);

  List<String> stores = [
    '6 Ton',
    'JCB',
    'Water Bowser',
    'Tipper',
    'FBT 20 Ton'
  ];
  void addToStores(String item) => stores.add(item);
  void removeFromStores(String item) => stores.remove(item);
  void removeAtIndexFromStores(int index) => stores.removeAt(index);
  void insertAtIndexInStores(int index, String item) =>
      stores.insert(index, item);
  void updateStoresAtIndex(int index, Function(String) updateFn) =>
      stores[index] = updateFn(stores[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;
  int get tabBarPreviousIndex1 =>
      tabBarController1 != null ? tabBarController1!.previousIndex : 0;

  DateTime? datePicked1;
  // State field(s) for DropDown widget.
  List<int>? dropDownValue1;
  FormFieldController<List<int>>? dropDownValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;
  int get tabBarPreviousIndex2 =>
      tabBarController2 != null ? tabBarController2!.previousIndex : 0;

  // State field(s) for DropDown widget.
  List<int>? dropDownValue2;
  FormFieldController<List<int>>? dropDownValueController2;
  DateTime? datePicked2;
  // State field(s) for DropDownveh1 widget.
  List<String>? dropDownveh1Value;
  FormFieldController<List<String>>? dropDownveh1ValueController;
  DateTime? datePicked3;
  // State field(s) for DropDownveh widget.
  List<String>? dropDownvehValue1;
  FormFieldController<List<String>>? dropDownvehValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TabBar widget.
  TabController? tabBarController3;
  int get tabBarCurrentIndex3 =>
      tabBarController3 != null ? tabBarController3!.index : 0;
  int get tabBarPreviousIndex3 =>
      tabBarController3 != null ? tabBarController3!.previousIndex : 0;

  // State field(s) for DropDownveh widget.
  List<String>? dropDownvehValue2;
  FormFieldController<List<String>>? dropDownvehValueController2;
  // State field(s) for FCDropDown widget.
  List<int>? fCDropDownValue;
  FormFieldController<List<int>>? fCDropDownValueController;
  DateTime? datePicked4;
  // Stores action output result for [Backend Call - Create Document] action in FCButton widget.
  CancelledFlightsRecord? cFcreateRef;
  // Stores action output result for [Firestore Query - Query a collection] action in FCButton widget.
  List<RoutesRecord>? fcRouteQuery;
  // Stores action output result for [Firestore Query - Query a collection] action in FCButton widget.
  List<BookingsRecord>? fcBookingQuery;
  // State field(s) for TabBar widget.
  TabController? tabBarController4;
  int get tabBarCurrentIndex4 =>
      tabBarController4 != null ? tabBarController4!.index : 0;
  int get tabBarPreviousIndex4 =>
      tabBarController4 != null ? tabBarController4!.previousIndex : 0;

  // State field(s) for DropDownveh widget.
  List<String>? dropDownvehValue3;
  FormFieldController<List<String>>? dropDownvehValueController3;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController1?.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    tabBarController2?.dispose();
    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    tabBarController3?.dispose();
    tabBarController4?.dispose();
    textFieldFocusNode5?.dispose();
    textController5?.dispose();
  }
}
