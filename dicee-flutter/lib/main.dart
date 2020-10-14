import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.lightBlue
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
  int RightDiceNumber=1;
  void changeDiceFace(){
    setState(() {
      leftDiceNumber= Random().nextInt(6)+1;// we add 1 to change the range to 1-6
      RightDiceNumber= Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) { //when I Do hot reload everything change between this curlybraces
    return Center(// Center widget make all content in the center
      child: Row(
        children: [
          Expanded( // expanded widget help us to full the horzintol spaces it fill space is it can with out overzied
            child: FlatButton(
              onPressed: () {//VoidCallBack()
                changeDiceFace();
              },
              child: Image.asset(
                  'images/dice$leftDiceNumber.png'),
            ), //the shorter way to asset images this make mistake less
          ),
          Expanded(
            child: FlatButton(
                onPressed: (){
                  changeDiceFace();
                },
                child: Image.asset('images/dice$RightDiceNumber.png'),),
          ),
        ],
      ),
    );
  }
}
