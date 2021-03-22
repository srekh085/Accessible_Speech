import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';


class AboutMe extends StatefulWidget {
  AboutMe({Key key}) : super(key: key);
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  final FlutterTts flutterTts = FlutterTts();
  dynamic languages;
  double volume = 1.0;
  double pitch = 1.0;
  dynamic speak = "Hello World";
  @override
  Widget build(BuildContext context) {
    Future _speak(value) async {
      await flutterTts.setPitch(pitch);
      await flutterTts.speak(value);
    }
      return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.purple,
         title: Text("About Me"),
         centerTitle: true,
       ),
       body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton.icon(
                  onPressed: () => _speak("I am Accessible Speech"),
                  icon: Icon(Icons.volume_up),
                  label: Text("I am Accessible Speech")),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton.icon(
                  onPressed: () => _speak("I have selective mutism"),
                  icon: Icon(Icons.volume_up),
                  label: Text("I have selective mutism")),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton.icon(
                  onPressed: () => _speak("I have 2 hands"),
                  icon: Icon(Icons.volume_up),
                  label: Text("I have 2 hands")),
            ]),
          ])),
    );
  }
}