import 'package:flutter/material.dart';

class FavPage extends StatefulWidget {
  const FavPage({Key key}) : super(key: key);

  @override
  _FavPageState createState() => _FavPageState();
}

class _FavPageState extends State<FavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),
    );
  }
}
