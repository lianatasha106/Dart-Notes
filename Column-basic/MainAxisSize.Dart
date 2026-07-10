import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('mainAxisSize: MIN vs MAX')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // EXAMPLE 1: MIN - Column shrinks to fit
              Container(
                color: Colors.yellow[200],
                child: Column(
                  mainAxisSize: MainAxisSize.min,  // ← LOOK HERE
                  children: [
                    Text('MIN (shrinks to fit)', 
                         style: TextStyle(fontWeight: FontWeight.bold)),
                    Container(height: 30, width: 150, color: Colors.red),
                    Container(height: 30, width: 150, color: Colors.green),
                    Container(height: 30, width: 150, color: Colors.blue),
                  ],
                ),
              ),
              
              SizedBox(height: 40),
              
              // EXAMPLE 2: MAX - Column takes all space
              Container(
                color: Colors.yellow[200],
                height: 200,  // ← FIXED HEIGHT so MAX has space to fill
                child: Column(
                  mainAxisSize: MainAxisSize.max,  // ← LOOK HERE
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('MAX (takes all space)', 
                         style: TextStyle(fontWeight: FontWeight.bold)),
                    Container(height: 30, width: 150, color: Colors.red),
                    Container(height: 30, width: 150, color: Colors.green),
                    Container(height: 30, width: 150, color: Colors.blue),
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
