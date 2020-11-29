import 'package:bmi_calculator/Reusable_Card.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'Reusable_Card.dart';
class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            child: Text('Your Result', style: kTitleStyle
            ),
          ),
          ),
          Expanded(
            flex:5 ,
          child: ReusableCard(
            colour: kActivColor,
            cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
             Text(
            'Normal',
               style: kResultTextStyle,
              ),
              Text('18.7',style: kBMITextstyle),
              Text('Your BMI too low you should eat more!', style: kBodyStyle)
              ],
              ),
                ),
              ),
             ],
            ),
           );
          }
         }
