// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing 1 2 3',
      home: MyCustomForm(),
    );
  }
}




//Initiate a new custom Widget
class MyCustomForm extends StatefulWidget{
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm>{
  final firstTextController = TextEditingController(); //user 1 text
  final secondTextController = TextEditingController(); //user 2 text
  var thirdTextController = TextEditingController(); //DEBUG VAR NOT FINAL.
  @override
  void dispose(){
    firstTextController.dispose();
    secondTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Tip Calculations'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[



            //1st row, 1st user
            Row(
              children: <Widget>[
                Container(
                  width: 150,
                  margin: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    controller: firstTextController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      icon: Icon(Icons.people, color: Colors.blue,),
                    ),
                    
                  ),
                ),
              ],
            ),



            //2nd row, 2nd user
            Row(
              children: <Widget>[
                Container(
                  width: 150,
                  margin: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    controller: secondTextController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      icon: Icon(Icons.people, color: Colors.green,),
                    ),
                  ),
                ),
              ],
            ),


            //3 Text Field for sum on change, DEBUG
            Row(
              children: <Widget>[
                Container(
                  width: 150,
                  margin: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    controller: thirdTextController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      icon: Icon(Icons.cake, color: Colors.red,),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: (){
          int sum = int.parse(firstTextController.text) + int.parse(secondTextController.text);
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(sum.toString()),
              );
            }
          );
        },
      ),
    );
  }
}






