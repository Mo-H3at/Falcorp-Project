import 'package:flutter/material.dart';

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
            Card(
              child: Center(
                child: Text('Item 1'),
              ),
            ),
            Card(
              child: Center(
                child: Text('Item 2'),
              ),
            ),
            Card(
              child: Center(
                child: Text('Item 3'),
              ),
            ),
            Card(
              child: Center(
                child: Text('Item 4'),
              ),
            ),
            Card(
              child: Center(
                child: Text('Item 5'),
              ),
            ),
            Card(
              child: Center(
                child: Text('Item 6'),
              ),
            ),
            Card(
              child: Center(
                child: Text('Item 7'),
              ),
            ),
            Card(
              child: Center(
                child: Text('Item 8'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}