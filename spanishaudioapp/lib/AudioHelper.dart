import 'package:flutter/material.dart';

class AudioHelper {
  String audioUrl;
  MaterialColor buttonColour;
  String buttonText;

  AudioHelper(String url, MaterialColor color, String Text) {
    this.audioUrl = url;
    this.buttonColour = color;
    this.buttonText = Text;
  }
}
