import 'package:flutter/material.dart';
import 'package:flutter_application_9/models/building.dart';

class Buildingscreen extends StatelessWidget {
  const Buildingscreen({Key? key, required this.building}) : super(key: key);

  final Building building;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(169, 255, 7, 94),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.network(
              building.imgURL,
              fit: BoxFit.cover,
              width: 350,
              height: 350,
            ),
          ),
          Container(
            height: 120,
          ),
          Text(
            building.name,
            style: TextStyle(fontSize: 40),
          ),
        ],
      ),
    );
  }
}
