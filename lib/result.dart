// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore > 14) {
      resultText = 'Harika';
    } else if (resultScore > 9) {
      resultText = 'Ehhhh işte';
    } else if (resultScore > 4) {
      resultText = 'Kötü';
    } else {
      resultText = 'Tekrar Dene';
    }
    ;
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.white,
              backgroundColor: Colors.black,
              fontSize: 35,
              letterSpacing: 8,
            ),
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('Tekrar Dene'),
            textColor: Colors.blueAccent,
          )
        ],
      ),
    );
  }
}
