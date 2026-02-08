import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'loader_model.dart';
export 'loader_model.dart';

class LoaderWidget extends StatefulWidget {
  const LoaderWidget({super.key});

  static String routeName = 'LOADER';
  static String routePath = '/loader';

  @override
  State<LoaderWidget> createState() => _LoaderWidgetState();
}

class _LoaderWidgetState extends State<LoaderWidget> {
  late LoaderModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoaderModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 1500,
        ),
      );
      FFAppState().RoleAppState = valueOrDefault(currentUserDocument?.role, '');
      FFAppState().update(() {});

      context.goNamed(
        WelcomeWidget.routeName,
        extra: <String, dynamic>{
          '__transition_info__': TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.rightToLeft,
            duration: Duration(milliseconds: 150),
          ),
        },
      );
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
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Lottie.asset(
            'assets/jsons/Loading.json',
            width: 250.0,
            height: 250.0,
            fit: BoxFit.contain,
            frameRate: FrameRate(60.0),
            animate: true,
          ),
        ),
      ),
    );
  }
}
