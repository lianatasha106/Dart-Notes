import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('2. mainAxisAlignment')),
        body: Column(
          children: [
            _buildRowExample('start', MainAxisAlignment.start),
            _buildRowExample('center', MainAxisAlignment.center),
            _buildRowExample('end', MainAxisAlignment.end),
            _buildRowExample('spaceEvenly', MainAxisAlignment.spaceEvenly),
            _buildRowExample('spaceBetween', MainAxisAlignment.spaceBetween),
            _buildRowExample('spaceAround', MainAxisAlignment.spaceAround),
          ],
        ),
      ),
    );
  }
}

Widget _buildRowExample(String label, MainAxisAlignment alignment) {
  return Column(
    children: [
      Text(label),
      Row(
        mainAxisAlignment: alignment,
        children: [
          Container(color: Colors.red, width: 40, height: 40),
          Container(color: Colors.green, width: 40, height: 40),
          Container(color: Colors.blue, width: 40, height: 40),
        ],
      ),
      SizedBox(height: 10),
    ],
  );
}
