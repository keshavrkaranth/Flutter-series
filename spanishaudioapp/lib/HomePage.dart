import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'AudioHelper.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AudioCache player = AudioCache();

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

  play(String url) {
    player.play(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("spanishaudio"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Image(image: AssetImage('images/logo.png')),
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(10.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 2.0,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                  ),
                  itemCount: audioList.length,
                  itemBuilder: (context, i) => SizedBox(
                    width: 100.0,
                    height: 50.0,
                    child: RaisedButton(
                      color: audioList[i].buttonColour,
                      child: Text(
                        audioList[i].buttonText,
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      onPressed: () {
                        this.play(audioList[i].audioUrl);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
