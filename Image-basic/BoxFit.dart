import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('2. BoxFit Comparison')),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              // cover - fills box, crops
              Column(
                children: [
                  Text('BoxFit.cover', style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    width: 200,
                    height: 100,
                    color: Colors.grey[200],
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              
              SizedBox(height: 20),
              
              // contain - shows whole image
              Column(
                children: [
                  Text('BoxFit.contain', style: TextStyle(fontWeight: FontWeight.bold)),
                  Container(
                    width: 200,
                    height: 100,
                    color: Colors.grey[200],
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      fit: BoxFit.contain,
                    ),
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
