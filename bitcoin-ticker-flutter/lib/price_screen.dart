import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'coin_data.dart';
class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  //-------------------------
  String selectedCurrency = 'USD'; //create a property  hold the starting value
   DropdownButton<String> getDropdownButton(){
     DropdownButton<String>(
         value: selectedCurrency,
         items:getDropDownItems(),
         onChanged: (value){
           setState(() {
             selectedCurrency=value;// update the starting value
           });
         },
     );
   }
//--------------------
  List<DropdownMenuItem> getDropDownItems() {
  List<DropdownMenuItem<String>>dropdownItems=[]; //each time it loop will added to this empty list
    //create a new method with for loop
    for (String currency in currenciesList) {

      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );

      dropdownItems.add(newItem); //every time we create new item it will add it into dropdownItems
    }
    return dropdownItems;
  }

  //--------------
  List<Text>getPickerItems(){
    List<Text> pickerItems=[];
    for(String currency in currenciesList) {

      pickerItems.add(  Text(currency));
    }
    return pickerItems; //should return it outside for loop {}
  }
  @override
  Widget build(BuildContext context) {
    getDropDownItems(); //call the method
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.teal,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.teal,
            child:CupertinoPicker(
              backgroundColor: Colors.teal,
              itemExtent:32.0 ,
              onSelectedItemChanged:(selectedIndex){
                print(selectedIndex);
              },
                children: getPickerItems(),
              ),
          ),
        ],
      ),
    );
  }
}










