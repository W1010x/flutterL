import 'package:flutter/material.dart';
void main() => runApp(
  MaterialApp(
    home: BallPage(),
  ),
);
class BallPage extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Colors.indigo,
          appBar: AppBar(
            title: Text('Ask me any thing'),
            backgroundColor: Colors.blueGrey,
          ),
            body:Ball(),
        );
      }
    }
    class Ball extends StatefulWidget {
      @override
      _BallState createState() => _BallState();
    }

    class _BallState extends State<Ball> {
      @override
      Widget build(BuildContext context) {
        return Center(
          child:Image.asset('images/ball1.png'),
        );
      }
    }
    