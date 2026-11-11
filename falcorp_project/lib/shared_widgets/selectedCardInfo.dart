import 'package:flutter/material.dart';

class SelectedCardInfoPage extends StatefulWidget {
  const SelectedCardInfoPage({super.key,required this.imagePath,required this.imageName});

  final String imagePath;
  final String imageName;

  @override
  State<SelectedCardInfoPage> createState() => _SelectedCardInfoPageState();
}

class _SelectedCardInfoPageState extends State<SelectedCardInfoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 196, 255),
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
                        child: Image(image: AssetImage('assets/images/${widget.imagePath}')),
                      ),
                      Text("The ${widget.imageName}",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
            
                Text("Born in Ängelholm and named after the Swedish word for 'to reign,' the Regera doesn't accelerate so much as it rewrites the rules of momentum. A twin-turbo V8 and three electric motors fuse into one seamless, gearless surge — no shifts, no interruption," 
                      +"just a single unbroken line from standstill to over 400 km/h. It is less a car than a declaration: that the combustion engine's swan song could also be its most glorious verse.",
                      style: const TextStyle(fontSize: 15)
                ),
            
                Container(
                  child: Row(
                    spacing: 2,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Image(image: AssetImage('assets/images/${widget.imagePath}')),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text("1,500 horsepower. One gear. Zero compromise. The Regera's Direct Drive transmission ditches the gearbox entirely, letting a hybrid powertrain pull relentlessly from idle to top speed. Carbon-fibre monocoque, active rear wing, triplex suspension, and a battery pack tuned more like a race car than a road car. Only 80 were ever built — each one a rolling argument that engineering restraint can produce excess.",
                          style: const TextStyle(fontSize: 13)
                        ),
                      ),
                    ],
                  ),
                ),
      
                Text("Swedish-built, hybrid-led, gearbox-free. The Regera doesn't change gears — it simply refuses to stop pulling.",
                      style: const TextStyle(fontSize: 15)
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}