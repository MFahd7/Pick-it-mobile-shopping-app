import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/confirmation/confirmation_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PaymantModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkicon widget.
  bool? checkiconValue;
  // State field(s) for st_name widget.
  TextEditingController? stNameController;
  String? Function(BuildContext, String?)? stNameControllerValidator;
  // State field(s) for buildingNo widget.
  TextEditingController? buildingNoController;
  String? Function(BuildContext, String?)? buildingNoControllerValidator;
  // State field(s) for ApartmentNo widget.
  TextEditingController? apartmentNoController;
  String? Function(BuildContext, String?)? apartmentNoControllerValidator;
  // State field(s) for city widget.
  String? cityValue;
  FormFieldController<String>? cityValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    stNameController?.dispose();
    buildingNoController?.dispose();
    apartmentNoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
