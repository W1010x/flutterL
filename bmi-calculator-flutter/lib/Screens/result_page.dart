import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/Reusable_Card.dart';
import 'package:bmi_calculator/components/bottm_button.dart';
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
            padding:EdgeInsets.all(15.0) ,
            alignment: Alignment.bottomCenter,
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
              Text('Your BMI too low you should eat more!', style: kBodyStyle,
                textAlign: TextAlign.center,//to center the text
              )
              ],
              ),
                ),
              ),
          BottomButton(onTap:(){
            Navigator.pop(context);
          }, buttonTitle: 'RE-CALCULATE')
             ],
            ),
           );
          }
         }
