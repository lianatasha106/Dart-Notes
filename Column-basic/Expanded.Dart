import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('5. Expanded')),
        body: Column(
          children: [
            // Fixed height widget (doesn't expand)
            Container(
              color: Colors.red,
              height: 60,
              child: Center(
                child: Text('Fixed Height (60)', style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
            ),
            
            Expanded(
              flex: 2,  // Takes 2 parts
              child: Container(
                color: Colors.green,
                child: Center(child: Text('flex: 2', style: TextStyle(color: Colors.white, fontSize: 24))),
              ),
            ),
            Expanded(
              flex: 1,  // Takes 1 part (half as much as the green one)
              child: Container(
                color: Colors.orange,
                child: Center(child: Text('flex: 1', style: TextStyle(color: Colors.white, fontSize: 24))),
              ),
            ),
            // 🔽 EXPANDED - Takes all remaining space
            Expanded(
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    'EXPANDED!\nTakes all remaining space',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            
            // Another fixed height widget
            Container(
              color: Colors.blue,
              height: 60,
              child: Center(
                child: Text('Fixed Height (60)', style: TextStyle(color: Colors.white, fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
