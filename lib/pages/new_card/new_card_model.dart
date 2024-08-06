import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/header/header_widget.dart';
import '/components/money_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'new_card_widget.dart' show NewCardWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewCardModel extends FlutterFlowModel<NewCardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for MoneyCard component.
  late MoneyCardModel moneyCardModel;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'o80vxr8j' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for cardNumber widget.
  FocusNode? cardNumberFocusNode;
  TextEditingController? cardNumberTextController;
  String? Function(BuildContext, String?)? cardNumberTextControllerValidator;
  String? _cardNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'jsy8ld9s' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for expire widget.
  FocusNode? expireFocusNode;
  TextEditingController? expireTextController;
  String? Function(BuildContext, String?)? expireTextControllerValidator;
  String? _expireTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5kpb65hf' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for cvv widget.
  FocusNode? cvvFocusNode;
  TextEditingController? cvvTextController;
  String? Function(BuildContext, String?)? cvvTextControllerValidator;
  String? _cvvTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'it1l2wpy' /* Field is required */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    moneyCardModel = createModel(context, () => MoneyCardModel());
    nameTextControllerValidator = _nameTextControllerValidator;
    cardNumberTextControllerValidator = _cardNumberTextControllerValidator;
    expireTextControllerValidator = _expireTextControllerValidator;
    cvvTextControllerValidator = _cvvTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
    moneyCardModel.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    cardNumberFocusNode?.dispose();
    cardNumberTextController?.dispose();

    expireFocusNode?.dispose();
    expireTextController?.dispose();

    cvvFocusNode?.dispose();
    cvvTextController?.dispose();
  }
}
