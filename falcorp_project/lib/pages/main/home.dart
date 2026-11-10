import 'package:flutter/material.dart';

import '../../shared_widgets/mainPageCards.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



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