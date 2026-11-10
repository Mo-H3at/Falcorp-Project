import 'package:flutter/material.dart';

class MainCardWidget extends StatefulWidget {
  const MainCardWidget({super.key,required this.imagePath});

  final String imagePath;

  @override
  State<MainCardWidget> createState() => _MainCardWidgetState();
}

class _MainCardWidgetState extends State<MainCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/${widget.imagePath}'),fit: BoxFit.fill),
            Text(widget.imagePath.split('1').first,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}