import 'package:flutter/material.dart';
import 'AudioHelper.dart';

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  List<AudioHelper> audioList = [
    AudioHelper('one.wav', Colors.orange, 'One'),
    AudioHelper('two.wav', Colors.blue, 'Two'),
    AudioHelper('three.wav', Colors.grey, 'Three'),
    AudioHelper('four.wav', Colors.pink, 'Four'),
    AudioHelper('five.wav', Colors.lime, 'Five'),
    AudioHelper('six.wav', Colors.purple, 'Six'),
    AudioHelper('seven.wav', Colors.red, 'Seven'),
    AudioHelper('eight.wav', Colors.teal, 'Eight'),
    AudioHelper('nine.wav', Colors.brown, 'Nine'),
    AudioHelper('ten.wav', Colors.green, 'Ten'),
  ];

  // play(String url) {
  //   player.play(url);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Keshav'),
      ),
    );
  }
}
