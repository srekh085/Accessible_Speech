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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    width: 350,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purpleAccent[200])),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            child: Text("Hello World"),
                            width: 200,
                          ),
                          IconButton(
                              tooltip: 'Tap to Speak',
                              onPressed: () => _speak("Hello World"),
                              iconSize: 30,
                              color: Colors.purple,
                              icon: Icon(Icons.volume_up)),
                          IconButton(
                            iconSize: 30,
                            color: Colors.purple,
                            onPressed: () => _speak("Hello World"),
                            icon: Icon(Icons.edit),
                          )
                        ]),
                  )
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    width: 350,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purpleAccent[200])),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            child: Text("I am Accessible Speech"),
                            width: 200,
                          ),
                          IconButton(
                              tooltip: 'Tap to Speak',
                              onPressed: () => _speak("I am Accessible Speech"),
                              iconSize: 30,
                              color: Colors.purple,
                              icon: Icon(Icons.volume_up)),
                          IconButton(
                            iconSize: 30,
                            color: Colors.purple,
                            onPressed: () => _speak("I am Accessible Speech"),
                            icon: Icon(Icons.edit),
                          )
                        ]),
                  )
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    width: 350,
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purpleAccent[200])),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            child: Text("Welcome to Design Day"),
                            width: 200,
                          ),
                          IconButton(
                              tooltip: 'Tap to Speak',
                              onPressed: () => _speak("Welcome to Design Day"),
                              iconSize: 30,
                              color: Colors.purple,
                              icon: Icon(Icons.volume_up)),
                          IconButton(
                            iconSize: 30,
                            color: Colors.purple,
                            onPressed: () => _speak("Welcome to Design Day"),
                            icon: Icon(Icons.edit),
                          )
                        ]),
                  )
                ]),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    margin: const EdgeInsets.all(15.0),
                    padding: const EdgeInsets.all(3.0),
                    width: 350,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.purpleAccent[200])),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(15.0),
                            padding: const EdgeInsets.all(3.0),
                            child: Text("We are happy to have you"),
                            width: 200,
                          ),
                          IconButton(
                              tooltip: 'Tap to Speak',
                              onPressed: () =>
                                  _speak("We are happy to have you"),
                              iconSize: 30,
                              color: Colors.purple,
                              icon: Icon(Icons.volume_up)),
                          IconButton(
                            iconSize: 30,
                            color: Colors.purple,
                            onPressed: () => _speak("We are happy to have you"),
                            icon: Icon(Icons.edit),
                          )
                        ]),
                  )
                ]),
              ]),
        ));
  }
}
