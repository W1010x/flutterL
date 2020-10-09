import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        home:Scaffold(
          backgroundColor:Colors.white,
          appBar:AppBar (
            title: Text('I am poor'),
            backgroundColor: Colors.black,
          ),
          body: Center(
            child: Image(
                image:AssetImage('images/cherry-online-donation.png')
            ),
          ),
        )

  )
  );
}

