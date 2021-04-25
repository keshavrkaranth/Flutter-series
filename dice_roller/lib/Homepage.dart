import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  AssetImage one = AssetImage('images/one.png');
  AssetImage two = AssetImage('images/two.png');
  AssetImage three = AssetImage('images/three.png');
  AssetImage four = AssetImage('images/four.png');
  AssetImage five = AssetImage('images/five.png');
  AssetImage six = AssetImage('images/six.png');

  AssetImage diceImage;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage = one;
    });
  }

  void onClick() {
    int rand = (1 + Random().nextInt(6));
    AssetImage newImg;
    switch (rand) {
      case 1:
        newImg = one;
        break;
      case 2:
        newImg = two;
        break;
      case 3:
        newImg = three;
        break;
      case 4:
        newImg = four;
        break;
      case 5:
        newImg = five;
        break;
      case 6:
        newImg = six;
        break;
    }
    setState(() {
      diceImage = newImg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice roller'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: diceImage,
            width: 500.0,
            height: 300.0,
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            child: RaisedButton(
              padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
              color: Colors.yellow,
              child: Text(
                'Roll the Dice!',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: onClick,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0)),
            ),
          ),
        ],
      ),
    );
  }
}
