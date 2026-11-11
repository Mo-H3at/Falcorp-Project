import 'package:flutter/material.dart';

class Logout extends StatefulWidget {
  const Logout({super.key});

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding: const EdgeInsets.all(20),
      title: const Text('Do you wish to log out?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      actions:  [
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel',style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
            ),
            child: const Text('Log Out',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
          ),
        ],
    );
  }
}