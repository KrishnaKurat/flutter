import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/walkthroughs/app_walkthrough.dart';
import '/index.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart'
    show TutorialCoachMark;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'landing_model.dart';
export 'landing_model.dart';

class LandingWidget extends StatefulWidget {
  const LandingWidget({super.key});

  static String routeName = 'landing';
  static String routePath = '/landing';

  @override
  State<LandingWidget> createState() => _LandingWidgetState();
}

class _LandingWidgetState extends State<LandingWidget>
    with TickerProviderStateMixin {
  late LandingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LandingModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        loop: true,
        reverse: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeOut,
            delay: 0.0.ms,
            duration: 3200.0.ms,
            begin: Offset(0.0, -80.0),
            end: Offset(0.0, 0.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 3200.0.ms,
            duration: 3200.0.ms,
            begin: Offset(0.0, 0.0),
            end: Offset(0.0, -80.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.9, 0.9),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 300.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 300.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.9, 0.9),
            end: Offset(1.0, 1.0),
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                child: Container(
                  width: double.infinity,
                  height: 420.0,
                  constraints: BoxConstraints(
                    maxWidth: 1024.0,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 0.718,
                        decoration: BoxDecoration(
                          color: Color(0xFFE1E1E1),
                        ),
                        child: MasonryGridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverSimpleGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return [
                              () => ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                    child: Image.asset(
                                      'assets/images/f259bac3b661416fb83c74439c9e7342.jpg',
                                      width: 120.0,
                                      height: 120.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                              () => ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                      'assets/images/e6e59a0e9ef50460a12aa9a246746ed8.jpg',
                                      width: 120.0,
                                      height: 160.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                              () => ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(16.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(16.0),
                                    ),
                                    child: Image.network(
                                      'https://picsum.photos/seed/32/600',
                                      width: 100.0,
                                      height: 0.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                              () => ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                    child: Image.asset(
                                      'assets/images/8155255cc64f5c3c5f818c4cf57f9aa0.jpg',
                                      width: 80.0,
                                      height: 180.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                              () => ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                      'assets/images/638822807b387cf7feaf370583954656.jpg',
                                      width: 169.81,
                                      height: 160.0,
                                      fit: BoxFit.none,
                                      alignment: Alignment(0.0, 1.0),
                                    ),
                                  ),
                              () => ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                      'assets/images/c3350ef64de011c669acced6aaaa907f.jpg',
                                      width: 120.0,
                                      height: 121.8,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                              () => ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(16.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(16.0),
                                      topRight: Radius.circular(0.0),
                                    ),
                                    child: Image.asset(
                                      'assets/images/df1f3af2b2eec5c14525db70d737f84e.jpg',
                                      width: 120.0,
                                      height: 190.0,
                                      fit: BoxFit.cover,
                                      alignment: Alignment(0.0, 0.0),
                                    ),
                                  ),
                              () => ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                      'assets/images/830e951cc8859691799e3fb4f117ce35.jpg',
                                      width: 120.0,
                                      height: 160.0,
                                      fit: BoxFit.cover,
                                      alignment: Alignment(1.0, 0.0),
                                    ),
                                  ),
                              () => ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                      'assets/images/5d38187284aa71280dadc242ccb440ca.jpg',
                                      width: 120.0,
                                      height: 180.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                              () => ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                      'assets/images/pexels-withbaxit-32885137.jpg',
                                      width: 120.0,
                                      height: 180.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                            ][index]();
                          },
                        ),
                      ).animateOnPageLoad(
                          animationsMap['containerOnPageLoadAnimation']!),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(40.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'TRANSIT MANAGEMENT APP',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .fontStyle,
                                      ),
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .displaySmall
                                          .fontStyle,
                                    ),
                              ).animateOnPageLoad(
                                  animationsMap['textOnPageLoadAnimation1']!),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: Text(
                                  'Centralised Transit Platform',
                                  textAlign: TextAlign.center,
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        font: GoogleFonts.inter(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                ).animateOnPageLoad(
                                    animationsMap['textOnPageLoadAnimation2']!),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.goNamed(
                                USERLoginWidget.routeName,
                                extra: <String, dynamic>{
                                  '__transition_info__': TransitionInfo(
                                    hasTransition: true,
                                    transitionType:
                                        PageTransitionType.rightToLeft,
                                    duration: Duration(milliseconds: 150),
                                  ),
                                },
                              );
                            },
                            text: 'Get Started',
                            options: FFButtonOptions(
                              width: 250.0,
                              height: 51.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFF3F7D20),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Color(0xFFF3EFF5),
                                    fontSize: 17.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                              elevation: 0.0,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ).addWalkthrough(
                            buttonEvo0p6kh,
                            _model.appWalkthroughController,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TutorialCoachMark createPageWalkthrough(BuildContext context) =>
      TutorialCoachMark(
        targets: createWalkthroughTargets(context),
        onFinish: () async {
          safeSetState(() => _model.appWalkthroughController = null);
        },
        onSkip: () {
          return true;
        },
      );
}
