import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'nps_model.dart';
export 'nps_model.dart';

class NpsWidget extends StatefulWidget {
  const NpsWidget({super.key});

  static String routeName = 'NPS';
  static String routePath = '/nps';

  @override
  State<NpsWidget> createState() => _NpsWidgetState();
}

class _NpsWidgetState extends State<NpsWidget> {
  late NpsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NpsModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'NPS'});
    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderRadius: 8.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryBackground,
              size: 24.0,
            ),
            onPressed: () async {
              logFirebaseEvent('NPS_PAGE_arrow_back_rounded_ICN_ON_TAP');
              logFirebaseEvent('IconButton_navigate_to');

              context.goNamed(Profile05Widget.routeName);
            },
          ),
          title: Text(
            'Feedback Survey',
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: 'Miriam Libre',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 16.0),
                        child: Text(
                          'How likely are you to recommend this app to a friend?',
                          style: FlutterFlowTheme.of(context)
                              .headlineLarge
                              .override(
                                fontFamily: 'Miriam Libre',
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                        child: Text(
                          'Your feedback helps us improve our service.',
                          style: FlutterFlowTheme.of(context)
                              .bodyLarge
                              .override(
                                fontFamily: 'Miriam Libre',
                                color: FlutterFlowTheme.of(context).secondary,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                      Container(),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                        child: Text(
                          'On a scale of 1-10, select your rating:',
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Miriam Libre',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Container(),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).primary,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x19000000),
                                offset: Offset(
                                  0.0,
                                  2.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Not likely',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Miriam Libre',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        'Very likely',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Miriam Libre',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FFButtonWidget(
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'NPS_PAGE_1_BTN_ON_TAP');
                                        logFirebaseEvent(
                                            'Button_update_page_state');
                                        _model.npsscore = 1;
                                        safeSetState(() {});
                                      },
                                      text: '1',
                                      options: FFButtonOptions(
                                        width: 48.0,
                                        height: 48.0,
                                        padding: EdgeInsets.all(8.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: _model.npsscore == 1
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        textStyle: TextStyle(
                                          color: _model.npsscore == 1
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryText
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      key: ValueKey('Button_1g9c'),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'NPS_PAGE_2_BTN_ON_TAP');
                                        logFirebaseEvent(
                                            'Button_update_page_state');
                                        _model.npsscore = 2;
                                        safeSetState(() {});
                                      },
                                      text: '2',
                                      options: FFButtonOptions(
                                        width: 48.0,
                                        height: 48.0,
                                        padding: EdgeInsets.all(8.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: _model.npsscore == 2
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        textStyle: TextStyle(
                                          color: _model.npsscore == 2
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryText
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      key: ValueKey('Button_md9c'),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'NPS_PAGE_3_BTN_ON_TAP');
                                        logFirebaseEvent(
                                            'Button_update_page_state');
                                        _model.npsscore = 3;
                                        safeSetState(() {});
                                      },
                                      text: '3',
                                      options: FFButtonOptions(
                                        width: 48.0,
                                        height: 48.0,
                                        padding: EdgeInsets.all(8.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: _model.npsscore == 3
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        textStyle: TextStyle(
                                          color: _model.npsscore == 3
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryText
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      key: ValueKey('Button_msdr'),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'NPS_PAGE_4_BTN_ON_TAP');
                                        logFirebaseEvent(
                                            'Button_update_page_state');
                                        _model.npsscore = 4;
                                        safeSetState(() {});
                                      },
                                      text: '4',
                                      options: FFButtonOptions(
                                        width: 48.0,
                                        height: 48.0,
                                        padding: EdgeInsets.all(8.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: _model.npsscore == 4
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        textStyle: TextStyle(
                                          color: _model.npsscore == 4
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryText
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      key: ValueKey('Button_qi9w'),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'NPS_PAGE_5_BTN_ON_TAP');
                                        logFirebaseEvent(
                                            'Button_update_page_state');
                                        _model.npsscore = 5;
                                        safeSetState(() {});
                                      },
                                      text: '5',
                                      options: FFButtonOptions(
                                        width: 48.0,
                                        height: 48.0,
                                        padding: EdgeInsets.all(8.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: _model.npsscore == 5
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        textStyle: TextStyle(
                                          color: _model.npsscore == 5
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryText
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FFButtonWidget(
                                      key: ValueKey('Button_jcdf'),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'NPS_PAGE_6_BTN_ON_TAP');
                                        logFirebaseEvent(
                                            'Button_update_page_state');
                                        _model.npsscore = 6;
                                        safeSetState(() {});
                                      },
                                      text: '6',
                                      options: FFButtonOptions(
                                        width: 48.0,
                                        height: 48.0,
                                        padding: EdgeInsets.all(8.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: _model.npsscore == 6
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        textStyle: TextStyle(
                                          color: _model.npsscore == 6
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryText
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      key: ValueKey('Button_34f5'),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'NPS_PAGE_7_BTN_ON_TAP');
                                        logFirebaseEvent(
                                            'Button_update_page_state');
                                        _model.npsscore = 7;
                                        safeSetState(() {});
                                      },
                                      text: '7',
                                      options: FFButtonOptions(
                                        width: 48.0,
                                        height: 48.0,
                                        padding: EdgeInsets.all(8.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: _model.npsscore == 7
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        textStyle: TextStyle(
                                          color: _model.npsscore == 7
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryText
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      key: ValueKey('Button_kyqm'),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'NPS_PAGE_8_BTN_ON_TAP');
                                        logFirebaseEvent(
                                            'Button_update_page_state');
                                        _model.npsscore = 8;
                                        safeSetState(() {});
                                      },
                                      text: '8',
                                      options: FFButtonOptions(
                                        width: 48.0,
                                        height: 48.0,
                                        padding: EdgeInsets.all(8.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: _model.npsscore == 8
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        textStyle: TextStyle(
                                          color: _model.npsscore == 8
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryText
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      key: ValueKey('Button_3v19'),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'NPS_PAGE_9_BTN_ON_TAP');
                                        logFirebaseEvent(
                                            'Button_update_page_state');
                                        _model.npsscore = 9;
                                        safeSetState(() {});
                                      },
                                      text: '9',
                                      options: FFButtonOptions(
                                        width: 48.0,
                                        height: 48.0,
                                        padding: EdgeInsets.all(8.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: _model.npsscore == 9
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        textStyle: TextStyle(
                                          color: _model.npsscore == 9
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryText
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      key: ValueKey('Button_1f6u'),
                                      onPressed: () async {
                                        logFirebaseEvent(
                                            'NPS_PAGE_10_BTN_ON_TAP');
                                        logFirebaseEvent(
                                            'Button_update_page_state');
                                        _model.npsscore = 10;
                                        safeSetState(() {});
                                      },
                                      text: '10',
                                      options: FFButtonOptions(
                                        width: 48.0,
                                        height: 48.0,
                                        padding: EdgeInsets.all(8.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: _model.npsscore == 10
                                            ? FlutterFlowTheme.of(context)
                                                .secondary
                                            : FlutterFlowTheme.of(context)
                                                .alternate,
                                        textStyle: TextStyle(
                                          color: _model.npsscore == 10
                                              ? FlutterFlowTheme.of(context)
                                                  .secondaryText
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                        child: Container(
                          child: TextFormField(
                            key: ValueKey('TextField_fawq'),
                            controller: _model.textController,
                            focusNode: _model.textFieldFocusNode,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText:
                                  'Tell us why you chose this rating (optional)',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Miriam Libre',
                                  letterSpacing: 0.0,
                                ),
                            maxLines: 4,
                            minLines: 4,
                            validator: _model.textControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          key: ValueKey('Button_t2pj'),
                          onPressed: () async {
                            logFirebaseEvent(
                                'NPS_PAGE_SUBMIT_FEEDBACK_BTN_ON_TAP');
                            logFirebaseEvent('Button_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              npsScore: _model.npsscore,
                              npsComment: _model.textController.text,
                            ));
                            logFirebaseEvent('Button_navigate_to');

                            context.pushNamed(Profile05Widget.routeName);
                          },
                          text: 'Submit Feedback',
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 58.9,
                            padding: EdgeInsets.all(8.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Miriam Libre',
                                  color: FlutterFlowTheme.of(context).info,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
