import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Icon Practice')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Try changing these!
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.favorite, color: Colors.red, size: 30),
                  Icon(Icons.star, color: Colors.amber, size: 30),
                  Icon(Icons.home, color: Colors.blue, size: 30),
                  Icon(Icons.search, color: Colors.green, size: 30),
                ],
              ),
              
              SizedBox(height: 40),
              
              IconButton(
                icon: Icon(Icons.add_circle, color: Colors.blue, size: 50),
                onPressed: () {
                  print('Add button clicked');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
