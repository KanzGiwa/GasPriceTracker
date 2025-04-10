import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gasstationoptions_model.dart';
export 'gasstationoptions_model.dart';

class GasstationoptionsWidget extends StatefulWidget {
  const GasstationoptionsWidget({
    super.key,
    required this.zip,
  });

  final String? zip;

  static String routeName = 'gasstationoptions';
  static String routePath = '/gasstationoptions';

  @override
  State<GasstationoptionsWidget> createState() =>
      _GasstationoptionsWidgetState();
}

class _GasstationoptionsWidgetState extends State<GasstationoptionsWidget>
    with TickerProviderStateMixin {
  late GasstationoptionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GasstationoptionsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'gasstationoptions'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('GASSTATIONOPTIONS_gasstationoptions_ON_I');
      logFirebaseEvent('gasstationoptions_backend_call');
      _model.gasStations = await GasPriceCall.call(
        zip: widget.zip,
      );

      logFirebaseEvent('gasstationoptions_update_page_state');
      _model.refreshTrigger = !_model.refreshTrigger;
      _model.allGasStations = (getJsonField(
        (_model.gasStations?.jsonBody ?? ''),
        r'''$.gas_prices''',
        true,
      )!
              .toList()
              .map<GasStationStruct?>(GasStationStruct.maybeFromMap)
              .toList() as Iterable<GasStationStruct?>)
          .withoutNulls
          .toList()
          .cast<GasStationStruct>();
      safeSetState(() {});
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.linear,
            delay: 0.0.ms,
            duration: 2000.0.ms,
            begin: 0.0,
            end: 5.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, -1.0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(0.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 124.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                        border: Border.all(
                          width: 0.0,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 5.0, 0.0, 0.0),
                            child: Container(
                              width: 92.1,
                              height: 35.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondary,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 0.0,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.zip,
                                    'zip',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Miriam Libre',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 5.0, 0.0, 0.0),
                            child: Container(
                              width: 92.2,
                              height: 70.75,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).secondary,
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 0.0,
                                ),
                              ),
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Fuel Type: Regular',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Miriam Libre',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 0.0)),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            100.0, 50.0, 0.0, 0.0),
                        child: FlutterFlowDropDown<String>(
                          controller: _model.dropDownValueController ??=
                              FormFieldController<String>(null),
                          options: ['Price(Lowest)'],
                          onChanged: (val) async {
                            safeSetState(() => _model.dropDownValue = val);
                            logFirebaseEvent(
                                'GASSTATIONOPTIONS_DropDown_dhyexmtc_ON_F');
                            logFirebaseEvent('DropDown_update_page_state');
                            _model.selectedSort = _model.dropDownValue!;
                            safeSetState(() {});
                            logFirebaseEvent('DropDown_update_page_state');
                            _model.allGasStations = functions
                                .sortGasPricesByPrice(
                                    _model.allGasStations.toList())
                                .toList()
                                .cast<GasStationStruct>();
                            safeSetState(() {});
                          },
                          width: 248.8,
                          height: 40.0,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Miriam Libre',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                          hintText: 'Filter',
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 24.0,
                          ),
                          fillColor: FlutterFlowTheme.of(context).alternate,
                          elevation: 2.0,
                          borderColor: FlutterFlowTheme.of(context).primaryText,
                          borderWidth: 0.0,
                          borderRadius: 15.0,
                          margin: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          hidesUnderline: true,
                          isOverButton: false,
                          isSearchable: false,
                          isMultiSelect: false,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 508.06,
              decoration: BoxDecoration(),
              child: Visibility(
                visible: _model.gasStations != null,
                child: Builder(
                  builder: (context) {
                    final gasstation = _model.allGasStations.toList();

                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: gasstation.length,
                      itemBuilder: (context, gasstationIndex) {
                        final gasstationItem = gasstation[gasstationIndex];
                        return Visibility(
                          visible: gasstationIndex != 0,
                          child: Stack(
                            children: [
                              Container(
                                width: 394.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: colorFromCssString(
                                    getRemoteConfigString('testpanelcolors'),
                                    defaultColor:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 4.0,
                                  ),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                shape: BoxShape.rectangle,
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 0.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(2.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Icon(
                                                      Icons.local_gas_station,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 2.0,
                                                                8.0, 2.0),
                                                    child: Text(
                                                      gasstationItem.station
                                                          .maybeHandleOverflow(
                                                        maxChars: 38,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Miriam Libre',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 0.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                2.0, 0.0),
                                                    child: Icon(
                                                      Icons.location_pin,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 24.0,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 2.0,
                                                                8.0, 2.0),
                                                    child: Text(
                                                      gasstationItem.address
                                                          .maybeHandleOverflow(
                                                        maxChars: 38,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Miriam Libre',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 0.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(3.0, 0.0,
                                                                1.0, 0.0),
                                                    child: Icon(
                                                      Icons.more,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 2.0,
                                                                8.0, 2.0),
                                                    child: Text(
                                                      gasstationItem.price
                                                          .maybeHandleOverflow(
                                                        maxChars: 38,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Miriam Libre',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 4.0)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 18.0, 10.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      logFirebaseEvent(
                                          'GASSTATIONOPTIONS_PAGE_GO_BTN_ON_TAP');
                                      logFirebaseEvent('Button_backend_call');
                                      _model.apiResultbi3 =
                                          await GeocodingCall.call(
                                        address: gasstationItem.address,
                                      );

                                      if ((_model.apiResultbi3?.succeeded ??
                                          true)) {
                                        logFirebaseEvent(
                                            'Button_update_page_state');
                                        _model.lat = GeocodingCall.lat(
                                          (_model.apiResultbi3?.jsonBody ?? ''),
                                        );
                                        _model.lng = GeocodingCall.lng(
                                          (_model.apiResultbi3?.jsonBody ?? ''),
                                        );
                                        safeSetState(() {});
                                        logFirebaseEvent(
                                            'Button_update_page_state');
                                        _model.mapsURL = functions.makeMapsURL(
                                            _model.lat!, _model.lng!);
                                        safeSetState(() {});
                                        logFirebaseEvent('Button_launch_u_r_l');
                                        await launchURL(_model.mapsURL!);
                                      }

                                      safeSetState(() {});
                                    },
                                    text: 'GO',
                                    icon: FaIcon(
                                      FontAwesomeIcons.route,
                                      size: 15.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 63.55,
                                      height: 64.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconAlignment: IconAlignment.end,
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Miriam Libre',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 0.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                      hoverColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      hoverTextColor:
                                          FlutterFlowTheme.of(context)
                                              .alternate,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            if (_model.gasStations == null)
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(),
                child: Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/loading2.png',
                      fit: BoxFit.fill,
                      alignment: Alignment(0.0, 0.0),
                    ),
                  ),
                ),
              ).animateOnPageLoad(
                  animationsMap['containerOnPageLoadAnimation']!),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      logFirebaseEvent(
                          'GASSTATIONOPTIONS_PAGE_BACK_BTN_ON_TAP');
                      logFirebaseEvent('Button_navigate_to');

                      context.pushNamed(Profile05Widget.routeName);
                    },
                    text: 'BACK',
                    options: FFButtonOptions(
                      width: 120.0,
                      height: 63.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Miriam Libre',
                                color: Colors.white,
                                fontSize: 25.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/logo_transparent.png',
                        width: 91.0,
                        height: 97.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
