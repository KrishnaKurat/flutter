import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'no_content_charter_model.dart';
export 'no_content_charter_model.dart';

class NoContentCharterWidget extends StatefulWidget {
  const NoContentCharterWidget({super.key});

  @override
  State<NoContentCharterWidget> createState() => _NoContentCharterWidgetState();
}

class _NoContentCharterWidgetState extends State<NoContentCharterWidget> {
  late NoContentCharterModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoContentCharterModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.8,
      child: Lottie.asset(
        'assets/jsons/airplane.json',
        width: MediaQuery.sizeOf(context).width * 0.6,
        height: MediaQuery.sizeOf(context).height * 0.6,
        fit: BoxFit.contain,
        frameRate: FrameRate(60.0),
        animate: true,
      ),
    );
  }
}
