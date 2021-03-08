import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  Favourites({Key key}) : super(key: key);

  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.purple,
         title: Text("Favourites"),
         centerTitle: true,
       ),
       body: SafeArea(child: Text("Favourites Screen")),
    );
  }
}