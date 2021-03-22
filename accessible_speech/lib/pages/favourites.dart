import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Favourites extends StatefulWidget {
  Favourites({Key key}) : super(key: key);

  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
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
        title: Text("Favourites"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton.icon(
                  onPressed: () => _speak("Hello World"),
                  icon: Icon(Icons.volume_up),
                  label: Text("Hello World")),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton.icon(
                  onPressed: () => _speak("My name is Accessible Speech"),
                  icon: Icon(Icons.volume_up),
                  label: Text("My name is Accesssible Speech")),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton.icon(
                  onPressed: () => _speak("I live at UOttawa"),
                  icon: Icon(Icons.volume_up),
                  label: Text("I live at UOttawa")),
            ]),
          ])),
    );
  }
}
