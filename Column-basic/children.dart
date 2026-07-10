import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('1. Children')),
        body: Column(
          children: [
            // These are the "children" - stacked top to bottom
            Container(
              color: Colors.red,
              height: 60,
              child: Center(child: Text('Child 1 - Red', style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
            Container(
              color: Colors.green,
              height: 60,
              child: Center(child: Text('Child 2 - Green', style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
            Container(
              color: Colors.blue,
              height: 60,
              child: Center(child: Text('Child 3 - Blue', style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
            Container(
              color: Colors.orange,
              height: 60,
              child: Center(child: Text('Child 4 - Orange', style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
            Container(
              color: Colors.purple,
              height: 60,
              child: Center(child: Text('Child 5 - Purple', style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ],
        ),
      ),
    );
  }
}
