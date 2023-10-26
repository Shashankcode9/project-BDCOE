import 'package:flutter/material.dart';
import 'profile.dart';

void main() {
  runApp(MyLanguageApp());
}

class MyLanguageApp extends StatefulWidget {
  @override
  _MyLanguageAppState createState() => _MyLanguageAppState();
}

class _MyLanguageAppState extends State<MyLanguageApp> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Text('Option 1', style: TextStyle(fontSize: 30)),
    Text('Option 2', style: TextStyle(fontSize: 30)),
    Text('Option 3', style: TextStyle(fontSize: 30)),
    Text('Option 4', style: TextStyle(fontSize: 30)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Center(
            child: Text('Language Learning App',
        style: TextStyle(
        color: Colors.black,),),
          ),
          backgroundColor:Colors.green,
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Option2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Quiz',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
