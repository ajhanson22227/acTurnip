

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget{
  @override
  _TipCalculatorAppState createState() => _TipCalculatorAppState();
}

class _TipCalculatorAppState extends State<TipCalculator>{
  final userOneController = TextEditingController();
  final userTwoController = TextEditingController();
 
  String result = 'Hello World! :)';
  double userOne, userTwo;
 
  getTextInputData(){
    userOneController.text == '' ? userOne = 0 : double.parse(userOneController.text);
    userTwoController.text == '' ? userTwo = 0 : double.parse(userTwoController.text); 

    setState(() {
      result = (userOne + userTwo).toString();
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
 
             Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                  controller: userOneController,
                  autocorrect: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter Some Text Here',
                    prefixIcon: Icon(Icons.person, color: Colors.red,),
                  ),
                )
              ),

              Container(
              width: 280,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                  controller: userTwoController,
                  autocorrect: true,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter Some Text Here',
                    prefixIcon: Icon(Icons.person, color: Colors.red,),
                  ),
                )
              ),
 
              RaisedButton(
                onPressed: getTextInputData,
                color: Color(0xffFF1744),
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text('Click Here To Get Text Field Entered Data'),
              ),
 
              Padding(
              padding: EdgeInsets.all(8.0),
              child :
              Text("Math is = $result!", style: TextStyle(fontSize: 20))
              )
 
            ],
          ),
        ));
  }

}

// class _TipCalculatorAppState extends State<TipCalculator>{
//   TextEditingController userOneController;
//   TextEditingController userTwoController;
//   TextEditingController priceController;

//   double parsedUserOne = 0;
//   double parsedUserTwo = 0;

//   double userOneTip = 0;
//   double userTwoTip = 0;
//   double totalPrice = 0;

//   String dropdownValue = '10';
//   String txt = "bojiorno";

//   bool isVisible = false;

//   getInputValues(){
//     setState(() {
//       // parsedUserOne = double.parse(userOneController.text);
//       // parsedUserTwo = double.parse(userTwoController.text);
//       // totalPrice = parsedUserOne + parsedUserTwo;

//       txt = userOneController.text + userTwoController.text;
//     });
//   }


//   @override
//   Widget build(BuildContext context){
//     return Material(
//       child: Expanded(
//         child: Container(
//           child: Column(
//             children: <Widget>[

//               //Top Title Section
//               Padding(
//                 padding: const EdgeInsets.only(top: 50.0),
//                 child: Text("Amazing Turnip Tips!", //title topbar text
//                   style: TextStyle(
//                     color: Colors.blue,
//                     decoration: TextDecoration.none,
//                     fontSize: 30.0,
//                     fontFamily: 'Grace',
//                   ),
//                 ),
//               ),

//               //First User Row
//               Padding(
//                 padding: const EdgeInsets.only(top: 25.0),
//                 child: Container(
//                   width: 200.0,
//                   child: TextField(
//                     textAlign: TextAlign.center,
//                     decoration: InputDecoration(
//                       icon: Icon(Icons.person, color: Colors.red[200]),
//                       border: OutlineInputBorder(),
//                       isDense: true,
//                       contentPadding: EdgeInsets.all(8),
//                     ),
//                     keyboardType: TextInputType.number,

//                     controller: userOneController,
//                   ),
//                 ),
//               ),


//               //Second User Row
//               Padding(
//                 padding: const EdgeInsets.only(top: 15.0),
//                 child: Container(
//                   width: 200.0,
//                   child: TextField(
//                     textAlign: TextAlign.center,
//                     decoration: InputDecoration(
//                       icon: Icon(Icons.person, color: Colors.red[200]),
//                       border: OutlineInputBorder(),
//                       isDense: true,
//                       contentPadding: EdgeInsets.all(8),
//                     ),
//                     keyboardType: TextInputType.number,
//                     controller: userTwoController,

//                   ),
//                 ),
//               ),


//               //Row will contain a Section for Prices and a dropdown for percentage
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
                  
//                   //Price Textfield
//                   Container(
//                     margin: EdgeInsets.only(left: 40.0),
//                     width: 80,
//                     child: TextField(
//                       textAlign: TextAlign.center,
//                       keyboardType: TextInputType.number,
//                       decoration: InputDecoration(
//                         icon: Icon(Icons.pets, color: Colors.blue),
//                       ),
//                       controller: priceController,
//                     ),
//                   ),

//                   //Dropdown menu
//                   Container(
//                     margin: EdgeInsets.only(left: 15.0, top: 18.0),
//                     child: DropdownButton<String>(
//                       value: dropdownValue,
//                       icon: Icon(Icons.arrow_downward),
//                       iconSize: 24,
//                       elevation: 8,
//                       style: TextStyle(
//                         color: Colors.deepPurple
//                       ),
//                       underline: Container(
//                         height: 2,
//                         color: Colors.grey,
//                       ),
//                       onChanged: (String newValue) {
//                         setState(() {
//                           dropdownValue = newValue;
//                         });
//                       },
//                       items: <String>['10', '15', '20']
//                         .map<DropdownMenuItem<String>>((String value) {
//                           return DropdownMenuItem<String>(
//                             value: value,
//                             child: Text(value),
//                           );
//                         })
//                         .toList(),
//                     ),
//                   ),

//                   //Button, bottom right
//                   Padding(

//                     padding: const EdgeInsets.only(right: 5),
//                     child: RawMaterialButton(
                      
//                       //get the values of the controllers and work with them
//                       onPressed: getInputValues,
//                       elevation: 1.0,
//                       fillColor: Colors.red,
//                       child: Icon(Icons.check, color: Colors.white),
//                       shape: CircleBorder(),
//                     ),
//                   ),


                  

//                 ],
//               ),

//               Container(
//                 margin: EdgeInsets.only(top: 50.0),
//                 width: 200,
//                 decoration: BoxDecoration(
//                   border: Border.all(),
//                 ),

//                 child: Column(
//                   children: <Widget>[

//                     //Total Amount
//                     Row(
//                       children: <Widget>[
//                         Icon(Icons.child_care, color: Colors.green),
//                         Text(txt),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),


//             ],
//           ),


//         ),
//       ),
//     );
//   }
// }