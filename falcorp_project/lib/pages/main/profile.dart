import 'package:flutter/material.dart';
import 'package:falcorp_project/shared_widgets/profileSettingsList.dart';

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
            ProfileSettingHeader(title: 'Account'),
            ProfileSettingPages(title: 'Username'),
            ProfileSettingPages(title: 'Email Address'),
            ProfileSettingPages(title: 'Personal Information'),
            ProfileSettingPages(title: 'Change Password'),
            ProfileSettingPages(title: 'Mobile Number'),

            ProfileSettingHeader(title: 'App Settings'),
            ProfileSettingPages(title: 'Theme'),
            ProfileSettingPages(title: 'Notifications'),
            
            ProfileSettingHeader(title: 'App Info'),
            ProfileSettingPages(title: 'About Us'),
            ProfileSettingPages(title: 'Help'),
            ProfileSettingPages(title: 'Terms of Service'),

            Container(
              height: 60,
              color: const Color.fromARGB(255, 14, 8, 8),
              margin: const EdgeInsets.symmetric(vertical: 10),
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
              
           