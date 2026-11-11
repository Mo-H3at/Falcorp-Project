import 'package:flutter/material.dart';

import '../../models/dataClasses.dart';
import '../../shared_widgets/mainPageCards.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

var carData = MainCardData();

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
            MainCardWidget(card: carData.rx7),
            MainCardWidget(card: carData.r8),
            MainCardWidget(card: carData.e35),
            MainCardWidget(card: carData.fType),
            MainCardWidget(card: carData.porsche911),
            MainCardWidget(card: carData.r33),
            MainCardWidget(card: carData.vulcan),
            MainCardWidget(card: carData.i8),
          ],
        ),
      ),
    );
  }
}