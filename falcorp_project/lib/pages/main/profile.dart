import 'package:falcorp_project/models/dataModels.dart';
import 'package:falcorp_project/pages/profile_settings/logout.dart';
import 'package:falcorp_project/pages/profile_settings/userDetails.dart';
import 'package:flutter/material.dart';

import 'package:falcorp_project/pages/profile_settings/personalDetails.dart';
import 'package:falcorp_project/shared_widgets/profileSettingsList.dart';

import '../../models/dataClasses.dart';
import '../profile_settings/aboutUs.dart';
import '../profile_settings/help.dart';
import '../profile_settings/notificationsSetting.dart';
import '../profile_settings/theme.dart';
import '../profile_settings/tos.dart';

class Profile extends StatefulWidget {
  const Profile({super.key, required this.userDetails, required this.personalDetails,});

final UserDetails userDetails;
final PersonalDetails personalDetails;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  late UserData userData;
  late PersonalData personalData;

  @override
  void initState() {
    userData = widget.userDetails.userDetails;
    personalData = widget.personalDetails.personalDetails;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: ListView(
          children: [

            ProfileSettingHeader(title: 'Account'),
            ProfileSettingPages(title: 'User Details', page: UserDetailsPage(userData: userData)),
            ProfileSettingPages(title: 'Personal Details', page: PersonalDetailsPage(personalData: personalData,)),

            ProfileSettingHeader(title: 'App Settings'),
            ProfileSettingPages(title: 'Theme', page: const ThemeSetting()),
            ProfileSettingPages(title: 'Notifications', page: const NotificationsSettings()),

            ProfileSettingHeader(title: 'App Info'),
            ProfileSettingPages(title: 'About Us', page: const AboutUs()),
            ProfileSettingPages(title: 'Help', page: const HelpPage()),
            ProfileSettingPages(title: 'Terms of Service', page: const TermsOfService()),

            InkWell(
              child: Container(
                height: 60,
                color: const Color.fromARGB(255, 14, 8, 8),
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.logout, color: const Color.fromARGB(255, 255, 17, 0),),
                      Text('Log Out', 
                        style: TextStyle(color: const Color.fromARGB(255, 255, 17, 0), fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
              onTap: () {
                showDialog(context: context, builder: (context) => Logout());
              },
            ),
          ],
        ),
      ),
    );
  }
}    