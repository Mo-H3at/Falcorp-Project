import 'package:flutter/material.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
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
                      Text('MoDaMan',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],)
                  ),
                  Expanded(
                    flex: 0,
                    child: TextButton(
                      onPressed: () {
                        // Handle save button press
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
                      Text('MoFal@email.com',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],)
                  ),
                  Expanded(
                    flex: 0,
                    child: TextButton(
                      onPressed: () {
                        // Handle save button press
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
                      Text('+267 71 234 567',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],)
                  ),
                  Expanded(
                    flex: 0,
                    child: TextButton(
                      onPressed: () {
                        // Handle save button press
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
                        // Handle save button press
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