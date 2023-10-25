import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for FullName_buy widget.
  TextEditingController? fullNameBuyController;
  String? Function(BuildContext, String?)? fullNameBuyControllerValidator;
  // State field(s) for emailAddress_buy widget.
  TextEditingController? emailAddressBuyController;
  String? Function(BuildContext, String?)? emailAddressBuyControllerValidator;
  // State field(s) for password_buy widget.
  TextEditingController? passwordBuyController;
  late bool passwordBuyVisibility;
  String? Function(BuildContext, String?)? passwordBuyControllerValidator;
  // State field(s) for phoneNo_buy widget.
  TextEditingController? phoneNoBuyController;
  final phoneNoBuyMask = MaskTextInputFormatter(mask: '+##-###-#######');
  String? Function(BuildContext, String?)? phoneNoBuyControllerValidator;
  // State field(s) for city_buy widget.
  String? cityBuyValue;
  FormFieldController<String>? cityBuyValueController;
  DateTime? datePicked;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordBuyVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    fullNameBuyController?.dispose();
    emailAddressBuyController?.dispose();
    passwordBuyController?.dispose();
    phoneNoBuyController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
