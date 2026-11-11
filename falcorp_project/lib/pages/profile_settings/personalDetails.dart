import 'package:falcorp_project/models/dataModels.dart';
import 'package:flutter/material.dart';

import 'personalDetailsSubDialog/dob.dart';
import 'personalDetailsSubDialog/fullName.dart';
import 'personalDetailsSubDialog/gender.dart';

class PersonalDetailsPage extends StatefulWidget {
  const PersonalDetailsPage({super.key, required this.personalData });
  
  final PersonalData personalData;

  @override
  State<PersonalDetailsPage> createState() => _PersonalDetailsPageState();
}

class _PersonalDetailsPageState extends State<PersonalDetailsPage> {

  late PersonalData personalData;
  var fullname = '';
  var dob = '';
  var gender = '';

   @override
  void initState() {
    fullname = widget.personalData.fullName;
    dob = widget.personalData.dateOfBirth;
    gender = widget.personalData.gender;
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
                      Text('Full Name'),
                      Text(fullname,style: TextStyle(fontWeight: FontWeight.bold),),
                    ],)
                  ),
                  Expanded(
                    flex: 0,
                    child: TextButton(
                      onPressed: () {
                        showDialog(context: context, builder: (context) => FullNameDialog(currentFullName: fullname),
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
                      Text('Birthdate'),
                      Text(dob,style: TextStyle(fontWeight: FontWeight.bold),),
                    ],)
                  ),
                  Expanded(
                    flex: 0,
                    child: TextButton(
                      onPressed: () {
                        showDialog(context: context, builder: (context) => DateOfBirthDialog(currentDateOfBirth: dob),
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
                      Text('Gender'),
                      Text(gender,style: TextStyle(fontWeight: FontWeight.bold),),
                    ],)
                  ),
                  Expanded(
                    flex: 0,
                    child: TextButton(
                      onPressed: () {
                        showDialog(context: context, builder: (context) => GenderDialog(currentGender: gender),
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
          ],
        ),
      )
    );
  }
}