import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){ // create a function to delete the duplicate line code
    final player= AudioCache();
    player.play('note$soundNumber.wav');
  }
 Expanded buildKey({Color color, int soundNumber}){//Create a new function to delete all repeated lines return expanded
    return Expanded(
      child:FlatButton(
        color:color,
        onPressed: (){
          playSound(soundNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black26,
        body: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,// help us to stretch the button over the sreen
            children: [
              buildKey(color:Colors.red, soundNumber:1),
              buildKey(color:Colors.green, soundNumber:2),
              buildKey(color:Colors.grey, soundNumber:3),
              buildKey(color:Colors.blue, soundNumber:4),
              buildKey(color:Colors.lime, soundNumber:5),
              buildKey(color:Colors.pink, soundNumber:6),
              buildKey(color:Colors.lightBlueAccent, soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
