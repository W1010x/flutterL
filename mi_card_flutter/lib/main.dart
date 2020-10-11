import 'package:flutter/material.dart';
void main() {
  runApp(
MyApp()
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[200],
        body: SafeArea(
            child:Column(
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/strawberry.jpeg'),
                ),
                Text ('Strawberry',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.pink[300],
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
                ),
                Text ('Flutter Developer',
                style: TextStyle(
                fontFamily:'Source Sans Pro',
                color: Colors.white,
                fontSize: 20.0,
                letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
      ),
    ),
    );
  }
}
