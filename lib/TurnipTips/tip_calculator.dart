

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget{
  @override
  _TipCalculatorAppState createState() => _TipCalculatorAppState();
}

class _TipCalculatorAppState extends State<TipCalculator>{
  final userOneController = TextEditingController();
  final userTwoController = TextEditingController();
  final turnipPriceController = TextEditingController();
 
  String tipTotalString = '';
  String userOneTotalReturn = '';
  String userTwoTotalReturn = '';


  //these are the numbers parsed from the textfields
  double userOne, userTwo, turnipPrice;

  //userOne + userTwo * turnipPrice
  double totalBells;

  //these totals will be each users total (userOne * TurnipPrice, userTwo * Turnip Price)
  double userOneTotal, userTwoTotal; 

  //Initial dropdown menu value
  String dropdownValue = '10';

  double tip;
  double userOneTip, userTwoTip, totalTip;
  double userOneRoundedTip, userTwoRoundedTip;

  double userOneReturn, userTwoReturn;

  
 
  getTextInputData(){
    userOneController.text == '' ? userOne = 0 : userOne = double.parse(userOneController.text);
    userTwoController.text == '' ? userTwo = 0 : userTwo = double.parse(userTwoController.text);
    turnipPriceController.text == '' ? turnipPrice = 0 : turnipPrice = double.parse(turnipPriceController.text); 
    totalBells = (userOne + userTwo) * turnipPrice;

    userOneTotal = userOne * turnipPrice;
    userTwoTotal = userTwo * turnipPrice;

    tip = double.parse(dropdownValue) * .01;

    //users total tips
    userOneTip = tip * userOneTotal;
    userOneTip % 1000 != 0 ? userOneRoundedTip = (1000 - (userOneTip % 1000) + userOneTip) : userOneRoundedTip = userOneTip;
    userTwoTip = tip * userTwoTotal;
    userTwoTip % 1000 != 0 ? userTwoRoundedTip = (1000 - (userTwoTip % 1000) + userTwoTip) : userTwoRoundedTip = userTwoTip;
    
    totalTip = userOneRoundedTip + userTwoRoundedTip;

    userOneReturn = userOneTotal - userOneRoundedTip;
    userTwoReturn = userTwoTotal - userTwoRoundedTip;
    
    setState(() {
      tipTotalString = totalTip.toString();
      userOneTotalReturn = userOneReturn.toString();
      userTwoTotalReturn = userTwoReturn.toString();

    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

              //userOne textfield
              Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                  controller: userOneController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Hoekills',
                    icon: Container(
                      height: 20,
                      width: 20,
                      child: Image.asset('assets/hoekills.png',
                      ),
                    ),
                  ),
                )
              ),

              //userTwo textfield
              Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                  controller: userTwoController,
                  autocorrect: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Ticest',
                    icon: Container(
                      height: 20,
                      width: 20,
                      child: Image.asset('assets/coolboy.png'),
                    ),
                  ),
                )
              ),

              //turnip price textfield
              Container(
              width: 280,
              padding: EdgeInsets.all(10.0),

              child: TextField(
                  controller: turnipPriceController,
                  autocorrect: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'dolla dolla bill yall',
                    icon: Container(
                      height: 25,
                      width: 25,
                      child: Image.asset('assets/turnip.png')
                    ),
                  ),
                )
              ),

              //tip percentage dropdown
              DropdownButton<String>(
                value: dropdownValue,
                icon: Icon(Icons.arrow_drop_down),

                onChanged: (String newValue){
                  setState(() {
                    dropdownValue = newValue;
                  });
                },

                items: <String>['10','15','20']
                  .map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  })
                .toList(),
              ),

              RaisedButton(
                onPressed: getTextInputData,
                color: Color(0xffFF1744),
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Click Here To Math'),
              ),
  
              Padding(
              padding: EdgeInsets.all(8.0),
              child :
              Text("Total Tip is = $tipTotalString", style: TextStyle(fontSize: 20))
              ),

              Padding(
              padding: EdgeInsets.all(8.0),
              child :
              Text("Hoe total = $userOneTotalReturn", style: TextStyle(fontSize: 20))
              ),

              Padding(
              padding: EdgeInsets.all(8.0),
              child :
              Text("Tice total = $userTwoTotalReturn", style: TextStyle(fontSize: 20))
              ),
  
            ],
          ),
        ),
      )
    );
  }
}