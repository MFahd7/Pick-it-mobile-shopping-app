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
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class ProductListModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SearchAll widget.
  final searchAllKey1 = GlobalKey();
  TextEditingController? searchAllController1;
  String? searchAllSelectedOption1;
  String? Function(BuildContext, String?)? searchAllController1Validator;
  List<PostProductRecord> simpleSearchResults1 = [];
  // State field(s) for Product_ListView widget.
  PagingController<DocumentSnapshot?, PostProductRecord>? pagingController;
  Query? pagingQuery;

  // State field(s) for SearchApple widget.
  final searchAppleKey = GlobalKey();
  TextEditingController? searchAppleController;
  String? searchAppleSelectedOption;
  String? Function(BuildContext, String?)? searchAppleControllerValidator;
  List<PostProductRecord> simpleSearchResults2 = [];
  // State field(s) for SearchSam widget.
  final searchSamKey = GlobalKey();
  TextEditingController? searchSamController;
  String? searchSamSelectedOption;
  String? Function(BuildContext, String?)? searchSamControllerValidator;
  List<PostProductRecord> simpleSearchResults3 = [];
  // State field(s) for SearchAll widget.
  final searchAllKey2 = GlobalKey();
  TextEditingController? searchAllController2;
  String? searchAllSelectedOption2;
  String? Function(BuildContext, String?)? searchAllController2Validator;
  List<PostProductRecord> simpleSearchResults4 = [];
  // State field(s) for SearchAll widget.
  final searchAllKey3 = GlobalKey();
  TextEditingController? searchAllController3;
  String? searchAllSelectedOption3;
  String? Function(BuildContext, String?)? searchAllController3Validator;
  List<PostProductRecord> simpleSearchResults5 = [];
  // State field(s) for SearchAll widget.
  final searchAllKey4 = GlobalKey();
  TextEditingController? searchAllController4;
  String? searchAllSelectedOption4;
  String? Function(BuildContext, String?)? searchAllController4Validator;
  List<PostProductRecord> simpleSearchResults6 = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
