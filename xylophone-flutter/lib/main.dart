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
        body: SafeArea(
          child:Column(
            children: [
              FlatButton(color:Colors.red,
                onPressed: (){
                playSound(1);
                },
                child: Text('click '),
              ),
              FlatButton(color:Colors.yellow,
                onPressed: (){
                 playSound(2);
                },
                child: Text('click '),
              ),
              FlatButton(color:Colors.blue,
                onPressed: (){
                  playSound(3);
                },
                child: Text('click '),
              ),
              FlatButton(color:Colors.teal,
                onPressed: (){
                  playSound(4);
                },
                child: Text('click '),
              ),
              FlatButton(color:Colors.pink,
                onPressed: (){
                  playSound(5);
                },
                child: Text('click '),
              ),
              FlatButton(color:Colors.black38,
                onPressed: (){
                  playSound(6);
                },
                child: Text('click '),
              ),
              FlatButton(color:Colors.lime,
                onPressed: (){
                  playSound(7);
                },
                child: Text('click '),
              ),
            ],
          ),

        ),
      ),
    );
  }
}
