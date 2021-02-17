import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepge(),
    );
  }
}

class Homepge extends StatefulWidget {
  Homepge({Key key}) : super(key: key);

  @override
  _HomepgeState createState() => _HomepgeState();
}

class _HomepgeState extends State<Homepge> {
  var ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        title: Text(
          'Ask Me Anything',
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: Container(
          child: FlatButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('assets/images/ball$ballNumber.png'),
          ),
        ),
      ),
    );
  }
}
