// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),

        body: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.person, color: Colors.green, size: 30.0),
                  
                  Container(
                    width: 120.0,
                    //padding: EdgeInsets.only(left: 20, bottom: 10),
                    child: TextField(
                      keyboardType: TextInputType.number,
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