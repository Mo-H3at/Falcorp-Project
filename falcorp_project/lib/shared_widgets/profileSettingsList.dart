import 'package:flutter/material.dart';

class ProfileSettingPages extends StatefulWidget {
  const ProfileSettingPages({super.key,required this.title});

  final String title;

  @override
  State<ProfileSettingPages> createState() => _ProfileSettingPagesState();
}

class _ProfileSettingPagesState extends State<ProfileSettingPages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.grey[300],
      child: Center(
        child: Text(widget.title),
      ),
    );
  }
}

class ProfileSettingHeader extends StatefulWidget {
  const ProfileSettingHeader({super.key,required this.title});

  final String title;

  @override
  State<ProfileSettingHeader> createState() => _ProfileSettingHeaderState();
}

class _ProfileSettingHeaderState extends State<ProfileSettingHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.only(top: 10),
      color: Colors.blue[300],
      child: Center(
        child: Text(widget.title, 
          style: const TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
          )
      ),
    );
  }
}