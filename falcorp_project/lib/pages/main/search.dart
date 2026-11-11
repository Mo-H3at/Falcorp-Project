import 'package:flutter/material.dart';

import '../../models/dataClasses.dart';
import '../../models/dataModels.dart';
import '../../shared_widgets/mainPageCards.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  var carData = MainCardData();
  late List<CardData> searchItems;
  late List<CardData> searchResults;
  late final TextEditingController _searchedNameController ;
  late final FocusNode _searchedNameFocusNode;
  
  @override
  void initState() {
    searchItems = [
      carData.rx7,
      carData.r8,
      carData.e35,
      carData.fType,
      carData.porsche911,
      carData.r33,
      carData.regera,
      carData.r34,
      carData.porsche911,
      carData.silvia,
      carData.miata,
      carData.charger,
      carData.i8,
      carData.vulcan,
      carData.aventador,
    ];
    _searchedNameController = TextEditingController();
    _searchedNameFocusNode= FocusNode();
    searchResults = searchItems;
    super.initState();
  }

  @override
  void dispose(){ 
    _searchedNameController.dispose();
    _searchedNameFocusNode.dispose();
    super.dispose();
  }

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
                  controller: _searchedNameController,
                  focusNode: _searchedNameFocusNode,
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    enabled: true,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      searchResults = searchItems.where((name) => name.carName.toLowerCase().contains(value.toLowerCase())).toList();
                    });
                  },
                ),
              ),
            ),
             Expanded(
              flex: 1, 
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
                itemCount: searchResults.length,
                itemBuilder: (BuildContext context, int index){
                  return MainCardWidget(card: searchResults[index]);
                })
            ),
          ],
        ),
      ),
    );
  }
}