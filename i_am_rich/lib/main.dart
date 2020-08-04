import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(75.0),
          child: AppBar(
            centerTitle: true,
            title: Text(
              "I Am Rich",
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.blueAccent[500],
          ),
        ),
        backgroundColor: Colors.lightBlue,
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
