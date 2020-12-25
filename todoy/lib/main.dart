import 'package:flutter/material.dart';
import 'package:todoy/Screens/TaskScreen.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
  home: TasksScreen(),
) ;
}
}
