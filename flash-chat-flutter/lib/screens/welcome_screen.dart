import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class WelcomeScreen extends StatefulWidget {
 static const  String id='home';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();

    controller=AnimationController(
      //when using curve upperBound should be equal to  one
      duration: Duration(seconds: 1), vsync:this);
    animation =CurvedAnimation(parent:controller,curve:Curves.decelerate );
    controller.forward();
   // animation.addStatusListener((status) { //this for animaton forward and back
   //   if(status==AnimationStatus.completed){
   //     controller.reverse(from:1.0);
   //   }else if(status==AnimationStatus.dismissed)
   //     controller.forward();
   // });

    controller.addListener(() {
     setState(() {
print(animation.value);
     });
    });
  }
  //use controller.value to animate any this in this file
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
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: controller.value*100,
                  )
                ),
                TypewriterAnimatedTextKit(
                text:['Flash Chat'],
                  //'${controller.value.toInt()}%', we can animate numbers 1 to 100 by this line
                  textStyle: TextStyle(
                    fontSize: 40.0,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    //Go to login screen.
                    Navigator.pushNamed(context, LoginScreen.id);
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Log In',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    //Go to registration screen.
                   Navigator.pushNamed(context,RegistrationScreen.id );
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Register',

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
