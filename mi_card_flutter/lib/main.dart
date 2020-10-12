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
                Card(
                  color: Colors.white,
                  margin:EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                  child:ListTile(
                    leading:Icon(
                      Icons.phone,
                      color: Colors.pink,
                    ),
                     title: Text ('+966-55-1234-56',
                       style: TextStyle(
                         fontFamily:'Source Sans Pro',
                         color: Colors.teal[400],
                         fontSize: 20.0,
                       ),
                     ),
                  )
                ),
                Card(
                  color: Colors.white,
                  margin:EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                  child:ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.pink,
                    ),
                    title:Text ('Samar@gmail.com',
                      style: TextStyle(
                        fontFamily:'Source Sans Pro',
                        color: Colors.teal[400],
                        fontSize: 20.0,
                      ),
                    ),
                  )
                )
              ],
            ),
      ),
    ),
    );
  }
}

