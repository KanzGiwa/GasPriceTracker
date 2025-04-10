import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'nps_widget.dart' show NpsWidget;
import 'package:flutter/material.dart';

class NpsModel extends FlutterFlowModel<NpsWidget> {
  ///  Local state fields for this page.

  int? npsscore;

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
