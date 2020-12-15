import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';
import 'chat_screen.dart';
class RegistrationScreen extends StatefulWidget {
  static const String id='registration';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth=FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,// to show @ in the kay bord
              textAlign: TextAlign.center,
              onChanged: (value) {
                //Do something with the user input.
                email=value;
              },
              decoration: kTextFieldDecoration.copyWith(
                  hintText: "Enter your Email")
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,//to hide the password
                textAlign: TextAlign.center,
              onChanged: (value) {
                //Do something with the user input.
                password=value;
              },
              decoration: kTextFieldDecoration.copyWith(
                  hintText: "Enter your Password"),
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: ()async {
                    try {
                      final newUser = await _auth
                          .createUserWithEmailAndPassword(
                          email: email, password: password);
                      if(newUser!=null){
                        Navigator.pushNamed(context, ChatScreen.id);
                      }
                    }catch(e){
                      print (e);
                    }
                    Navigator.pushNamed(context, 'registration');
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
