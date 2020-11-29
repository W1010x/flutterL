import 'package:bmi_calculator/Screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/components/Reusable_Card.dart';
import 'package:bmi_calculator/components/Icon_content.dart';
import 'package:bmi_calculator/constant.dart';
import 'result_page.dart';
import 'package:bmi_calculator/components/bottm_button.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';
enum Gender{ male,female} //enum make code more readable
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
  Gender selectedGender;// has no value 'null'
  int height=180;
  int weight= 60;
  int age=10;
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
        crossAxisAlignment:CrossAxisAlignment.stretch ,
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
          ),
          ),
          Expanded(
              child: ReusableCard(
            colour: kActivColor,cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                  'Height',style:kLableTextStyle),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                    height.toString(),
                style:kTextStyle),
                Text(
                  'cm',
                  style: kLableTextStyle,)
              ],
            ),
            SliderTheme(//customising Widgets Using Themes
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: Colors.white,
                thumbColor: Color(0xFFEB1555),
                overlayColor: Color(0x29EB1555),
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 24.0),
              ),
              child: Slider(
                  value:height.toDouble(),
                     min: 120.0,
                  max:220.0,
                inactiveColor: Color(0xFF8DE98),
                onChanged: (double newValue){
                    setState(() {
                      height=newValue.round();
                    });
                },
              ),
            )
            ],
          ),
          )
          ),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: ReusableCard(
                  colour: kActivColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('WEIGHT',style: kLableTextStyle),
                    Text(
                        weight.toString(),
                        style:kTextStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(icon:FontAwesomeIcons.minus,
                        onPressed: (){
                          setState(() {
                            weight--;
                          });
                        },
                        ),
                        SizedBox(width: 10.0),
                        RoundIconButton(icon:FontAwesomeIcons.plus,
                          onPressed: (){
                          setState(() {
                            weight++;
                          });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )
              ),
              Expanded(child:ReusableCard(
                  colour:kActivColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('AGE', style:kLableTextStyle),
                    Text(age.toString(), style:kTextStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(icon:FontAwesomeIcons.minus,
                          onPressed: (){
                            setState(() {
                             age--;
                            });
                          },
                        ),
                        SizedBox(width: 10.0),
                        RoundIconButton(icon:FontAwesomeIcons.plus,
                          onPressed: (){
                            setState(() {
                              age++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )),
            ],
          )
          ),
          BottomButton(buttonTitle: 'CALCULATE',
            onTap: (){
              CalculatorBrain calc=CalculatorBrain(height:height,weight: weight);
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>ResultsPage()));
          },
          ),
        ],
      )
    );
  }
}




