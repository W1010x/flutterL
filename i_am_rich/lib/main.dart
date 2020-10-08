import 'package:flutter/material.dart';
//The main function is the starting point for all flutter apps.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey,
        appBar:AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Image(
          image:NetworkImage('https://scitechdaily.com/images/Illustration-Photons-Galaxy-777x518.jpg'),
        ),
      ),
  ),
  );
}
