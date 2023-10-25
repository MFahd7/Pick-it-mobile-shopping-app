import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class ProductListClotModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchBar widget.
  TextEditingController? searchBarController1;
  String? Function(BuildContext, String?)? searchBarController1Validator;
  // State field(s) for searchBar widget.
  TextEditingController? searchBarController2;
  String? Function(BuildContext, String?)? searchBarController2Validator;
  // State field(s) for searchBar widget.
  TextEditingController? searchBarController3;
  String? Function(BuildContext, String?)? searchBarController3Validator;
  // State field(s) for searchBar widget.
  TextEditingController? searchBarController4;
  String? Function(BuildContext, String?)? searchBarController4Validator;
  // State field(s) for searchBar widget.
  TextEditingController? searchBarController5;
  String? Function(BuildContext, String?)? searchBarController5Validator;
  // State field(s) for searchBar widget.
  TextEditingController? searchBarController6;
  String? Function(BuildContext, String?)? searchBarController6Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    searchBarController1?.dispose();
    searchBarController2?.dispose();
    searchBarController3?.dispose();
    searchBarController4?.dispose();
    searchBarController5?.dispose();
    searchBarController6?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
