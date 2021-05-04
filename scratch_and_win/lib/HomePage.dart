import 'package:flutter/material.dart';
import 'dart:math';
import 'package:marquee/marquee.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage circle = AssetImage('images/circle.png');
  AssetImage lucky = AssetImage('images/rupee.png');
  AssetImage unlucky = AssetImage('images/sadFace.png');

// getanarray
  List<String> itemArray;
  int luckyNumber;
  List<String> arr = [
    'Only 5 clicks are left play carefully. ',
    'oops Gameover:(. ',
    'Hurray you have won:) ',
  ];
  String message;
  // init 25 elements
  @override
  void initState() {
    super.initState();
    itemArray = List<String>.generate(25, (index) => 'empty');
    generateRandomNumber();
    setState(() {
      message = arr[0];
    });
  }

  generateRandomNumber() {
    int random = Random().nextInt(25);

    setState(() {
      luckyNumber = random;
    });
  }

  // get images
  AssetImage getImage(int index) {
    String currentState = itemArray[index];
    switch (currentState) {
      case 'lucky':
        return lucky;
        break;
      case 'unlucky':
        return unlucky;
        break;
    }
    return circle;
  }

  // play game
  playGame(int index) {
    if (luckyNumber == index) {
      setState(() {
        itemArray[index] = "lucky";
      });
    } else {
      setState(() {
        itemArray[index] = "unlucky";
      });
    }
  }

  // showall
  showAll() {
    setState(() {
      itemArray = List<String>.filled(25, 'unlucky');
      itemArray[luckyNumber] = 'lucky';
    });
  }

  // reset all
  resetGame() {
    setState(() {
      itemArray = List<String>.filled(25, 'empty');
    });
    generateRandomNumber();
  }

  counter() {
    var map = Map();
    itemArray.forEach((x) => map[x] = !map.containsKey(x) ? (1) : (map[x] + 1));
    if (map['unlucky'] == 5) {
      setState(() {
        message = arr[1];
      });
      Future.delayed(const Duration(seconds: 1), () {
        this.resetGame();
        setState(() {
          message = arr[0];
        });
      });
    }
    if (itemArray.contains('lucky')) {
      setState(() {
        message = arr[2];
      });
      Future.delayed(const Duration(seconds: 2, milliseconds: 5), () {
        this.resetGame();
        setState(() {
          message = arr[0];
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scratch-And-Win"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100.0,
            height: 60.0,
            padding: EdgeInsets.only(
                left: 20.0, right: 20.0, bottom: 10.0, top: 10.0),
            child: Marquee(
              text: '$message',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              scrollAxis: Axis.horizontal,
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(20.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                childAspectRatio: 1.0,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: itemArray.length,
              itemBuilder: (context, i) => SizedBox(
                width: 50.0,
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {
                    this.playGame(i);
                    this.counter();
                  },
                  child: Image(
                    image: this.getImage(i),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: RaisedButton(
              onPressed: this.showAll,
              color: Colors.green,
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Show All",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: RaisedButton(
              onPressed: this.resetGame,
              color: Colors.red,
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Reset",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20.0,
              bottom: 20.0,
            ),
            color: Colors.black,
            child: Center(
              child: Text(
                "Learncodeonline.in",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
