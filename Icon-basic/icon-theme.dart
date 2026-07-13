import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // GLOBAL ICON THEME - affects all icons unless overridden
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.blue,
          size: 30,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('IconTheme Demo')),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              // These use the GLOBAL theme (blue, size 30)
              Text('Global Theme (blue, 30)', style: TextStyle(fontSize: 16)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home),
                  Icon(Icons.search),
                  Icon(Icons.settings),
                ],
              ),
              
              SizedBox(height: 40),
              
              // LOCAL THEME - overrides global for this section
              Text('Local Theme (pink, 40)', style: TextStyle(fontSize: 16)),
              IconTheme(
                data: IconThemeData(
                  color: Colors.pink,
                  size: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.favorite),
                    Icon(Icons.star),
                    Icon(Icons.thumb_up),
                  ],
                ),
              ),
              
              SizedBox(height: 40),
              
              // OVERRIDE INDIVIDUAL ICON - ignores theme
              Text('Individual Override (green, 20)', style: TextStyle(fontSize: 16)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.check, color: Colors.green, size: 20),
                  Icon(Icons.close, color: Colors.green, size: 20),
                  Icon(Icons.warning, color: Colors.green, size: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
