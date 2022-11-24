import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Answer extends StatelessWidget {
  // const Answer({super.key});

  final String textAnswer;
  final VoidCallback handler;
  Answer(this.handler,this.textAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(60, 0, 60, 0),
      width: double.infinity,
      child: ElevatedButton(
        style:ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        child: Text(textAnswer, style: TextStyle(color: Colors.white),),
        onPressed: handler,),
    );
  }
}