import 'package:flutter/material.dart';

import "./question.dart";
import "./answer.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    print("pressed button 1");
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "what\'s you favorite color?",
      "what\'s you favorite animal",
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
          ),
          body: Column(children: [
            Question(questions[_questionIndex]),
            Answer(_answerQuestion, "Answer 1"),
            Answer(() => print("Pressed button 2"), "Answer 2"),
            Answer(() {
              print("Pressed button 3");
            }, "Answer 3"),
          ])),
    );
  }
}
