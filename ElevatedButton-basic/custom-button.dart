import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('3. Custom Style')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print('Custom button clicked!');
            },
            style: ElevatedButton.styleFrom(
              // Background color
              backgroundColor: Colors.deepPurple,
              
              // Text color
              foregroundColor: Colors.white,
              
              // Size
              minimumSize: Size(200, 50),
              
              // Padding
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              
              // Rounded corners
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              
              // Shadow
              elevation: 10,
              
              // Font size
              textStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: Text('Custom Button'),
          ),
        ),
      ),
    );
  }
}
