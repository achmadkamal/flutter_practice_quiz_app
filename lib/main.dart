import 'package:flutter/material.dart';
import 'package:flutter_practice_quiz_app/quiz_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizApp(),
    );
  }
}
