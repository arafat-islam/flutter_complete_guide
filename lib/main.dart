import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
    print(questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = ["What's your name?", "What's your father's name?"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Faltu Application'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            ElevatedButton(
              child: Text('Click Here'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
