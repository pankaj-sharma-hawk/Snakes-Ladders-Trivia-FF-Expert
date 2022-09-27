import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HowToPlayWidget extends StatefulWidget {
  const HowToPlayWidget({Key? key}) : super(key: key);

  @override
  _HowToPlayWidgetState createState() => _HowToPlayWidgetState();
}

class _HowToPlayWidgetState extends State<HowToPlayWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFFEF5DF),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterFlowYoutubePlayer(
                url: 'https://youtu.be/YKjzzJkir84',
                autoPlay: false,
                looping: true,
                mute: false,
                showControls: true,
                showFullScreen: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
