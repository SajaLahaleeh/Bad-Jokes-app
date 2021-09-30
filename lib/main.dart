import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var jokes = [
    {
      "question": "What does a baby computer call its father?",
      "answer": "Data"
    },
    {
      "question": "What is a pencil with two eraser called?",
      "answer": "POintless"
    },
    {
      "question": "Whay the calenadr is always scared?",
      "answer": "Because it's days are numbered"
    },
    {"question": "What do you call a fish with on eye?", "answer": "Fsh"}
  ];

  var jokeIndex = 0;
  changeJokeIndex(String direction) {
    if (direction == "next") {
      if (jokeIndex != jokes.length - 1) {
        setState(() {
          jokeIndex++;
        });
      } else {
        setState(() {
          jokeIndex = jokeIndex = 0;
        });
      }
    } else if (direction == "prev") {
      if (jokeIndex != 0) {
        setState(() {
          jokeIndex--;
        });
      } else {
        setState(() {
          jokeIndex = jokes.length - 1;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Question(
              question: jokes[jokeIndex]["question"] as String,
            ),
            Answer(
              answer: jokes[jokeIndex]["answer"] as String,
            ),
            Button(
              changeJokeIndex: changeJokeIndex,
            )
          ],
        )),
      ),
    );
  }
}
