import 'package:flutter/material.dart';
import 'package:language_learner/language_selection.dart';
import 'package:language_learner/learning_Hindi.dart';
import 'package:language_learner/welcomes.dart';
import 'package:language_learner/language_selection.dart';
import 'package:language_learner/profile.dart';

void main() {
  runApp(MaterialApp(
    home: welcome(),
  ));
}

class MyLanguageApp extends StatefulWidget {
  @override
  _MyLanguageAppState createState() => _MyLanguageAppState();
}

class _MyLanguageAppState extends State<MyLanguageApp> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    Hindi(),
    Text('Option 2', style: TextStyle(fontSize: 30)),
    Text('Option 3', style: TextStyle(fontSize: 30)),
    detail(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          title:Center(
            child: Text('Language Learning App',
              style: TextStyle(
                color: Colors.white,),),
          ),

          backgroundColor:Colors.green,
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Option2',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Quiz',
              backgroundColor: Colors.green,
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.green,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,

          onTap: _onItemTapped,
        ),
      ),
    );
  }
}