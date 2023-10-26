import 'package:flutter/material.dart';
void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Profile'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80, // Adjust the radius as needed
                backgroundImage: NetworkImage(
                    'https://example.com/your_profile_image.png'), // Replace with your profile image URL
              ),
              SizedBox(height: 20),
              Text(
                'Deepak Verma',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'johndoe@email.com',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              // Add more profile information as needed
            ],
          ),
        ),
      ),
    );
  }
}
