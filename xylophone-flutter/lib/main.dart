import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  Expanded button({Color color,int num}) {
    return Expanded(
      child: Container(
        child: FlatButton(
          color: color,
          onPressed: () {
            player.play('note$num.wav');
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              button(color: Colors.red,num: 1),
              button(color: Colors.orange,num: 2),
              button(color: Colors.yellow,num: 3),
              button(color: Colors.green,num: 4),
              button(color: Colors.teal,num: 5),
              button(color: Colors.blueAccent,num: 6),
              button(color: Colors.purple.shade600,num: 7)
            ],
          ),
        ),
      ),
    );
  }
}
