import 'package:flutter/material.dart';

class FavouratePage extends StatefulWidget {
  FavouratePage({Key key}) : super(key: key);

  @override
  _FavouratePageState createState() => _FavouratePageState();
}

class _FavouratePageState extends State<FavouratePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Favourates'),
    );
  }
}
