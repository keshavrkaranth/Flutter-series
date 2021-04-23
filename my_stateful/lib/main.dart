import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Spansih App',
      debugShowCheckedModeBanner: false,
      home: Mybutton(),
    ),
  );
}

class Mybutton extends StatefulWidget {
  @override
  MybuttonState createState() {
    return MybuttonState();
  }
}

class MybuttonState extends State<Mybutton> {
  int count = 0;

  String defaultText = 'Spanish Number';
  String defaultum = '';
  List<String> Snumbers = [
    'uno',
    'dos',
    'tres',
    'cuatro',
    'cinco',
    'seis',
    'siete',
    'ocho',
    'nueve',
    'diez'
  ];
  List<String> numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

  void changeState() {
    setState(() {
      defaultText = Snumbers[count];
      defaultum = numbers[count];
      if (count < 9) {
        count++;
      } else {
        count = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Spanish app"),
        backgroundColor: Colors.grey,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                defaultText.toUpperCase() + ' is ' + defaultum,
                style: TextStyle(fontSize: 30.0),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              // RaisedButton(
              //   child: Text('Click To learn Spanish Number'),
              //   onPressed: changeState,
              //   color: Colors.grey,
              //   textColor: Colors.white,
              // ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeState,
        child: Icon(
          Icons.next_plan,
          color: Colors.white,
        ),
      ),
    );
  }
}
