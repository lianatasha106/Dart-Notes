import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('9. Real-World Row'),
          actions: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Profile row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Doe',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text('Flutter Developer'),
                    ],
                  ),
                ],
              ),
              
              SizedBox(height: 30),
              
              // Stats row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildStat('Posts', '50'),
                  _buildStat('Followers', '1.2K'),
                  _buildStat('Following', '300'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildStat(String label, String value) {
  return Column(
    children: [
      Text(
        value,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      Text(label, style: TextStyle(color: Colors.grey[600])),
    ],
  );
}
