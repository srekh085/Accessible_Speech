import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final FlutterTts flutterTts = FlutterTts();
  dynamic languages;
  double volume = 1.0;
  double pitch = 1.0;
  dynamic speak = "good";

  Widget build(BuildContext context) {
    Future _speak() async {
      await flutterTts.setPitch(pitch);
      await flutterTts.speak(speak);
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Home"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 380,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Type to Speak',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (text) {
                      setState(() {
                        text = speak;
                      });
                    },
                  )),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton.icon(
                    onPressed: () => _speak(),
                    icon: Icon(Icons.volume_up),
                    label: Text("SPEAK")),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/favourites');
                    },
                    icon: Icon(Icons.favorite),
                    label: Text("Favourites")),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/categories');
                    },
                    icon: Icon(Icons.category),
                    label: Text("Categories")),
              ])
            ],
          ),
        ));
  }
}
