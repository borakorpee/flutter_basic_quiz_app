// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';

import './quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': '2 + 2',
      'answers': [
        {'text': "6", 'score': 0},
        {'text': "3", 'score': 0},
        {'text': "4", 'score': 5},
        {'text': "5", 'score': 0},
      ],
    },
    {
      'questionText': '4 + 27',
      'answers': [
        {'text': "29", 'score': 0},
        {'text': "36", 'score': 0},
        {'text': "33", 'score': 0},
        {'text': "31", 'score': 5},
      ],
    },
    {
      'questionText': '13 + 27',
      'answers': [
        {'text': "29", 'score': 0},
        {'text': "40", 'score': 5},
        {'text': "44", 'score': 0},
        {'text': "50", 'score': 0},
      ],
    },
  ];
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
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first app"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
