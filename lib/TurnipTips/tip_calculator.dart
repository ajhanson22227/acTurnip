







import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TipCalculator extends StatefulWidget{
  @override
  _TipCalculatorAppState createState() => _TipCalculatorAppState();
}



class _TipCalculatorAppState extends State<TipCalculator>{
  TextEditingController userOneController;
  TextEditingController userTwoController;

  double userOneTip = 0;
  double userTwoTip = 0;

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column( //main body, will contain the rows
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text("Amazing Turnip Tips!", //title topbar text
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.none,
                fontSize: 20.0,
                fontFamily: 'Grace',
              ),
            ),
          ),
          Row(  //this is the first row, userOne
            children: <Widget>[

            ],
          ),
        ],
      ),
    );
  }
}