// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
Future collectWinner(
  int player,
  int numberOfPlayers,
  List<int> players,
) async {
  int index = (player % numberOfPlayers);
  if (players[index] == 100) {
    FFAppState().winnerList.add(FFAppState().playerName[index]);
  }
}
