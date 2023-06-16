import 'package:flutter/material.dart';

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
      "what/'s you favorite color?",
      "what/'s you favorite animal",
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
          ),
          body: Column(children: [
            Text(questions[_questionIndex]),
            ElevatedButton(
              child: Text("Answer 1"),
              onPressed: _answerQuestion,
            ),
            ElevatedButton(
              child: Text("Answer 2"),
              onPressed: () => print("Pressed button 2"),
            ),
            ElevatedButton(
              child: Text("Answer 2"),
              onPressed: () {
                print("Pressed button 3");
              },
            ),
          ])),
    );
  }
}
