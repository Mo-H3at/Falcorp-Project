import 'package:falcorp_project/models/dataModels.dart';
import 'package:flutter/material.dart';

import 'userDetailsSubDialog/email.dart';
import 'userDetailsSubDialog/mobileNumber.dart';
import 'userDetailsSubDialog/password.dart';
import 'userDetailsSubDialog/username.dart';

class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({super.key, required this.userData});

  final UserData userData;
  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {

  var username = '';
  var email = '';
  var mobileNumber = '';
  var password = '••••••••';

  @override
  void initState() {
    username = widget.userData.username;
    email = widget.userData.email;
    mobileNumber = widget.userData.phoneNumber;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('User Details'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 6.0),
        child: Column(
          spacing: 3,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Username'),
                      Text(username,style: TextStyle(fontWeight: FontWeight.bold),),
                    ],)
                  ),
                  Expanded(
                    flex: 0,
                    child: TextButton(
                      onPressed: () {
                        showDialog(context: context, builder: (context) => UsernameDialog(currentUsername: username),
                          useSafeArea: true,
                          barrierDismissible: false,
                        );
                      },
                      child: Text('Edit',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Email'),
                      Text(email,style: TextStyle(fontWeight: FontWeight.bold),),
                    ],)
                  ),
                  Expanded(
                    flex: 0,
                    child: TextButton(
                      onPressed: () {
                        showDialog(context: context, builder: (context) => EmailAddressDialog(currentEmail: email),
                          useSafeArea: true,
                          barrierDismissible: false,
                        );
                      },
                      child: Text('Edit',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Mobile Number'),
                      Text(mobileNumber,style: TextStyle(fontWeight: FontWeight.bold),),
                    ],)
                  ),
                  Expanded(
                    flex: 0,
                    child: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => MobileNumberDialog(currentMobileNumber: mobileNumber),
                          useSafeArea: true,
                          barrierDismissible: false,);
                      },
                      child: Text('Edit',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('Password'),
                      Text('••••••••',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],)
                  ),
                  Expanded(
                    flex: 0,
                    child: TextButton(
                      onPressed: () {
                        showDialog(context: context, builder: (context) => PasswordDialog(currentPassword: '••••••••')
                          ,useSafeArea: true,
                          barrierDismissible: false,
                        );
                      },
                      child: Text('Edit',style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}