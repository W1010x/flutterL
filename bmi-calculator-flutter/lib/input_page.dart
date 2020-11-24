import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusable_Card.dart';
import 'Icon_content.dart';
import 'constant.dart';
enum Gender{ male,female} //enum make code more readable
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
  Gender selectedGender;// has no value 'null'
 // Color maleCardColor=unactiveColor;
  //Color femaleCardColor=unactiveColor;
  /*void updateColor(Gender gender) {
    f (gender == Gender.male) {
      if (maleCardColor == unactiveColor) {
        maleCardColor = activColor;
        femaleCardColor=unactiveColor;
      } else {
        maleCardColor = unactiveColor;
      }
    }else {
      femaleCardColor=activColor;
      maleCardColor=unactiveColor;
    }
  }*/
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
                child:ReusableCard(
                  onPress: (){
                    setState(() {
                      selectedGender= Gender.male;
                    });
                  },
                  colour:selectedGender==Gender.male?kActivColor:kUnactiveColor,//ternary operator
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars, lable:'Male',
                  ),
                )),
            Expanded(
              child: ReusableCard(
                onPress: (){
                  setState(() {
                    selectedGender=Gender.female;
                  });
                },
                colour:selectedGender==Gender.female?kActivColor:kUnactiveColor ,
              cardChild: IconContent(
                icon: FontAwesomeIcons.venus,lable: 'Femele',
              ),
              ),
            ),
          ],
          )),
          Expanded(child: ReusableCard(colour: kActivColor)),
          Expanded(child: Row(
            children: [
              Expanded(child: ReusableCard(colour: kActivColor)),
              Expanded(child:ReusableCard(colour:kActivColor)),
            ],
          )
          ),
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top:10.0),
            width: double.infinity,
            height: kBottonContainerHight,
          ),
        ],
      )
    );
  }
}


