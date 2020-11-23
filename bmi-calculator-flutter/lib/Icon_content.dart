import 'package:flutter/material.dart';
const lableTextStyle=TextStyle(fontSize:18.0,color: Color(0xFF8D8E98));
class IconContent extends StatelessWidget {
  IconContent({this.icon, this.lable});// create a construcror
  final IconData icon; // create a propertize
  final String lable;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          lable,
          style:lableTextStyle,
        ),
      ],
    );
  }
}