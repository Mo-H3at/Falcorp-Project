import 'package:falcorp_project/models/dataModels.dart';
import 'package:flutter/material.dart';

import 'selectedCardInfo.dart';

class MainCardWidget extends StatefulWidget {
  const MainCardWidget({super.key,required this.card,});

  final CardData card;
  

  @override
  State<MainCardWidget> createState() => _MainCardWidgetState();
}

class _MainCardWidgetState extends State<MainCardWidget> {

  @override
  Widget build(BuildContext context) {


    return InkWell(
      child: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(widget.card.image1),fit: BoxFit.fill),
              Text(widget.card.carName,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => SelectedCardInfoPage(car: widget.card,))
        );
      },
    );
  }
}