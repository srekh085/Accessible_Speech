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
  dynamic speak = "";

  Widget build(BuildContext context) {
    Future _speak() async {
      await flutterTts.setPitch(pitch);
      await flutterTts.speak(speak);
    }

    final maxLines = 10;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text("Home"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: 400,
                  height: maxLines * 24.0,
                  margin: EdgeInsets.all(12),
                  child: TextField(
                    maxLines: maxLines,
                    decoration: new InputDecoration(
                      fillColor: Colors.blue[50],
                      filled: true,
                      labelText: 'Type to Speak',
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: Colors.purple)),
                    ),
                    onChanged: (text) {
                      setState(() {
                        speak = text;
                      });
                    },
                  )),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconButton(
                    tooltip: 'Tap to Speak',
                    onPressed: () => _speak(),
                    iconSize: 75,
                    color: Colors.purple,
                    icon: Icon(Icons.volume_up)),
              ]),
              Container(
                margin: EdgeInsets.all(5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pushNamed(context, '/favourites');
                          },
                          icon: Icon(Icons.favorite),
                          label: Text("Favourites")),
                      ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pushNamed(context, '/categories');
                          },
                          icon: Icon(Icons.category),
                          label: Text("Categories"))
                    ]),
              )
            ],
          ),
        ));
  }
}
