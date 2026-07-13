import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('1. Basic Row')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(color: Colors.red, width: 50, height: 50),
              Container(color: Colors.green, width: 50, height: 50),
              Container(color: Colors.blue, width: 50, height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
