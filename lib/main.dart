import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Badis(),
    ),
  );
}

class Badis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Ask me Anything',
            style: TextStyle(
                fontSize: 30, color: Colors.white, letterSpacing: 1.5),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  int answer = 5;

  void getAnswer() {
    // creation fonction getAnswer()
    setState(() {
      answer = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          child: Image.asset(
            'images/ball$answer.png',
            width: 350,
            height: 350,
          ),
          onPressed: () {
            print('ball pressed with answer $answer');
            setState(() {
              answer = Random().nextInt(5) + 1;
            }); // soit on réécrit le setState avec la variable answer
            // soit   on appel la fonction sans setState  entre
            // onPressed { getAnswer();});
          },
        ),
      ),
    );
  }
}
