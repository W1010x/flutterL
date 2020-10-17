import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child:Column(
            children: [
              FlatButton(color:Colors.red,
                onPressed: (){
                  final player= AudioCache();
                  player.play('note1.wav');
                },
                child: Text('click '),
              ),
              FlatButton(color:Colors.yellow,
                onPressed: (){
                  final player= AudioCache();
                  player.play('note2.wav');
                },
                child: Text('click '),
              ),
              FlatButton(color:Colors.blue,
                onPressed: (){
                  final player= AudioCache();
                  player.play('note3.wav');
                },
                child: Text('click '),
              ),
              FlatButton(color:Colors.teal,
                onPressed: (){
                  final player= AudioCache();
                  player.play('note4.wav');
                },
                child: Text('click '),
              ),
              FlatButton(color:Colors.pink,
                onPressed: (){
                  final player= AudioCache();
                  player.play('note5.wav');
                },
                child: Text('click '),
              ),
              FlatButton(color:Colors.black38,
                onPressed: (){
                  final player= AudioCache();
                  player.play('note6.wav');
                },
                child: Text('click '),
              ),
              FlatButton(color:Colors.lime,
                onPressed: (){
                  final player= AudioCache();
                  player.play('note7.wav');
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
