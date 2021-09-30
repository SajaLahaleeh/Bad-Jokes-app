import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                "What do you want a pencil with two reaser?",
                style: TextStyle(fontSize: 27.5, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 5, 15, 45),
              child: Text(
                "Pointless",
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
                    onPressed: null,
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
                    onPressed: null,
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
