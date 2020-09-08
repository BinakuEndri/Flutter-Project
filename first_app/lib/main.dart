
import 'quiz.dart';
import 'result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Home(

  ));
}
class Home extends StatefulWidget {
@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
      return _HomeState();
  }
}
class _HomeState extends State <Home>{
  final _questions = const [
    {
      'questionText':'What is your favorite color?',
      'answers':[
        {'text':'Black','score':10},
        {'text':'Red','score':5},
        {'text':'Green','score':3},
        {'text':'White','score':1},
      ],
    },
    {
      'questionText':'What is your favorite animal?',
      'answers':[
        {'text':'Snake','score':20},
        {'text':'Lion','score':5},
        {'text':'Cat','score':3},
        {'text':'Dog','score':3},
      ],
    },
    {
      'questionText':'What is your favorite car?',
      'answers':[
        {'text':'Mustang','score':10},
        {'text':'BMW','score':5},
        {'text':'AUDI','score':3},
        {'text':'Mercedes','score':1},
      ],
    },
  ];

  var _questionIndex=0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });


  }

  void _answerQuestion(int score){

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
        title: Text('Qysh dush'),
      ),
      body: _questionIndex < _questions.length ?
      Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions:_questions)
          : Result(_totalScore , _resetQuiz)
    ));

  }
}


