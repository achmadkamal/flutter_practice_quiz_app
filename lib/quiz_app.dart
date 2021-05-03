import 'package:flutter/material.dart';
import 'package:flutter_practice_quiz_app/questions_list.dart';
import 'package:flutter_practice_quiz_app/screens/quiz_screen.dart';
import 'package:flutter_practice_quiz_app/screens/result_screen.dart';

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < questionsListData.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Quiz App'),
        ),
        body: _questionIndex < questionsListData.length
            ? QuizScreen(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questionsList: questionsListData,
              )
            : ResultScreen(
                totalScoreNumb: 'Your score is ' + _totalScore.toString(),
                resultScore: _totalScore,
                resetHandler: _resetQuiz,
              ),
      ),
    );
  }
}
