import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'profile05_widget.dart' show Profile05Widget;
import 'package:flutter/material.dart';

class Profile05Model extends FlutterFlowModel<Profile05Widget> {
  ///  Local state fields for this page.

  String? zip;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
