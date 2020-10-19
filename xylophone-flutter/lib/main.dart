import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){ // create a function to delete the duplicate line code
    final player= AudioCache();
    player.play('note$soundNumber.wav');
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
              Expanded(
                child:FlatButton(color:Colors.lightGreen,
                  onPressed: (){
                  playSound(1);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(color:Colors.lightBlueAccent,
                  onPressed: (){
                   playSound(2);
                  },
                ),
              ),
              Expanded(
                child :FlatButton(color:Colors.blue,
                  onPressed: (){
                    playSound(3);
                  },
                ),
              ),
              Expanded(
                child :FlatButton(color:Colors.teal,
                  onPressed: (){
                    playSound(4);
                  },
                ),
              ),
              Expanded(
                child:FlatButton(color:Colors.pink,
                  onPressed: (){
                    playSound(5);
                  },
                ),
              ),
              Expanded(
                child:FlatButton(color:Colors.grey,
                  onPressed: (){
                    playSound(6);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(color:Colors.lime,
                  onPressed: (){
                    playSound(7);
                  },
                ),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
