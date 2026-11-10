import 'package:flutter/material.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
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
        title: Text('Personal Details'),
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
                      Text('Name'),
                      Text('Moagi',style: TextStyle(fontWeight: FontWeight.bold),),
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
                      Text('Surname'),
                      Text('Boikanyo',style: TextStyle(fontWeight: FontWeight.bold),),
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
                      Text('Birthdate'),
                      Text('1990-01-01',style: TextStyle(fontWeight: FontWeight.bold),),
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
                      Text('Gender'),
                      Text('Male',style: TextStyle(fontWeight: FontWeight.bold),),
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