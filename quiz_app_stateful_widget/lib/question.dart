import 'dart:ffi';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  // MyWidget({super.key});

  final String questionText;
  MyWidget(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(2),
      child : Text(questionText, style: TextStyle(fontSize: 28),textAlign: TextAlign.center,));
  }
}