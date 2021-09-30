import 'package:flutter/material.dart';

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
            Container(
              margin: EdgeInsets.all(25),
              child: Text(
                jokes[jokeIndex]["question"] as String,
                style: TextStyle(fontSize: 27.5, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 5, 15, 45),
              child: Text(
                jokes[jokeIndex]["answer"] as String,
                style: TextStyle(fontSize: 27.5, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: FloatingActionButton(
                    onPressed: () {
                      print("called");
                      changeJokeIndex('prev');
                    },
                    child: Icon(
                      Icons.arrow_left_rounded,
                      size: 60,
                    ),
                    backgroundColor: Colors.orange,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: FloatingActionButton(
                    onPressed: () {
                      changeJokeIndex('next');
                    },
                    child: Icon(
                      Icons.arrow_right_rounded,
                      size: 60,
                    ),
                    backgroundColor: Colors.orange,
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
