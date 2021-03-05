import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Center(child: Text('Dice Game')),
          backgroundColor: Colors.black54,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(child: Row(
          children: <Widget>[
            Expanded(child: FlatButton(
              child: Image.asset(
                'images/dice$leftDiceNumber.png',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
            ),
            Expanded(child: FlatButton(
              child: Image.asset(
                'images/dice$rightDiceNumber.png',
              ),
              onPressed: () {
                changeDiceFace();
              },
            ),
            ),
          ],
        ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Text('Tap to roll',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
