import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
    throw UnimplementedError();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var questions = ['What\'s your favurite color?',
  'What\'s your favourite animal'];

  void questionAnswer() {
    setState(() {
      if(questionIndex<questions.length-1) {
        questionIndex+=1;
      } else {
        questionIndex-=1;
      }
    });
    print('Answer Chosen');
    
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

   
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

