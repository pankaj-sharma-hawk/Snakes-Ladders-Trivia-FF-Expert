import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _rules = prefs.getStringList('ff_rules') ?? _rules;
    _isQuestionTurn = prefs.getBool('ff_isQuestionTurn') ?? _isQuestionTurn;
  }

  late SharedPreferences prefs;

  int dicevalue = 5;

  int Acurr = 0;

  int Bcurr = 0;

  int Ccurr = 0;

  int Dcurr = 0;

  List<int> players = [0, 0, 0, 0];

  int numberofPlayers = 4;

  int chance = 0;

  String answer = 'Pankaj';

  List<String> _rules = [
    '1.  Snake-Ladder-Trivia Game is old fashion snake ladder game with a twist of trivia. So if you are going to climb a ladder or a snake will take you down. you only go up to the ladder if you will answer a trivia question and in the case of a snake, if you give the right answer, we will place you in the same place. don\'t you find it interesting.',
    '2.  Minimum 2 Players and Maximum 4 Players can play this game.',
    '3.  Winners will come only if all players complete the game.',
    '4.  Player 1 color is Red, Player 2 color is Blue, Player 3 color is Green, and Player 4 color is Yellow.',
    '5. Trivia question will be from different subjects like Science,Geography,Maths and General Knowledge.'
  ];
  List<String> get rules => _rules;
  set rules(List<String> _value) {
    _rules = _value;
    prefs.setStringList('ff_rules', _value);
  }

  void addToRules(String _value) {
    _rules.add(_value);
    prefs.setStringList('ff_rules', _rules);
  }

  void removeFromRules(String _value) {
    _rules.remove(_value);
    prefs.setStringList('ff_rules', _rules);
  }

  bool rewardResult = false;

  List<String> playerImages = [
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/tr8jignptjox/1PP.png',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/zm9qpxc14yln/2PP.png',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/9nzjqnvc2lk7/3PP.png',
    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/snakes-ladders-gnm0de/assets/eh395k8dgwuy/4PP.png'
  ];

  List<String> winnerList = [];

  List<String> playerName = ['Red', 'Blue', 'Green', 'Yellow'];

  List<String> result = [];

  bool _isQuestionTurn = true;
  bool get isQuestionTurn => _isQuestionTurn;
  set isQuestionTurn(bool _value) {
    _isQuestionTurn = _value;
    prefs.setBool('ff_isQuestionTurn', _value);
  }

  int snakeAndLadderValue = 0;

  int newPlayerValue = 0;

  bool isDiceVisible = true;

  int mainPageMusicCount = 0;

  String alang = 'English';
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
