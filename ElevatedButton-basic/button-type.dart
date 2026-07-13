import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('5. Button Types')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ElevatedButton - raised with shadow
              ElevatedButton(
                onPressed: () {},
                child: Text('Elevated Button'),
              ),
              
              SizedBox(height: 20),
              
              // TextButton - flat, no background
              TextButton(
                onPressed: () {},
                child: Text('Text Button'),
              ),
              
              SizedBox(height: 20),
              
              // OutlinedButton - has border, no shadow
              OutlinedButton(
                onPressed: () {},
                child: Text('Outlined Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
