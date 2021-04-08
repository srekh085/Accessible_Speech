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
                          child: Text("Hi, I am Madii"),
                          width: 200,
                        ),
                        IconButton(
                            tooltip: 'Tap to Speak',
                            onPressed: () => _speak("Hi, I am Madii"),
                            iconSize: 30,
                            color: Colors.purple,
                            icon: Icon(Icons.volume_up)),
                        IconButton(
                          iconSize: 30,
                          color: Colors.purple,
                          onPressed: () => _speak("Hi, I am Madii"),
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
                          child: Text("I have selective mutism"),
                          width: 200,
                        ),
                        IconButton(
                            tooltip: 'Tap to Speak',
                            onPressed: () => _speak("I have selective mutism"),
                            iconSize: 30,
                            color: Colors.purple,
                            icon: Icon(Icons.volume_up)),
                        IconButton(
                          iconSize: 30,
                          color: Colors.purple,
                          onPressed: () => _speak("I have selective mutism"),
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
                          width: 200,
                          padding: const EdgeInsets.all(3.0),
                          child: Text(
                              "I am unable to speak right now, so I will be communicating with my phone"),
                        ),
                        IconButton(
                            tooltip: 'Tap to Speak',
                            onPressed: () => _speak(
                                "I am unable to speak right now, so I will be communicating with my phone"),
                            iconSize: 30,
                            color: Colors.purple,
                            icon: Icon(Icons.volume_up)),
                        IconButton(
                          iconSize: 30,
                          color: Colors.purple,
                          onPressed: () => _speak(
                              "I am unable to speak right now, so I will be communicating with my phone"),
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
                          child: Text("Thank you for Co-operating"),
                          width: 200,
                        ),
                        IconButton(
                            tooltip: 'Tap to Speak',
                            onPressed: () =>
                                _speak("Thank you for Co-operating"),
                            iconSize: 30,
                            color: Colors.purple,
                            icon: Icon(Icons.volume_up)),
                        IconButton(
                          iconSize: 30,
                          color: Colors.purple,
                          onPressed: () => _speak("Thank you for Co-operating"),
                          icon: Icon(Icons.edit),
                        )
                      ]),
                )
              ]),
            ]),
      ),
    );
  }
}
