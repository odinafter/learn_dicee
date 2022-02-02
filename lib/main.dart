import 'package:flutter/material.dart';
import 'dart:math';

//สร้าง function.

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int righttDiceNumber = 1;

  void changeDiceFace() {
    setState(
      () {
        leftDiceNumber = Random().nextInt(6) + 1;
        righttDiceNumber = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(
                  () {
                    changeDiceFace();
                  },
                );
              },
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(
                  () {
                    changeDiceFace();
                  },
                );
              },
              child: Image.asset(
                'images/dice$righttDiceNumber.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
