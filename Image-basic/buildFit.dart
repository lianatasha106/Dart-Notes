
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('6. All Fits')),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              _buildFitExample('Cover', BoxFit.cover),
              _buildFitExample('Contain', BoxFit.contain),
              _buildFitExample('Fill', BoxFit.fill),
              _buildFitExample('FitWidth', BoxFit.fitWidth),
              _buildFitExample('FitHeight', BoxFit.fitHeight),
              _buildFitExample('None', BoxFit.none),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildFitExample(String label, BoxFit fit) {
  return Column(
    children: [
      Container(
        width: double.infinity,
        height: 120,
        color: Colors.grey[200],
        child: Image.network(
          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
          fit: fit,
        ),
      ),
      SizedBox(height: 4),
      Text(label, style: TextStyle(fontSize: 12)),
    ],
  );
}
