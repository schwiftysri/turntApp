import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calendar_page_model.dart';
export 'calendar_page_model.dart';

class CalendarPageWidget extends StatefulWidget {
  const CalendarPageWidget({Key? key}) : super(key: key);

  @override
  _CalendarPageWidgetState createState() => _CalendarPageWidgetState();
}

class _CalendarPageWidgetState extends State<CalendarPageWidget> {
  late CalendarPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
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
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          title: Text(
            'Calendar',
            style: FlutterFlowTheme.of(context).displaySmall,
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              FlutterFlowCalendar(
                color: FlutterFlowTheme.of(context).primary,
                iconColor: FlutterFlowTheme.of(context).secondary,
                weekFormat: false,
                weekStartsMonday: false,
                onChange: (DateTimeRange? newSelectedDate) {
                  setState(() => _model.calendarSelectedDay = newSelectedDate);
                },
                titleStyle: TextStyle(
                  color: FlutterFlowTheme.of(context).primary,
                ),
                dayOfWeekStyle: TextStyle(
                  color: FlutterFlowTheme.of(context).primary,
                ),
                dateStyle: TextStyle(
                  color: FlutterFlowTheme.of(context).primary,
                ),
                selectedDateStyle: TextStyle(
                  color: FlutterFlowTheme.of(context).secondary,
                ),
                inactiveDateStyle: TextStyle(
                  color: FlutterFlowTheme.of(context).secondary,
                ),
              ),
              Text(
                'Events ',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              StreamBuilder<List<EventsRegisteredRecord>>(
                stream: queryEventsRegisteredRecord(
                  parent: currentUserReference,
                ),
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
                  List<EventsRegisteredRecord>
                      listViewEventsRegisteredRecordList = snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewEventsRegisteredRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewEventsRegisteredRecord =
                          listViewEventsRegisteredRecordList[listViewIndex];
                      return Visibility(
                        visible: listViewEventsRegisteredRecord.date ==
                            _model.calendarSelectedDay?.end,
                        child: Text(
                          listViewEventsRegisteredRecord.name,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      );
                    },
                  );
                },
              ),
              Text(
                'Proshows',
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              StreamBuilder<List<ProshowsRegisteredRecord>>(
                stream: queryProshowsRegisteredRecord(
                  parent: currentUserReference,
                ),
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
                  List<ProshowsRegisteredRecord>
                      listViewProshowsRegisteredRecordList = snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewProshowsRegisteredRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewProshowsRegisteredRecord =
                          listViewProshowsRegisteredRecordList[listViewIndex];
                      return Visibility(
                        visible: listViewProshowsRegisteredRecord.date ==
                            _model.calendarSelectedDay?.end,
                        child: Text(
                          listViewProshowsRegisteredRecord.name,
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
