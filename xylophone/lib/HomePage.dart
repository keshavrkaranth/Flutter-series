import 'package:flutter/material.dart';
import "package:audioplayers/audio_cache.dart";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  playSound(int i) {
    final player = AudioCache();
    player.play('note$i.wav');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("xylophone"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                this.playSound(1);
              },
              color: Colors.orange,
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                this.playSound(2);
              },
              color: Colors.white,
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                this.playSound(3);
              },
              color: Colors.green,
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                this.playSound(4);
              },
              color: Colors.yellow,
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                this.playSound(5);
              },
              color: Colors.red,
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                final playe = AudioCache();
                playe.play('note3.wav');
              },
              color: Colors.purple,
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                this.playSound(7);
              },
              color: Colors.teal,
            ),
          ),
        ],
      ),
    );
  }
}
