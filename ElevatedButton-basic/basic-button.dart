import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('1. Basic Button')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print('Button clicked!');
            },
            child: Text('Click Me'),
          ),
        ),
      ),
    );
  }
}
