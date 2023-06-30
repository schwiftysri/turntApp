import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fest_page_model.dart';
export 'fest_page_model.dart';

class FestPageWidget extends StatefulWidget {
  const FestPageWidget({
    Key? key,
    this.festRef,
  }) : super(key: key);

  final DocumentReference? festRef;

  @override
  _FestPageWidgetState createState() => _FestPageWidgetState();
}

class _FestPageWidgetState extends State<FestPageWidget>
    with TickerProviderStateMixin {
  late FestPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FestPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Color(0x00362936),
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          borderWidth: 1.0,
          buttonSize: 60.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          ' ',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'New Proxima Nova',
                color: Colors.white,
                fontSize: 18.0,
                useGoogleFonts: false,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2.0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.asset(
              'assets/images/i51w6_3.png',
            ).image,
          ),
        ),
        child: StreamBuilder<FestsRecord>(
          stream: FestsRecord.getDocument(widget.festRef!),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                ),
              );
            }
            final columnFestsRecord = snapshot.data!;
            return SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    columnFestsRecord.logo,
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Text(
                    columnFestsRecord.name,
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'New Proxima Nova',
                          color: FlutterFlowTheme.of(context).primary,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold,
                          useGoogleFonts: false,
                        ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AutoSizeText(
                          columnFestsRecord.year,
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'New Proxima Nova',
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 0.0, 0.0),
                      child: Text(
                        'Description',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'New Proxima Nova',
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: Text(
                        columnFestsRecord.description,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'New Proxima Nova',
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 0.0, 0.0),
                      child: Text(
                        'Proshows Description',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'New Proxima Nova',
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: Text(
                        columnFestsRecord.proshowsDescription,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'New Proxima Nova',
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'Proshows',
                          queryParameters: {
                            'proshowsDates': serializeParam(
                              columnFestsRecord.proshowsDates,
                              ParamType.String,
                            ),
                            'festName': serializeParam(
                              columnFestsRecord.name,
                              ParamType.String,
                            ),
                            'festYear': serializeParam(
                              columnFestsRecord.year,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      text: 'Proshows',
                      options: FFButtonOptions(
                        width: 130.0,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'New Proxima Nova',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 0.0, 0.0),
                      child: Text(
                        'Events Description',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'New Proxima Nova',
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: Text(
                        columnFestsRecord.eventsDescription,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'New Proxima Nova',
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed(
                          'EventCategories',
                          queryParameters: {
                            'festName': serializeParam(
                              columnFestsRecord.name,
                              ParamType.String,
                            ),
                            'festYear': serializeParam(
                              columnFestsRecord.year,
                              ParamType.String,
                            ),
                            'eventsDates': serializeParam(
                              columnFestsRecord.eventsDates,
                              ParamType.String,
                            ),
                          }.withoutNulls,
                        );
                      },
                      text: 'Events',
                      options: FFButtonOptions(
                        width: 130.0,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'New Proxima Nova',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 0.0, 0.0),
                      child: Text(
                        'Get your ${columnFestsRecord.name} passes now',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'New Proxima Nova',
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Get Pass',
                      options: FFButtonOptions(
                        width: 130.0,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'New Proxima Nova',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
