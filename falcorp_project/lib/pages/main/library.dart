import 'package:flutter/material.dart';

import '../../models/dataClasses.dart';
import '../../shared_widgets/mainPageCards.dart';

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
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
            MainCardWidget(card: carData.regera),
            MainCardWidget(card: carData.r34),
            MainCardWidget(card: carData.porsche911),
            MainCardWidget(card: carData.miata),
            MainCardWidget(card: carData.camaro),
            MainCardWidget(card: carData.silvia),
          ],
        ),
      ),
    );
  }
}