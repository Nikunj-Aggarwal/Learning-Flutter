import 'package:flutter/material.dart';
import 'package:quiz_app_stateful_widget/answer.dart';
import 'package:quiz_app_stateful_widget/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
    throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _questions = [
    {
      'questionText':'What\'s your favurite color?',
      'answers': ['Black','Red','Green', 'White'],
    },
    {
      'questionText':'What\'s your favourite animal',
      'answers': ['Monkey','Chimpanzee','Elephant', 'Zebra'],
    }
  ];

  void _questionAnswer() {
    setState(() {
      if(_questionIndex<_questions.length-1) {
        _questionIndex+=1;
      } else {
        _questionIndex-=1;
      }
    });
    print('Answer Chosen');
    
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

   
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: MyWidget('Quiz App'),),
        body: Column(children: [
          MyWidget(_questions[_questionIndex]['questionText'] as String),
          ...(_questions[_questionIndex]['answers'] as List<String>).map((answer){
            return Answer(_questionAnswer, answer);
          }).toList(),
        ]),
        ),

    );
  }
}

