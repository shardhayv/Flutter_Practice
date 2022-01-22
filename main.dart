import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite colour',
      'What\'s your favourite food',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Rekhta')),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('Jaun Elia'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Javed Akhtar'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Nusrat Fateh'),
              onPressed: answerQuestion,
            )
          ],
        ),
      ),
    );
  }
}
