import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_copy_widget.dart' show HomePageCopyWidget;
import 'package:flutter/material.dart';

class HomePageCopyModel extends FlutterFlowModel<HomePageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for BtnLogin widget.
  TabController? btnLoginController;
  int get btnLoginCurrentIndex =>
      btnLoginController != null ? btnLoginController!.index : 0;
  int get btnLoginPreviousIndex =>
      btnLoginController != null ? btnLoginController!.previousIndex : 0;

  // State field(s) for Emailcad widget.
  FocusNode? emailcadFocusNode1;
  TextEditingController? emailcadTextController1;
  String? Function(BuildContext, String?)? emailcadTextController1Validator;
  String? _emailcadTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor, insira seu e-mail! ';
    }

    return null;
  }

  // State field(s) for SenhaCad widget.
  FocusNode? senhaCadFocusNode1;
  TextEditingController? senhaCadTextController1;
  late bool senhaCadVisibility1;
  String? Function(BuildContext, String?)? senhaCadTextController1Validator;
  String? _senhaCadTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor, insira uma senha válida! ';
    }

    if (val.length < 6) {
      return 'A senha precisa ter no mínimo 6 caracteres! ';
    }

    return null;
  }

  // State field(s) for NomeCad widget.
  FocusNode? nomeCadFocusNode;
  TextEditingController? nomeCadTextController;
  String? Function(BuildContext, String?)? nomeCadTextControllerValidator;
  String? _nomeCadTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor, insira seu nome!';
    }

    return null;
  }

  // State field(s) for Emailcad widget.
  FocusNode? emailcadFocusNode2;
  TextEditingController? emailcadTextController2;
  String? Function(BuildContext, String?)? emailcadTextController2Validator;
  String? _emailcadTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor, insira seu e-mail! ';
    }

    return null;
  }

  // State field(s) for SenhaCad widget.
  FocusNode? senhaCadFocusNode2;
  TextEditingController? senhaCadTextController2;
  late bool senhaCadVisibility2;
  String? Function(BuildContext, String?)? senhaCadTextController2Validator;
  String? _senhaCadTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor, insira uma senha válida! ';
    }

    if (val.length < 6) {
      return 'A senha precisa ter no mínimo 6 caracteres! ';
    }

    return null;
  }

  // State field(s) for ConfirmeSenhaCad widget.
  FocusNode? confirmeSenhaCadFocusNode;
  TextEditingController? confirmeSenhaCadTextController;
  late bool confirmeSenhaCadVisibility;
  String? Function(BuildContext, String?)?
      confirmeSenhaCadTextControllerValidator;
  String? _confirmeSenhaCadTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirme sua senha!';
    }

    if (val.length < 6) {
      return 'A senha precisa ter no mínimo 6 caracteres! ';
    }

    return null;
  }

  // State field(s) for Textcpf widget.
  FocusNode? textcpfFocusNode;
  TextEditingController? textcpfTextController;
  String? Function(BuildContext, String?)? textcpfTextControllerValidator;

  @override
  void initState(BuildContext context) {
    emailcadTextController1Validator = _emailcadTextController1Validator;
    senhaCadVisibility1 = false;
    senhaCadTextController1Validator = _senhaCadTextController1Validator;
    nomeCadTextControllerValidator = _nomeCadTextControllerValidator;
    emailcadTextController2Validator = _emailcadTextController2Validator;
    senhaCadVisibility2 = false;
    senhaCadTextController2Validator = _senhaCadTextController2Validator;
    confirmeSenhaCadVisibility = false;
    confirmeSenhaCadTextControllerValidator =
        _confirmeSenhaCadTextControllerValidator;
  }

  @override
  void dispose() {
    btnLoginController?.dispose();
    emailcadFocusNode1?.dispose();
    emailcadTextController1?.dispose();

    senhaCadFocusNode1?.dispose();
    senhaCadTextController1?.dispose();

    nomeCadFocusNode?.dispose();
    nomeCadTextController?.dispose();

    emailcadFocusNode2?.dispose();
    emailcadTextController2?.dispose();

    senhaCadFocusNode2?.dispose();
    senhaCadTextController2?.dispose();

    confirmeSenhaCadFocusNode?.dispose();
    confirmeSenhaCadTextController?.dispose();

    textcpfFocusNode?.dispose();
    textcpfTextController?.dispose();
  }
}
