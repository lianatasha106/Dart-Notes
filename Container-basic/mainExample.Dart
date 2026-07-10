import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('1. Basic Container')),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.pink,
            child: Center(
              child: Text(
                'Hello!',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
