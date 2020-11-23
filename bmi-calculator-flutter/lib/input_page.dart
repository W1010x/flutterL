import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusable_Card.dart';
import 'Icon_content.dart';
const bottonContainerHight=80.0;
const activColor= Color(0xFF1D1E33);
const unactiveColor=Color(0xFF111328);
const bottomContainerColor=Color(0xFFEB1555);
enum Gender{ male,female}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
  Color maleCardColor=unactiveColor;
  Color femaleCardColor=unactiveColor;
  void updateColor(Gender gender) {
    /*f (gender == Gender.male) {
      if (maleCardColor == unactiveColor) {
        maleCardColor = activColor;
        femaleCardColor=unactiveColor;
      } else {
        maleCardColor = unactiveColor;
      }
    }else {
      femaleCardColor=activColor;
      maleCardColor=unactiveColor;
    }*/
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body:Column(
        children: [
          Expanded(child: Row(
            children: [
            Expanded(
                child:GestureDetector(
              onTap:(){
               setState(() {
                 updateColor(Gender.male);
               });
              },
              child: ReusableCard(
                colour:maleCardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.mars, lable:'Male',
                ),
              ),
            )),
            Expanded(
              child: GestureDetector(
              onTap: (){
                setState(() {
                  updateColor(Gender.female);
                });
              },
              child: ReusableCard(
                colour:femaleCardColor ,
              cardChild: IconContent(
                icon: FontAwesomeIcons.venus,lable: 'Femele',
              ),
              ),
            ),
            ),
          ],
          )),
          Expanded(child: ReusableCard(colour: activColor)),
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(colour: activColor)),
              Expanded(child:ReusableCard(colour:activColor)),
            ],
          )
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top:10.0),
            width: double.infinity,
            height: bottonContainerHight,
          ),
        ],
      )
    );
  }
}


