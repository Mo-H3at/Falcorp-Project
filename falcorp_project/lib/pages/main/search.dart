import 'package:flutter/material.dart';

import '../../models/dataClasses.dart';
import '../../shared_widgets/mainPageCards.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  var carData = MainCardData();
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: Column(
          spacing: 3,
          children: [
            Expanded(
              flex: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    enabled: false,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1, 
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}