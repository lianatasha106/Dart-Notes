import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('3. Icons with Labels')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon + Text below
              Column(
                children: [
                  Icon(Icons.favorite, color: Colors.red, size: 40),
                  Text('Like', style: TextStyle(fontSize: 12)),
                ],
              ),
              SizedBox(height: 20),
              
              // Row with icons and text beside them
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.call, color: Colors.green),
                      SizedBox(width: 8),
                      Text('Call'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.message, color: Colors.blue),
                      SizedBox(width: 8),
                      Text('Message'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.share, color: Colors.purple),
                      SizedBox(width: 8),
                      Text('Share'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
