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
  AssetImage sdiceImage;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage = one;
      sdiceImage = six;
    });
  }

  void onClick() {
    int rand = (1 + Random().nextInt(6));
    int rand1 = (1 + Random().nextInt(6));
    AssetImage newImg;
    AssetImage snewImg;
    switch (rand) {
      case 1:
        newImg = one;
        snewImg = one;
        break;
      case 2:
        newImg = two;
        snewImg = two;
        break;
      case 3:
        newImg = three;
        snewImg = three;
        break;
      case 4:
        newImg = four;
        snewImg = four;
        break;
      case 5:
        newImg = five;
        snewImg = five;
        break;
      case 6:
        newImg = six;
        snewImg = six;
        break;
    }
    switch (rand1) {
      case 1:
        snewImg = one;
        break;
      case 2:
        snewImg = two;
        break;
      case 3:
        snewImg = three;
        break;
      case 4:
        snewImg = four;
        break;
      case 5:
        snewImg = five;
        break;
      case 6:
        snewImg = six;
        break;
    }
    setState(() {
      diceImage = newImg;
      sdiceImage = snewImg;
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
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: diceImage,
                  width: 150.0,
                  height: 150.0,
                ),
                Image(
                  image: sdiceImage,
                  width: 150.0,
                  height: 150.0,
                ),
              ],
            ),
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
