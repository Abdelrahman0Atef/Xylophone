import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void play (int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded nice({Color color,int num}){
   return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          play(num);
        },
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
              nice(color: Color.fromRGBO(0, 100, 0, 1),num: 1),
              nice(color: Color.fromRGBO(34, 139, 34, 1),num: 2),
              nice(color: Color.fromRGBO(60, 179, 113, 1),num: 3),
              nice(color: Color.fromRGBO(0, 255, 0, 1),num: 4),
              nice(color: Color.fromRGBO(0, 250, 154, 1),num: 5),
              nice(color: Color.fromRGBO(0, 255, 127, 1),num: 6),
              nice(color: Color.fromRGBO(152, 251, 152, 1),num: 7)
            ],
          ),
        ),
      ),
    );
  }
}
