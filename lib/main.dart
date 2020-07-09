import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundPlay(int noteNumber){
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color color, int soundNumber})
  {
    return Expanded(
      child: FlatButton(
        onPressed: (){
          soundPlay(soundNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          //backgroundColor: Colors.orange,
          title: Center(
              child: Text('Xylophone')
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber:1),
              buildKey(color: Colors.orange, soundNumber:2),
              buildKey(color: Colors.green, soundNumber:3),
              buildKey(color: Colors.teal, soundNumber:4),
              buildKey(color: Colors.yellow, soundNumber:5),
              buildKey(color: Colors.blue, soundNumber:6),
              buildKey(color: Colors.purple, soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}


