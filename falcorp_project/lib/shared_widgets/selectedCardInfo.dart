import 'package:flutter/material.dart';

class SelectedCardInfoPage extends StatefulWidget {
  const SelectedCardInfoPage({super.key,required this.imagePath,required this.imageName});

  final String imagePath;
  final String imageName;

  @override
  State<SelectedCardInfoPage> createState() => _SelectedCardInfoPageState();
}

class _SelectedCardInfoPageState extends State<SelectedCardInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 196, 255),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 1, 0, 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    child: Image(image: AssetImage('assets/images/${widget.imagePath}')),
                  ),
                  Text("The ${widget.imageName}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}