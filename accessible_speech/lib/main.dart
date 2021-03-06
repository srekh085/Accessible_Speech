import 'package:accessible_speech/pages/CategoryPages/aboutMe.dart';
import 'package:accessible_speech/pages/categories.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/favourites.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    
    
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => Home(),
        '/favourites': (context) => Favourites(),
        '/categories': (context) => Categories(),
        '/categories/aboutme': (conext) => AboutMe(),
      },
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       routes: {
//         '/': (context) => Home(),
//         '/favourites': (context) => Favourites(),
//         '/categories': (context) => Categories(),
//       },
//     );
//   }
// }

