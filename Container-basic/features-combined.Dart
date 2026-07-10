import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('6. All Features')),
        body: Center(
          child: Container(
            // Size
            width: 300,
            height: 200,
            
            // Margin (space outside)
            margin: EdgeInsets.all(20),
            
            // Padding (space inside)
            padding: EdgeInsets.all(20),
            
            // Decoration (color, border, shadow, gradient)
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.purple],
              ),
              border: Border.all(
                color: Colors.pink,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 20,
                  blurRadius: 10,
                ),
              ],
            ),
            
            // Alignment of child
            alignment: Alignment.center,
            
            // Child
            child: Text(
              'Container\nAll Features',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
