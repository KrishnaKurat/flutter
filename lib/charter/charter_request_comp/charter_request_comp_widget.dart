import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'charter_request_comp_model.dart';
export 'charter_request_comp_model.dart';

class CharterRequestCompWidget extends StatefulWidget {
  const CharterRequestCompWidget({
    super.key,
    required this.start,
    required this.end,
    required this.routeSno,
  });

  final String? start;
  final String? end;
  final int? routeSno;

  @override
  State<CharterRequestCompWidget> createState() =>
      _CharterRequestCompWidgetState();
}

class _CharterRequestCompWidgetState extends State<CharterRequestCompWidget>
    with TickerProviderStateMixin {
  late CharterRequestCompModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CharterRequestCompModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 44.0, 0.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x25090F13),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0),
            topLeft: Radius.circular(12.0),
            topRight: Radius.circular(12.0),
          ),
        ),
        child: Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                      child: Container(
                        width: 60.0,
                        height: 4.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 44.0,
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 24.0,
                          ),
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'REQUEST CHARTER',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation']!),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 0.0),
                                child: Text(
                                  'Fill in the information below',
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .fontStyle,
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
                Divider(
                  height: 24.0,
                  thickness: 2.0,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Container(
                      width: 270.0,
                      child: TextFormField(
                        controller: _model.textController,
                        focusNode: _model.textFieldFocusNode,
                        autofocus: false,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: true,
                          labelStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                          hintText: 'Required Seats',
                          hintStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).timberwolf,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).fernGreen,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).error,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                        maxLines: null,
                        keyboardType: TextInputType.number,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        enableInteractiveSelection: false,
                        validator:
                            _model.textControllerValidator.asValidator(context),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        final _datePickedDate = await showDatePicker(
                          context: context,
                          initialDate: getCurrentTimestamp,
                          firstDate: getCurrentTimestamp,
                          lastDate: DateTime(2050),
                        );

                        if (_datePickedDate != null) {
                          safeSetState(() {
                            _model.datePicked = DateTime(
                              _datePickedDate.year,
                              _datePickedDate.month,
                              _datePickedDate.day,
                            );
                          });
                        } else if (_model.datePicked != null) {
                          safeSetState(() {
                            _model.datePicked = getCurrentTimestamp;
                          });
                        }
                      },
                      text: valueOrDefault<String>(
                        dateTimeFormat(
                          "yMMMd",
                          _model.datePicked,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        'DD-MM-YYYY',
                      ),
                      icon: Icon(
                        Icons.date_range_rounded,
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        width: 270.0,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        iconAlignment: IconAlignment.start,
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF626262),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).timberwolf,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      showLoadingIndicator: false,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              var _shouldSetState = false;
                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                return;
                              }
                              if (_model.datePicked == null) {
                                final _datePickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: getCurrentTimestamp,
                                  lastDate: DateTime(2050),
                                );

                                if (_datePickedDate != null) {
                                  safeSetState(() {
                                    _model.datePicked = DateTime(
                                      _datePickedDate.year,
                                      _datePickedDate.month,
                                      _datePickedDate.day,
                                    );
                                  });
                                } else if (_model.datePicked != null) {
                                  safeSetState(() {
                                    _model.datePicked = getCurrentTimestamp;
                                  });
                                }
                                return;
                              }
                              _model.cancelledFlightsList =
                                  await queryCancelledFlightsRecordOnce();
                              _shouldSetState = true;
                              for (int loop1Index = 0;
                                  loop1Index <
                                      _model.cancelledFlightsList!.length;
                                  loop1Index++) {
                                final currentLoop1Item =
                                    _model.cancelledFlightsList![loop1Index];
                                if (dateTimeFormat(
                                      "yMMMd",
                                      _model.datePicked,
                                      locale: FFLocalizations.of(context)
                                          .languageCode,
                                    ) ==
                                    valueOrDefault<String>(
                                      dateTimeFormat(
                                        "yMMMd",
                                        currentLoop1Item.cFdate,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      '0',
                                    )) {
                                  for (int loop2Index = 0;
                                      loop2Index <
                                          currentLoop1Item.cFrouteSno.length;
                                      loop2Index++) {
                                    final currentLoop2Item =
                                        currentLoop1Item.cFrouteSno[loop2Index];
                                    if (widget.routeSno ==
                                        valueOrDefault<int>(
                                          currentLoop2Item,
                                          0,
                                        )) {
                                      ScaffoldMessenger.of(context)
                                          .clearSnackBars();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                            (String cFdate) {
                                              return "Flight on $cFdate for this route is cancelled!";
                                            }(dateTimeFormat(
                                              "yMMMd",
                                              currentLoop1Item.cFdate!,
                                              locale:
                                                  FFLocalizations.of(context)
                                                      .languageCode,
                                            )),
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  font: GoogleFonts.inter(
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelSmall
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  fontSize: 13.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                          duration:
                                              Duration(milliseconds: 4000),
                                          backgroundColor: Color(0x8FF4505A),
                                        ),
                                      );
                                      Navigator.pop(context);
                                      if (_shouldSetState) safeSetState(() {});
                                      return;
                                    }
                                  }
                                }
                              }
                              if (widget.end == 'Delhi') {
                                _model.lehDelhiLimitDocList =
                                    await queryLehDelhicharterLimitsRecordOnce(
                                  queryBuilder: (lehDelhicharterLimitsRecord) =>
                                      lehDelhicharterLimitsRecord.where(
                                    'user_id',
                                    isEqualTo: currentUserDisplayName,
                                  ),
                                );
                                _shouldSetState = true;
                                if ((_model.lehDelhiLimitDocList != null &&
                                        (_model.lehDelhiLimitDocList)!
                                            .isNotEmpty) ==
                                    false) {
                                  _model.maxLimitForDay = 10;
                                  safeSetState(() {});
                                } else {
                                  _model.maxLimitForDay = () {
                                    if (dateTimeFormat(
                                          "EEEE",
                                          _model.datePicked,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ) ==
                                        'Monday') {
                                      return _model.lehDelhiLimitDocList!
                                          .firstOrNull!.monLimit;
                                    } else if (dateTimeFormat(
                                          "EEEE",
                                          _model.datePicked,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ) ==
                                        'Tuesday') {
                                      return _model.lehDelhiLimitDocList!
                                          .firstOrNull!.tueLimit;
                                    } else if (dateTimeFormat(
                                          "EEEE",
                                          _model.datePicked,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ) ==
                                        'Wednesday') {
                                      return _model.lehDelhiLimitDocList!
                                          .firstOrNull!.wedLimit;
                                    } else if (dateTimeFormat(
                                          "EEEE",
                                          _model.datePicked,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ) ==
                                        'Thursday') {
                                      return _model.lehDelhiLimitDocList!
                                          .firstOrNull!.thurLimit;
                                    } else if (dateTimeFormat(
                                          "EEEE",
                                          _model.datePicked,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ) ==
                                        'Friday') {
                                      return _model.lehDelhiLimitDocList!
                                          .firstOrNull!.friLimit;
                                    } else if (dateTimeFormat(
                                          "EEEE",
                                          _model.datePicked,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ) ==
                                        'Saturday') {
                                      return _model.lehDelhiLimitDocList!
                                          .firstOrNull!.satLimit;
                                    } else {
                                      return _model.lehDelhiLimitDocList!
                                          .firstOrNull!.sunLimit;
                                    }
                                  }();
                                  safeSetState(() {});
                                }
                              } else {
                                _model.lehChdLimitDocList =
                                    await queryLehChandigarhcharterLimitsRecordOnce(
                                  queryBuilder:
                                      (lehChandigarhcharterLimitsRecord) =>
                                          lehChandigarhcharterLimitsRecord
                                              .where(
                                    'user_id',
                                    isEqualTo: currentUserDisplayName,
                                  ),
                                );
                                _shouldSetState = true;
                                if ((_model.lehDelhiLimitDocList != null &&
                                        (_model.lehDelhiLimitDocList)!
                                            .isNotEmpty) ==
                                    false) {
                                  _model.maxLimitForDay = 10;
                                  safeSetState(() {});
                                } else {
                                  _model.maxLimitForDay = () {
                                    if (dateTimeFormat(
                                          "EEEE",
                                          _model.datePicked,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ) ==
                                        'Monday') {
                                      return _model.lehChdLimitDocList!
                                          .firstOrNull!.monLimit;
                                    } else if (dateTimeFormat(
                                          "EEEE",
                                          _model.datePicked,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ) ==
                                        'Tuesday') {
                                      return _model.lehChdLimitDocList!
                                          .firstOrNull!.tueLimit;
                                    } else if (dateTimeFormat(
                                          "EEEE",
                                          _model.datePicked,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ) ==
                                        'Wednesday') {
                                      return _model.lehChdLimitDocList!
                                          .firstOrNull!.wedLimit;
                                    } else if (dateTimeFormat(
                                          "EEEE",
                                          _model.datePicked,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ) ==
                                        'Thursday') {
                                      return _model.lehChdLimitDocList!
                                          .firstOrNull!.thurLimit;
                                    } else if (dateTimeFormat(
                                          "EEEE",
                                          _model.datePicked,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ) ==
                                        'Friday') {
                                      return _model.lehChdLimitDocList!
                                          .firstOrNull!.friLimit;
                                    } else if (dateTimeFormat(
                                          "EEEE",
                                          _model.datePicked,
                                          locale: FFLocalizations.of(context)
                                              .languageCode,
                                        ) ==
                                        'Saturday') {
                                      return _model.lehChdLimitDocList!
                                          .firstOrNull!.satLimit;
                                    } else {
                                      return _model.lehChdLimitDocList!
                                          .firstOrNull!.sunLimit;
                                    }
                                  }();
                                  safeSetState(() {});
                                }
                              }

                              _model.currentVacancyForUser =
                                  await queryCurrentVacancyRecordOnce(
                                queryBuilder: (currentVacancyRecord) =>
                                    currentVacancyRecord
                                        .where(
                                          'user',
                                          isEqualTo: currentUserDisplayName,
                                        )
                                        .where(
                                          'route',
                                          isEqualTo: widget.end,
                                        )
                                        .where(
                                          'datebooked',
                                          isEqualTo: _model.datePicked,
                                        ),
                              );
                              _shouldSetState = true;
                              if ((_model.currentVacancyForUser != null &&
                                      (_model.currentVacancyForUser)!
                                          .isNotEmpty) ==
                                  false) {
                                await CurrentVacancyRecord.collection
                                    .doc()
                                    .set(createCurrentVacancyRecordData(
                                      user: currentUserDisplayName,
                                      route: widget.end,
                                      datebooked: _model.datePicked,
                                      filledVacancies: 0,
                                    ));
                              }
                              _model.currentVacancyForUser2 =
                                  await queryCurrentVacancyRecordOnce(
                                queryBuilder: (currentVacancyRecord) =>
                                    currentVacancyRecord
                                        .where(
                                          'user',
                                          isEqualTo: currentUserDisplayName,
                                        )
                                        .where(
                                          'route',
                                          isEqualTo: widget.end,
                                        )
                                        .where(
                                          'datebooked',
                                          isEqualTo: _model.datePicked,
                                        ),
                              );
                              _shouldSetState = true;
                              if ((int maxlimit, int alreadyfilled,
                                      int inputvacancy) {
                                return (maxlimit - alreadyfilled) >=
                                    inputvacancy;
                              }(
                                  _model.maxLimitForDay,
                                  _model.currentVacancyForUser2!.firstOrNull!
                                      .filledVacancies,
                                  int.parse(_model.textController.text))) {
                                await _model.currentVacancyForUser2!
                                    .firstOrNull!.reference
                                    .update({
                                  ...mapToFirestore(
                                    {
                                      'filled_vacancies': FieldValue.increment(
                                          int.parse(
                                              _model.textController.text)),
                                    },
                                  ),
                                });

                                await RequestsRecord.collection
                                    .doc()
                                    .set(createRequestsRecordData(
                                      unit: currentUserDisplayName,
                                      traveldate: _model.datePicked,
                                      state: 'pending',
                                      createddate: getCurrentTimestamp,
                                      start: widget.start,
                                      end: widget.end,
                                      lightcolor: Color(0xFFFFE9BB),
                                      darkcolor: Color(0xFFEDB520),
                                      seatsrequired: int.tryParse(
                                          _model.textController.text),
                                      requestedby: currentUserDisplayName,
                                      type: 'Charter',
                                      byAdmin: false,
                                      routeSno: widget.routeSno,
                                      vacancy: _model.currentVacancyForUser2
                                          ?.firstOrNull?.reference,
                                    ));
                              } else {
                                ScaffoldMessenger.of(context).clearSnackBars();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      (int maxlimit, int filledvacancy,
                                              int inputseats) {
                                        return "Seat allocation failed. Max limit: $maxlimit ,Remaining seats: ${maxlimit - filledvacancy} ,Requested: $inputseats.";
                                      }(
                                          _model.maxLimitForDay,
                                          valueOrDefault<int>(
                                            _model.currentVacancyForUser2
                                                ?.firstOrNull?.filledVacancies,
                                            0,
                                          ),
                                          int.parse(
                                              _model.textController.text)),
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                            ),
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: 13.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelSmall
                                                    .fontStyle,
                                          ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor: Color(0x8FF4505A),
                                  ),
                                );
                              }

                              Navigator.pop(context);
                              if (_shouldSetState) safeSetState(() {});
                            },
                            text: 'Request',
                            options: FFButtonOptions(
                              width: 270.0,
                              height: 47.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).fernGreen,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.outfit(
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 2.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
