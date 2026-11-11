import 'package:flutter/material.dart';

import '../models/dataModels.dart';

class SelectedCardInfoPage extends StatefulWidget {
  const SelectedCardInfoPage({super.key,required this.car});

  final CardData car;

  @override
  State<SelectedCardInfoPage> createState() => _SelectedCardInfoPageState();
}

class _SelectedCardInfoPageState extends State<SelectedCardInfoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          foregroundColor: const Color.fromARGB(255, 255, 255, 255),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          margin: EdgeInsets.fromLTRB(0, 1, 0, 2),
          child: SingleChildScrollView(
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        width: double.infinity,
                        child: Image(image: AssetImage(widget.car.image1)),
                      ),
                      Text("The ${widget.car.carName}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
            
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.car.carData1,style: const TextStyle(fontSize: 15)
                  ),
                ),
            
                Container(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    spacing: 5,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Image(image: AssetImage(widget.car.image2)),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(widget.car.carData2,
                          style: const TextStyle(fontSize: 13)
                        ),
                      ),
                    ],
                  ),
                ),
      
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.car.carData3,
                        style: const TextStyle(fontSize: 15)
                  ),
                ),
                
              ],
            ),
          ),
        )
      ),
    );
  }
}