import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade500,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red.shade900,
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
  int leftDiceNumber=1;
  int rightDiceNumber = 1;
  void getNumber(){
    Random random = new Random();
    leftDiceNumber = 1+ random.nextInt(6);
    while(leftDiceNumber == rightDiceNumber) {
      rightDiceNumber = 1 + random.nextInt(6);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftDiceNumber.png'),
              onPressed: () {
                setState(() {
                  getNumber();
                });
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: (){
                setState(() {
                  getNumber();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

