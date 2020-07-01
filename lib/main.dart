import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              'Ask me anything',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
          ),
          body: Ballpage(),
        ),
      ),
    );

class Ballpage extends StatefulWidget {
  @override
  _BallpageState createState() => _BallpageState();
}

class _BallpageState extends State<Ballpage> {
  var randomnum = 1;
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Expanded(
        child: FlatButton(
          onPressed: () {
            setState(() {
              randomnum = Random().nextInt(5) + 1;
              //Image.asset('images/ball1.png');
            });
          },
          child: Image.asset('images/ball$randomnum.png'),
        ),
      )
    ]);
  }
}
