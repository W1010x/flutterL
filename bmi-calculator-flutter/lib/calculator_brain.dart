import 'dart:math';
class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi; // we crete privet var  to unable to use it any where in this class
  String calculateBMI(){
    _bmi =weight/pow(height/100, 2); //to convert the height to meter divid it by 100
    return _bmi.toStringAsFixed(1);// to convert it to single decimal num
  }
  String getResult(){
    if (_bmi<=25){
      return 'Over weight!!';
    }else if(_bmi>=18.5){
      return 'Normal';
    }else {
      'Under weight';
    }
  }
String getInterpretation(){
if (_bmi<=25){
return 'you are have lot of weight you shold lose it!!';
}else if(_bmi>18.5){
return 'You have a normal body ,Good job';
}else {
' you are too skinny!!';
}
}
}