import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  var questionIndex = 0;
  void questionAnswer() {
    print('Answer Chosen');
    questionIndex+=1;
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    var questions = ['What\'s your favurite color?',
    'What\'s your favourite animal'];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(questions[questionIndex]),),
        body: Column(children: [
          Text(questions[questionIndex]),
          ElevatedButton(onPressed:questionAnswer, child: Text('Answer 1')),
          ElevatedButton(onPressed:questionAnswer, child: Text('Answer 2')),
          ElevatedButton(onPressed:questionAnswer, child: Text('Answer 3')),
        ]),
        ),

    );
  }
}

