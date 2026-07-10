import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('3. crossAxisAlignment')),
        body: Column(
          // 🔽 CHANGE THIS VALUE to see different alignments:
          // CrossAxisAlignment.start    → Left
          // CrossAxisAlignment.center   → Center (default)
          // CrossAxisAlignment.end      → Right
          // CrossAxisAlignment.stretch → Full width
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.red,
              height: 60,
              child: Text('Red', style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Container(
              color: Colors.green,
              height: 60,
              child: Text('Green', style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Container(
              color: Colors.blue,
              height: 60,
              child: Text('Blue', style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
