import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(  // ← NEED THIS to control the tabs
        length: 2,  // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                print('Menu clicked');
              },
            ),
            title: Text('My App'),
            actions: [
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('Search clicked');
                },
              ),
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(child: Text('Settings')),
                  PopupMenuItem(child: Text('Logout')),
                ],
              ),
            ],
            
            // TabBar is now properly paired with TabBarView
            bottom: TabBar(
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'Profile'),
              ],
            ),
            
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [const Color(0xFFE9967A), const Color(0xFFFA8072)],
                ),
              ),
            ),
          ),
          
          // ✅ body now has a TabBarView to match the TabBar
          body: TabBarView(
            children: [
              Center(child: Text('Home Tab Content')),
              Center(child: Text('Profile Tab Content')),
            ],
          ),
        ),
      ),
    );
  }
}
