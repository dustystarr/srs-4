import 'package:flutter/material.dart';
import 'package:srs_4/screens/second_screen.dart';
import 'package:srs_4/screens/third_screen.dart';
import 'package:srs_4/screens/fourth_screen.dart';
import 'package:srs_4/screens/fifth_screen.dart';
import 'package:srs_4/screens/sixth_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
              child: Text('Push'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Pop'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => ThirdScreen()),
                  (Route<dynamic> route) => false,
                );
              },
              child: Text('Push and Remove Until'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => FourthScreen()),
                  (Route<dynamic> route) => false,
                );
              },
              child: Text('Push Fourth and Remove Until'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/fifth',
                  (Route<dynamic> route) => false,
                );
              },
              child: Text('Push Named (Fifth) and Remove Until'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => FifthScreen()),
                );
              },
              child: Text('Push Replacement (Fifth)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(
                  context,
                  '/sixth',
                );
              },
              child: Text('Push Replacement Named (Sixth)'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SixthScreen()),
                );
              },
              child: Text('Push Sixth'),
            ),
          ],
        ),
      ),
    );
  }
}
