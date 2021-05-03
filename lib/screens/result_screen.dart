import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String totalScoreNumb;
  final int resultScore;
  final Function resetHandler;
  ResultScreen({this.totalScoreNumb, this.resultScore, this.resetHandler});

  String get resultPhrase {
    String resultText;
    if (resultScore >= 80) {
      resultText = 'Great Job, keep it up!';
    } else if (resultScore == 60) {
      resultText = 'It\'s okay, try to learn more!';
    } else {
      resultText = 'O ow.. You have to study harder!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 4,
                  offset: Offset(4, 8), // Shadow position
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white),
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              totalScoreNumb,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 15),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 25),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              style: TextButton.styleFrom(primary: Colors.white),
              child: Text(
                'Restart Quiz!',
              ),
              onPressed: resetHandler,
            ),
          ),
        ],
      ),
    );
  }
}
