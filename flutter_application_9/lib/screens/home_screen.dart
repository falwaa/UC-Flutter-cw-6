import 'package:flutter/material.dart';
import '../models/building.dart';
import 'building_screen.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  var buildings = [
    Building(
        name: 'kuwait towers',
        imgURL:
            'https://user-images.githubusercontent.com/24327781/188260105-52be6a2e-a6d3-4ceb-86c0-ddc83e0aa5b6.jpeg'),
    Building(
        name: 'Liberation Tower',
        imgURL:
            'https://user-images.githubusercontent.com/24327781/188260123-28de85b4-d272-4ebb-b2ad-22a9582079bf.jpeg'),
    Building(
        name: 'The grand mosque',
        imgURL:
            'https://user-images.githubusercontent.com/24327781/188260137-021d865a-625e-4941-ad75-6427c690e0cf.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(169, 255, 7, 94),
        title: Text(
          'kuwait city landmarks',
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView.builder(
        itemCount: buildings.length,
        itemBuilder: ((context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            child: Card(
              elevation: 7,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Buildingscreen(
                        building: buildings[index],
                      ),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                    ),
                    ClipOval(
                      child: Image.network(
                        buildings[index].imgURL,
                        width: 120,
                        height: 120,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        buildings[index].name,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
