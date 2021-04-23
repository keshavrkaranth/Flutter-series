import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Randome',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('RANDOME'),
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var colour = [
    Colors.deepOrange,
    Colors.lightBlue,
    Colors.green,
    Colors.pink,
    Colors.limeAccent,
    Colors.grey,
    Colors.black,
    Colors.indigo
  ];
  var defaultColour = Colors.white;
  var defaultBtncolour = Colors.black;
  setRandomColour() {
    var rnd = Random().nextInt(colour.length);
    var btnRnd = Random().nextInt(colour.length);
    setState(() {
      defaultColour = colour[rnd];
      defaultBtncolour = colour[btnRnd];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: defaultColour,
      child: Center(
        child: RaisedButton(
          color: defaultBtncolour,
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          child: Text(
            "Change Colour",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: setRandomColour,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        ),
      ),
    );
  }
}
