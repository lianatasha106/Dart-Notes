import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('4. Expanded')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Without Expanded
              Text('Without Expanded:'),
              Container(
                color: Colors.grey[200],
                child: Row(
                  children: [
                    Container(color: Colors.red, width: 50, height: 40),
                    Container(color: Colors.green, width: 50, height: 40),
                    Container(color: Colors.blue, width: 50, height: 40),
                  ],
                ),
              ),
              
              SizedBox(height: 20),
              
              // With Expanded (middle fills space)
              Text('With Expanded (middle expands):'),
              Container(
                color: Colors.grey[200],
                child: Row(
                  children: [
                    Container(color: Colors.red, width: 50, height: 40),
                    Expanded(
                      child: Container(color: Colors.green, height: 40),
                    ),
                    Container(color: Colors.blue, width: 50, height: 40),
                  ],
                ),
              ),
              
              SizedBox(height: 20),
              
              // With Expanded (all expand equally)
              Text('With Expanded (all expand equally):'),
              Container(
                color: Colors.grey[200],
                child: Row(
                  children: [
                    Expanded(
                      child: Container(color: Colors.red, height: 40),
                    ),
                    Expanded(
                      child: Container(color: Colors.green, height: 40),
                    ),
                    Expanded(
                      child: Container(color: Colors.blue, height: 40),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
