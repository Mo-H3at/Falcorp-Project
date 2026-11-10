import 'package:flutter/material.dart';

import '../../shared_widgets/mainPageCards.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(
        child: Column(
          spacing: 3,
          children: [
            Expanded(
              flex: 0,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
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
          ],
        ),
      ),
    );
  }
}