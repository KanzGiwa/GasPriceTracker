import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'gasstationoptions_widget.dart' show GasstationoptionsWidget;
import 'package:flutter/material.dart';

class GasstationoptionsModel extends FlutterFlowModel<GasstationoptionsWidget> {
  ///  Local state fields for this page.

  bool refreshTrigger = false;

  String selectedSort = 'Price(Lowest)';

  double? lat;

  double? lng;

  String? mapsURL;

  List<GasStationStruct> allGasStations = [];
  void addToAllGasStations(GasStationStruct item) => allGasStations.add(item);
  void removeFromAllGasStations(GasStationStruct item) =>
      allGasStations.remove(item);
  void removeAtIndexFromAllGasStations(int index) =>
      allGasStations.removeAt(index);
  void insertAtIndexInAllGasStations(int index, GasStationStruct item) =>
      allGasStations.insert(index, item);
  void updateAllGasStationsAtIndex(
          int index, Function(GasStationStruct) updateFn) =>
      allGasStations[index] = updateFn(allGasStations[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (gasPrice)] action in gasstationoptions widget.
  ApiCallResponse? gasStations;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (geocoding )] action in Button widget.
  ApiCallResponse? apiResultbi3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
