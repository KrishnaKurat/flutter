import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'no_contentbus_model.dart';
export 'no_contentbus_model.dart';

class NoContentbusWidget extends StatefulWidget {
  const NoContentbusWidget({super.key});

  @override
  State<NoContentbusWidget> createState() => _NoContentbusWidgetState();
}

class _NoContentbusWidgetState extends State<NoContentbusWidget> {
  late NoContentbusModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoContentbusModel());

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
        'assets/jsons/army_bus.json',
        width: MediaQuery.sizeOf(context).width * 0.6,
        height: MediaQuery.sizeOf(context).height * 0.6,
        fit: BoxFit.contain,
        frameRate: FrameRate(60.0),
        animate: true,
      ),
    );
  }
}
