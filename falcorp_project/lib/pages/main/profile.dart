import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Container(
              height: 30,
              color: Colors.blue[300],
              child: Center(
                child: Text('Account'),
              ),
            ),
            Container(
              height: 50,
              color: Colors.grey[300],
              child: Center(
                child: Text('Item 1'),
              ),
            ),
            Container(
              height: 50,
              color: Colors.grey[300],
              child: Center(
                child: Text('Item 2'),
              ),
            ),
            Container(
              height: 50,
              color: Colors.grey[300],
              child: Center(
                child: Text('Item 3'),
              ),
            ),
            Container(
              height: 50,
              color: Colors.grey[300],
              child: Center(
                child: Text('Item 4'),
              ),
            ),
            Container(
              height: 50,
              color: Colors.grey[300],
              child: Center(
                child: Text('Item 5'),
              ),
            ),
            Container(
              height: 30,
              color: Colors.blue[300],
              child: Center(
                child: Text('App Settings'),
              ),
            ),
            Container(
              height: 50,
              color: Colors.grey[300],
              child: Center(
                child: Text('Item 6'),
              ),
            ),
            Container(
              height: 50,
              color: Colors.grey[300],
              child: Center(
                child: Text('Item 7'),
              ),
            ),
            Container(
              height: 30,
              color: Colors.blue[300],
              child: Center(
                child: Text('App Info'),
              ),
            ),
            Container(
              height: 50,
              color: Colors.grey[300],
              child: Center(
                child: Text('Item 8'),
              ),
            ),
            Container(
              height: 50,
              color: Colors.grey[300],
              child: Center(
                child: Text('Item 9'),
              ),
            ),
            Container(
              height: 50,
              color: Colors.grey[300],
              child: Center(
                child: Text('Item 10'),
              ),
            ),
            Container(
              height: 50,
              color: Colors.grey[300],
              child: Center(
                child: Text('Item 11'),
              ),
            ),
            Container(
              height: 60,
              color: const Color.fromARGB(255, 14, 8, 8),
              child: Center(
                child: Text('Item 12', style: TextStyle(color: Colors.red)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}