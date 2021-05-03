import 'package:flutter/material.dart';
import '../widgets/question_widget.dart';
import '../widgets/answer_widget.dart';

class QuizScreen extends StatelessWidget {
  final List<Map<String, Object>> questionsList;
  final int questionIndex;
  final Function answerQuestion;

  QuizScreen({
    @required this.questionsList,
    @required this.questionIndex,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Question(
          questionText: questionsList[questionIndex]['questionText'],
        ),
        ...(questionsList[questionIndex]['answerText']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            selectHandler: () => answerQuestion(answer['score']),
            answerText: answer['text'],
          );
        }).toList(),
      ],
    );
  }
}
