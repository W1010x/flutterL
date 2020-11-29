import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/Reusable_Card.dart';
import 'package:bmi_calculator/components/bottm_button.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult,@required this.resultText,@required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
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
            resultText,
               style: kResultTextStyle,
              ),
              Text(bmiResult ,style: kBMITextstyle),
              Text(interpretation, style: kBodyStyle,
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
