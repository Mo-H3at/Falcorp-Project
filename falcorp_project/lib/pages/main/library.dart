import 'package:flutter/material.dart';

import '../../shared_widgets/mainPageCards.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          padding: const EdgeInsets.all(10),
          crossAxisCount: 2,
          children: [
            MainCardWidget(imagePath: 'Mazda1.jpg'),
            MainCardWidget(imagePath: 'Audi1.jpg'),
            MainCardWidget(imagePath: 'Beemer1.jpg'),
            MainCardWidget(imagePath: 'Jaguar1.jpg'),
            MainCardWidget(imagePath: 'Porsche1.jpg'),
            MainCardWidget(imagePath: 'R33_1.jpg'),
            MainCardWidget(imagePath: 'AstonMartin1.jpg'),
            MainCardWidget(imagePath: 'BMW1.jpg'),
          ],
        ),
      ),
    );
  }
}