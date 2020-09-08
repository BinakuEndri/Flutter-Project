import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'Koke djal i mir u rritsh u bafsh plincesh';
    } else if (resultScore <= 12) {
      resultText = 'Nam nam';
    } else if (resultScore <= 21) {
      resultText = 'Po ku duhet gjarpni bre';
    } else {
      resultText = 'Mu mos um fol ma';
    }
    return resultText;
  }

  const Result(this.resultScore,this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children:<Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,

        ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.lightBlue,
            onPressed: resetHandler ,
          ),
      ],
      ),
    );
  }
}
