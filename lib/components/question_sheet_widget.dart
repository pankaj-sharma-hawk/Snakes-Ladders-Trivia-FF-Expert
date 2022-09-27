import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSheetWidget extends StatefulWidget {
  const QuestionSheetWidget({
    Key? key,
    this.sequence,
  }) : super(key: key);

  final int? sequence;

  @override
  _QuestionSheetWidgetState createState() => _QuestionSheetWidgetState();
}

class _QuestionSheetWidgetState extends State<QuestionSheetWidget> {
  bool? resultA;
  bool? resultB;
  bool? resultC;
  bool? resultD;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<RewardQuestionsRecord>>(
      stream: queryRewardQuestionsRecord(
        queryBuilder: (rewardQuestionsRecord) =>
            rewardQuestionsRecord.where('sequence', isEqualTo: widget.sequence),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<RewardQuestionsRecord> containerRewardQuestionsRecordList =
            snapshot.data!;
        // Return an empty Container when the document does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final containerRewardQuestionsRecord =
            containerRewardQuestionsRecordList.isNotEmpty
                ? containerRewardQuestionsRecordList.first
                : null;
        return Material(
          color: Colors.transparent,
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0),
              bottomRight: Radius.circular(0),
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          child: Container(
            width: double.infinity,
            height: 370,
            decoration: BoxDecoration(
              color: Color(0xFFF9E7D8),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                        child: Container(
                          width: 50,
                          height: 4,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).lineColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                    child: StreamBuilder<List<RewardQuestionsRecord>>(
                      stream: queryRewardQuestionsRecord(
                        queryBuilder: (rewardQuestionsRecord) =>
                            rewardQuestionsRecord.where('sequence',
                                isEqualTo: widget.sequence),
                        singleRecord: true,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<RewardQuestionsRecord>
                            textRewardQuestionsRecordList = snapshot.data!;
                        // Return an empty Container when the document does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final textRewardQuestionsRecord =
                            textRewardQuestionsRecordList.isNotEmpty
                                ? textRewardQuestionsRecordList.first
                                : null;
                        return Text(
                          containerRewardQuestionsRecord!.question!,
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF99440E),
                              ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  // Check Answer
                                  resultA = await actions.isAnswerCorrect(
                                    1,
                                    containerRewardQuestionsRecord!
                                        .answerIndex!,
                                  );
                                  if (resultA!) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Congrats Your Answer is Correct ...',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor: Color(0xFF349006),
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Oopss Your Answer is Wrong ...',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor: Color(0xFFCA0003),
                                      ),
                                    );
                                  }

                                  setState(() =>
                                      FFAppState().rewardResult = resultA!);
                                  Navigator.pop(context);

                                  setState(() {});
                                },
                                text: containerRewardQuestionsRecord!.option1!,
                                options: FFButtonOptions(
                                  width: 300,
                                  height: 40,
                                  color: Color(0xFF349006),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  // Check Answer
                                  resultB = await actions.isAnswerCorrect(
                                    2,
                                    containerRewardQuestionsRecord!
                                        .answerIndex!,
                                  );
                                  if (resultB!) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Congrats Your Answer is Correct ...',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor: Color(0xFF349006),
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Oopss Your Answer is Wrong ...',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor: Color(0xFFCA0003),
                                      ),
                                    );
                                  }

                                  setState(() =>
                                      FFAppState().rewardResult = resultB!);
                                  Navigator.pop(context);

                                  setState(() {});
                                },
                                text: containerRewardQuestionsRecord!.option2!,
                                options: FFButtonOptions(
                                  width: 300,
                                  height: 40,
                                  color: Color(0xFF349006),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  // Check Answer
                                  resultC = await actions.isAnswerCorrect(
                                    3,
                                    containerRewardQuestionsRecord!
                                        .answerIndex!,
                                  );
                                  if (resultC!) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Congrats Your Answer is Correct ...',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor: Color(0xFF349006),
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Oopss Your Answer is Wrong ...',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor: Color(0xFFCA0003),
                                      ),
                                    );
                                  }

                                  setState(() =>
                                      FFAppState().rewardResult = resultC!);
                                  Navigator.pop(context);

                                  setState(() {});
                                },
                                text: containerRewardQuestionsRecord!.option3!,
                                options: FFButtonOptions(
                                  width: 300,
                                  height: 40,
                                  color: Color(0xFF349006),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FFButtonWidget(
                                onPressed: () async {
                                  // Check Answer
                                  resultD = await actions.isAnswerCorrect(
                                    4,
                                    containerRewardQuestionsRecord!
                                        .answerIndex!,
                                  );
                                  if (resultD!) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Congrats Your Answer is Correct ...',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor: Color(0xFF349006),
                                      ),
                                    );
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Oopss Your Answer is Wrong ...',
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBtnText,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 22,
                                          ),
                                        ),
                                        duration: Duration(milliseconds: 4000),
                                        backgroundColor: Color(0xFFCA0003),
                                      ),
                                    );
                                  }

                                  setState(() =>
                                      FFAppState().rewardResult = resultD!);
                                  Navigator.pop(context);

                                  setState(() {});
                                },
                                text: containerRewardQuestionsRecord!.option4!,
                                options: FFButtonOptions(
                                  width: 300,
                                  height: 40,
                                  color: Color(0xFF349006),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle2
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
