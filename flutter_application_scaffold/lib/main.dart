import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  void answerQuestion() {
    print('Answer chosen');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\s your favourite animal',
      ];
    var num = 0;
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Text(questions.elementAt(num)),
            ElevatedButton(
              child: Text('Answer 1'),
              onPressed:() { num+=1;
              print(num);
              }
            ),
            ElevatedButton(
              child: Text('Answer 2'),
              onPressed:()=> print('Answer 2 chosen')
            ),
            ElevatedButton(
              child: Text('Answer 3'),
              onPressed:(){
                print('Answer 3 chosen');
              }
            ),
        ],),
      ),
    );
  }
}

