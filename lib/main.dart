import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("pressed button 1");
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
            Text("The Question"),
            ElevatedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
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
