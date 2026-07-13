import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('3. crossAxisAlignment - FIXED')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Start (top)
              _buildCrossExample('start', CrossAxisAlignment.start),
              SizedBox(height: 20),
              
              // Center (middle) - default
              _buildCrossExample('center', CrossAxisAlignment.center),
              SizedBox(height: 20),
              
              // End (bottom)
              _buildCrossExample('end', CrossAxisAlignment.end),
              SizedBox(height: 20),
              
              // Stretch (full height)
              _buildCrossExample('stretch', CrossAxisAlignment.stretch),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildCrossExample(String label, CrossAxisAlignment alignment) {
  return Container(
    height: 120, // ← INCREASED height to make room for text + Row
    color: Colors.grey[200],
    padding: EdgeInsets.all(8),
    child: Column(
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        // ✅ FIX: Wrap Row in Expanded to give it height!
        Expanded(
          child: Row(
            crossAxisAlignment: alignment,
            children: [
              Container(color: Colors.red, width: 40, height: 30),
              Container(color: Colors.green, width: 40, height: 50),
              Container(color: Colors.blue, width: 40, height: 40),
            ],
          ),
        ),
      ],
    ),
  );
}
