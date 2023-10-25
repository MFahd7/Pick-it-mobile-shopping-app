import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class ProductListHealthModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for searchBar widget.
  final searchBarKey1 = GlobalKey();
  TextEditingController? searchBarController1;
  String? searchBarSelectedOption1;
  String? Function(BuildContext, String?)? searchBarController1Validator;
  List<PostProductRecord> simpleSearchResults1 = [];
  // State field(s) for searchBar widget.
  final searchBarKey2 = GlobalKey();
  TextEditingController? searchBarController2;
  String? searchBarSelectedOption2;
  String? Function(BuildContext, String?)? searchBarController2Validator;
  List<PostProductRecord> simpleSearchResults2 = [];
  // State field(s) for searchBar widget.
  final searchBarKey3 = GlobalKey();
  TextEditingController? searchBarController3;
  String? searchBarSelectedOption3;
  String? Function(BuildContext, String?)? searchBarController3Validator;
  List<PostProductRecord> simpleSearchResults3 = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
