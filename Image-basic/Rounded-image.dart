import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('3. Rounded Image')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Rounded corners
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                  width: 200,
                  height: 200,
                ),
              ),
              
              SizedBox(height: 30),
              
              // Circle avatar
              ClipOval(
                child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
