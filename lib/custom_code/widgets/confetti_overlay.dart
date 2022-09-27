// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:confetti/confetti.dart';
import 'dart:math' as math;

class ConfettiOverlay extends StatefulWidget {
  const ConfettiOverlay({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _ConfettiOverlayState createState() => _ConfettiOverlayState();
}

class _ConfettiOverlayState extends State<ConfettiOverlay> {
  ConfettiController _topController =
      ConfettiController(duration: const Duration(seconds: 10));

  @override
  void initState() {
    super.initState();
    _topController.play();
  }

  @override
  void dispose() {
    _topController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConfettiWidget(
        confettiController: _topController,
        blastDirection: math.pi,
        maxBlastForce: 8,
        minBlastForce: 1,
        emissionFrequency: 0.1,
        numberOfParticles: 50,
        gravity: 0.3,
        shouldLoop: true,
        colors: const [
          Colors.white,
          Colors.yellow,
          Colors.red,
          Colors.green,
          Colors.blue,
        ],
      ),
    );
  }
}
