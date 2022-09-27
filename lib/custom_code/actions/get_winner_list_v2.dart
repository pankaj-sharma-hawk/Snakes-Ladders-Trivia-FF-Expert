// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
Future getWinnerListV2() async {
  for (int i = 0; i < FFAppState().winnerList.length; i++) {
    FFAppState().winnerList[i] =
        'Winner ' + (i + 1).toString() + ' -- ' + FFAppState().winnerList[i];
  }
}
