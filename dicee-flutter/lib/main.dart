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
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) { //when I Do hot reload everything change between this curlybraces
    var leftDiceNumber=4;
    return Center(// Center widget make all content in the center
      child: Row(
        children: [
          Expanded( // expanded widget help us to full the horzintol spaces it fill space is it can with out overzied
            child: FlatButton(
              onPressed: (){//VoidCallBack()

              },
              child: Image.asset(
                  'images/dice$leftDiceNumber.png'),
            ), //the shorter way to asset images this make mistake less
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){

              },
                child: Image.asset('images/dice1.png')),
          ),
        ],
      ),
    );
  }
}
