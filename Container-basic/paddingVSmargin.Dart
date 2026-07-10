import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('2. Padding vs Margin')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 🔵 WITH PADDING (space INSIDE the container)
            Container(
              color: Colors.grey[300],
              child: Container(
                padding: EdgeInsets.all(30),
                color: Colors.blue,
                child: Text(
                  'PADDING: Space INSIDE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            
            SizedBox(height: 30),
            
            // 🟢 WITH MARGIN (space OUTSIDE the container)
            Container(
              color: Colors.grey[300],
              child: Container(
                margin: EdgeInsets.all(30),
                color: Colors.green,
                child: Text(
                  'MARGIN: Space OUTSIDE',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
