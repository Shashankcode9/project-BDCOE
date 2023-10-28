import 'package:flutter/material.dart';
import 'french.dart';
import 'spanish.dart';
import 'profile.dart';
import 'english.dart';
import 'quiz.dart';
void main() {
  runApp(MyLanguageApp());
}

class MyLanguageApp extends StatefulWidget {
  @override
  _MyLanguageAppState createState() => _MyLanguageAppState();
}

class _MyLanguageAppState extends State<MyLanguageApp> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    Option2Screen(),
    QuizScreen(),
    ProfileScreen(),
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
          title: Center(child: Text('Language Learning App')),
          backgroundColor: Colors.green, // Set the app bar color to green
        ),
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
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

class HomeScreen extends StatelessWidget {
  // List of languages to display on cards
  final List<String> languages = [
    'English',
    'Spanish',
    'French',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0), //deepak-to add space between appbar and eng card widget
        child: ListView.builder(
          itemCount: languages.length,
          itemBuilder: (context, index) {
            return CardLanguageWidget(languages[index]);
          },
        ),
      ),
    );
  }
}

class CardLanguageWidget extends StatelessWidget {
  final String languageName;

  CardLanguageWidget(this.languageName);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(
          languageName,
          style: TextStyle(fontSize: 24.0, color: Colors.white), // Text color
        ),

        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>EnglishPage(),),);
          // shashank- add navigation
        },
      ),
    );
  }
}

class Option2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Option 2 Screen'),
    );
  }
}

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Quiz Screen'),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Profile Screen'),
    );
  }
}
