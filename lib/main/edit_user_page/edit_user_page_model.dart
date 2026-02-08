import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'edit_user_page_widget.dart' show EditUserPageWidget;
import 'package:flutter/material.dart';

class EditUserPageModel extends FlutterFlowModel<EditUserPageWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for currPass widget.
  FocusNode? currPassFocusNode;
  TextEditingController? currPassTextController;
  late bool currPassVisibility;
  String? Function(BuildContext, String?)? currPassTextControllerValidator;
  String? _currPassTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Current password is required';
    }

    return null;
  }

  // State field(s) for newEmail widget.
  FocusNode? newEmailFocusNode;
  TextEditingController? newEmailTextController;
  String? Function(BuildContext, String?)? newEmailTextControllerValidator;
  String? _newEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'New username is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for confirmEmail widget.
  FocusNode? confirmEmailFocusNode;
  TextEditingController? confirmEmailTextController;
  String? Function(BuildContext, String?)? confirmEmailTextControllerValidator;
  String? _confirmEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Re-enter your username';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // Stores action output result for [Custom Action - reauthenticate] action in Button widget.
  bool? reauthenticateEmail;
  // State field(s) for oldPass widget.
  FocusNode? oldPassFocusNode;
  TextEditingController? oldPassTextController;
  late bool oldPassVisibility;
  String? Function(BuildContext, String?)? oldPassTextControllerValidator;
  String? _oldPassTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Current Password is required';
    }

    return null;
  }

  // State field(s) for newPass widget.
  FocusNode? newPassFocusNode;
  TextEditingController? newPassTextController;
  late bool newPassVisibility;
  String? Function(BuildContext, String?)? newPassTextControllerValidator;
  String? _newPassTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'New Password is required';
    }

    return null;
  }

  // State field(s) for confirmPass widget.
  FocusNode? confirmPassFocusNode;
  TextEditingController? confirmPassTextController;
  late bool confirmPassVisibility;
  String? Function(BuildContext, String?)? confirmPassTextControllerValidator;
  String? _confirmPassTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Re-enter your password';
    }

    return null;
  }

  // Stores action output result for [Custom Action - reauthenticate] action in Button widget.
  bool? reauthenticatePass;

  @override
  void initState(BuildContext context) {
    currPassVisibility = false;
    currPassTextControllerValidator = _currPassTextControllerValidator;
    newEmailTextControllerValidator = _newEmailTextControllerValidator;
    confirmEmailTextControllerValidator = _confirmEmailTextControllerValidator;
    oldPassVisibility = false;
    oldPassTextControllerValidator = _oldPassTextControllerValidator;
    newPassVisibility = false;
    newPassTextControllerValidator = _newPassTextControllerValidator;
    confirmPassVisibility = false;
    confirmPassTextControllerValidator = _confirmPassTextControllerValidator;
  }

  @override
  void dispose() {
    currPassFocusNode?.dispose();
    currPassTextController?.dispose();

    newEmailFocusNode?.dispose();
    newEmailTextController?.dispose();

    confirmEmailFocusNode?.dispose();
    confirmEmailTextController?.dispose();

    oldPassFocusNode?.dispose();
    oldPassTextController?.dispose();

    newPassFocusNode?.dispose();
    newPassTextController?.dispose();

    confirmPassFocusNode?.dispose();
    confirmPassTextController?.dispose();
  }
}
