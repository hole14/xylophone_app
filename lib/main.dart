import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});


  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey(Color color, int soundNumber){
    return Expanded(
      child: TextButton(
        onPressed: (){
          playSound(soundNumber);
        },
        child: Container(
          color: color,
          height: 100.0,
        )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildKey(Colors.teal[300]!, 1),
              buildKey(Colors.teal[400]!, 2),
              buildKey(Colors.teal[500]!, 3),
              buildKey(Colors.teal[600]!, 4),
              buildKey(Colors.teal[700]!, 5),
              buildKey(Colors.teal[800]!, 6),
              buildKey(Colors.teal[900]!, 7),
            ],
          ),
        ),
      ),
    );
  }
}
