// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
resetAllLocalState() {
  FFAppState().Acurr = 0;
  FFAppState().Bcurr = 0;
  FFAppState().Ccurr = 0;
  FFAppState().Dcurr = 0;
  FFAppState().chance = 0;
  for (int i = 0; i < FFAppState().players.length; i++) {
    FFAppState().players[i] = 0;
  }
  FFAppState().winnerList.clear();
}
