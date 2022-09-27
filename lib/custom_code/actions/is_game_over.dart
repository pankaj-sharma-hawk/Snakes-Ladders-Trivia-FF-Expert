// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
bool isGameOver(
  List<int> players,
  int numberOfPlayers,
) {
  int count = 0;
  for (int i = 0; i < players.length; i++) {
    if (players[i] == 100) {
      count++;
    }
  }
  return count == (numberOfPlayers - 1);
}
