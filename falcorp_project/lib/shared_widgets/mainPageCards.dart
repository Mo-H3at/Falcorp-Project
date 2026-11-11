import 'package:flutter/material.dart';

import 'selectedCardInfo.dart';

class MainCardWidget extends StatefulWidget {
  const MainCardWidget({super.key,required this.imagePath});

  final String imagePath;
  

  @override
  State<MainCardWidget> createState() => _MainCardWidgetState();
}

class _MainCardWidgetState extends State<MainCardWidget> {

  @override
  Widget build(BuildContext context) {

   String imageName = widget.imagePath.split('1').first;

    return InkWell(
      child: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/images/${widget.imagePath}'),fit: BoxFit.fill),
              Text(imageName,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => SelectedCardInfoPage(imagePath: widget.imagePath, imageName: imageName,))
        );
      },
    );
  }
}