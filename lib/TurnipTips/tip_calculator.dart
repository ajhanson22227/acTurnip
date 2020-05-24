

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget{
  @override
  _TipCalculatorAppState createState() => _TipCalculatorAppState();
}



class _TipCalculatorAppState extends State<TipCalculator>{
  TextEditingController userOneController;
  TextEditingController userTwoController;
  TextEditingController priceController;

  double userOneTip = 0;
  double userTwoTip = 0;

  String dropdownValue = '10';

  @override
  Widget build(BuildContext context){
    return Material(
      child: Center(
        child: Container(
          child: Column(
            children: <Widget>[

              //Top Title Section
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text("Amazing Turnip Tips!", //title topbar text
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.none,
                    fontSize: 30.0,
                    fontFamily: 'Grace',
                  ),
                ),
              ),

              //First User Row
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Container(
                  width: 200.0,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person, color: Colors.red[200]),
                      border: OutlineInputBorder(),
                      isDense: true,
                      contentPadding: EdgeInsets.all(8),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),


              //Second User Row
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  width: 200.0,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      icon: Icon(Icons.person, color: Colors.red[200]),
                      border: OutlineInputBorder(),
                      isDense: true,
                      contentPadding: EdgeInsets.all(8),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),


              //Row will contain a Section for Prices and a dropdown for percentage
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  
                  //Price Textfield
                  Container(
                    width: 80,
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        icon: Icon(Icons.pets, color: Colors.blue),
                      ),
                    ),
                  ),

                  //Dropdown menu

                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 8,
                      style: TextStyle(
                        color: Colors.deepPurple
                      ),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: <String>['10', '15', '20']
                        .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        })
                        .toList(),
                    ),
                  ),

                ],
              ),




            ],
          ),
        ),
      ),
    );
  }
}