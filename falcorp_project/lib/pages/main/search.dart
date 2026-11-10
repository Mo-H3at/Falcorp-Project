import 'package:flutter/material.dart';

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
          ],
        ),
      ),
    );
  }
}