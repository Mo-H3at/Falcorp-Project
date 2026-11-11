import 'package:flutter/material.dart';

class ProfileSettingPages extends StatefulWidget {
  const ProfileSettingPages({super.key,required this.title,required this.page});

  final String title;
  final Widget page;

  @override
  State<ProfileSettingPages> createState() => _ProfileSettingPagesState();
}

class _ProfileSettingPagesState extends State<ProfileSettingPages> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => widget.page)
        );
      },
      child: Container(
        height: 50,
        color: Colors.grey[300],
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.title),
                Icon(Icons.arrow_forward_ios, size: 16),
              ],
            ),
          ),
        ),
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
      color: const Color.fromARGB(255, 0, 0, 0),
      child: Center(
        child: Text(widget.title, 
          style: const TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 104, 187, 255)),
          textAlign: TextAlign.left,
          )
      ),
    );
  }
}