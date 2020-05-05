import 'package:flutter/material.dart';

class Bildirimler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,title: new Text("Hello"),),
      body: Center(
        child: new Text("Hello menüsü")
      ),
    );
  }
}