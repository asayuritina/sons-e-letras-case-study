import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cadastrocliente_widget.dart' show CadastroclienteWidget;
import 'package:flutter/material.dart';

class CadastroclienteModel extends FlutterFlowModel<CadastroclienteWidget> {
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
  FocusNode? emailcadFocusNode;
  TextEditingController? emailcadTextController;
  String? Function(BuildContext, String?)? emailcadTextControllerValidator;
  String? _emailcadTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor, insira seu e-mail! ';
    }

    return null;
  }

  // State field(s) for SenhaCad widget.
  FocusNode? senhaCadFocusNode;
  TextEditingController? senhaCadTextController;
  late bool senhaCadVisibility;
  String? Function(BuildContext, String?)? senhaCadTextControllerValidator;
  String? _senhaCadTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor, insira uma senha válida! ';
    }

    if (val.length < 6) {
      return 'A senha precisa ter no mínimo 6 caracteres! ';
    }

    return null;
  }

  // State field(s) for NomeCad widget.
  FocusNode? nomeCadFocusNode1;
  TextEditingController? nomeCadTextController1;
  String? Function(BuildContext, String?)? nomeCadTextController1Validator;
  String? _nomeCadTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor, insira seu nome!';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (buscacep)] action in NomeCad widget.
  ApiCallResponse? apiResultcep;
  // State field(s) for NomeCad widget.
  FocusNode? nomeCadFocusNode2;
  TextEditingController? nomeCadTextController2;
  String? Function(BuildContext, String?)? nomeCadTextController2Validator;
  // Stores action output result for [Backend Call - API (buscacep)] action in NomeCad widget.
  ApiCallResponse? apiResultcep;
  // State field(s) for Textcpf widget.
  FocusNode? textcpfFocusNode;
  TextEditingController? textcpfTextController;
  String? Function(BuildContext, String?)? textcpfTextControllerValidator;
  // State field(s) for logradcad widget.
  FocusNode? logradcadFocusNode;
  TextEditingController? logradcadTextController;
  String? Function(BuildContext, String?)? logradcadTextControllerValidator;
  String? _logradcadTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Por favor, insira seu e-mail! ';
    }

    return null;
  }

  // State field(s) for bairroCad widget.
  FocusNode? bairroCadFocusNode;
  TextEditingController? bairroCadTextController;
  late bool bairroCadVisibility;
  String? Function(BuildContext, String?)? bairroCadTextControllerValidator;
  String? _bairroCadTextControllerValidator(BuildContext context, String? val) {
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

  @override
  void initState(BuildContext context) {
    emailcadTextControllerValidator = _emailcadTextControllerValidator;
    senhaCadVisibility = false;
    senhaCadTextControllerValidator = _senhaCadTextControllerValidator;
    nomeCadTextController1Validator = _nomeCadTextController1Validator;
    logradcadTextControllerValidator = _logradcadTextControllerValidator;
    bairroCadVisibility = false;
    bairroCadTextControllerValidator = _bairroCadTextControllerValidator;
    confirmeSenhaCadVisibility = false;
    confirmeSenhaCadTextControllerValidator =
        _confirmeSenhaCadTextControllerValidator;
  }

  @override
  void dispose() {
    btnLoginController?.dispose();
    emailcadFocusNode?.dispose();
    emailcadTextController?.dispose();

    senhaCadFocusNode?.dispose();
    senhaCadTextController?.dispose();

    nomeCadFocusNode1?.dispose();
    nomeCadTextController1?.dispose();

    nomeCadFocusNode2?.dispose();
    nomeCadTextController2?.dispose();

    textcpfFocusNode?.dispose();
    textcpfTextController?.dispose();

    logradcadFocusNode?.dispose();
    logradcadTextController?.dispose();

    bairroCadFocusNode?.dispose();
    bairroCadTextController?.dispose();

    confirmeSenhaCadFocusNode?.dispose();
    confirmeSenhaCadTextController?.dispose();
  }
}
