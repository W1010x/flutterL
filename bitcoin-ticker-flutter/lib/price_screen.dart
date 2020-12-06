import 'package:flutter/material.dart';
import 'coin_data.dart';
class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  List<Widget> dropdowonItems=[]; //each time it loop will added to this empty list
  String selectedCurrency = 'USD'; //create a property  hold the starting value
  void getDropDownItem() {
    //create a new method with for loop
    for (int i = 0; i < currenciesList.length; i++) {
      String currency = currenciesList[i];

      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );

      dropdowonItems.add(
          newItem); //every time we create new item it will add it into dropdownItems
    }

}
  @override
  Widget build(BuildContext context) {
    getDropDownItem(); //call the method
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
            child:DropdownButton<String>(
              value: selectedCurrency,
              items:[DropdownMenuItem(
              )
            ],
                onChanged: (value){
                setState(() {
                  selectedCurrency=value;// update the starting value
                });
                },
            ),
          ),
        ],
      ),
    );
  }
}
