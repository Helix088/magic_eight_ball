import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('Magic 8 Ball'),
        backgroundColor: Colors.blue[700],
      ),
      body: MagicBall(),
    )),
  );
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicAnswer = 1;

  void getAnswer() {
    setState(() {
      magicAnswer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
                onPressed: () {
                  getAnswer();
                },
                child: Image.asset('images/ball$magicAnswer.png')),
          )
        ],
      ),
    );
  }
}
