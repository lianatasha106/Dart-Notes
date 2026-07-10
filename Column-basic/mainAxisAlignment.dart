import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('2. mainAxisAlignment')),
        body: Column(
          // 🔽 CHANGE THIS VALUE to see different alignments:
          // MainAxisAlignment.start    → Top
          // MainAxisAlignment.center   → Middle
          // MainAxisAlignment.end      → Bottom
          // MainAxisAlignment.spaceEvenly → Even space everywhere
          // MainAxisAlignment.spaceBetween → Space between children only
          // MainAxisAlignment.spaceAround → Space around each child
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.red,
              height: 60,
              child: Center(child: Text('Red', style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
            Container(
              color: Colors.green,
              height: 60,
              child: Center(child: Text('Green', style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
            Container(
              color: Colors.blue,
              height: 60,
              child: Center(child: Text('Blue', style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ],
        ),
      ),
    );
  }
}
