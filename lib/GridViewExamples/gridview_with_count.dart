import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: grid_with_count(),
  ));
}

var images = [
  "assets/icons/icon.png",
  "assets/icons/icon2.png",
  "assets/icons/icon3.png",
  "assets/icons/icon2.png",
  "assets/icons/icon3.png",
  "assets/icons/icon.png",
  "assets/icons/icon2.png",
  "assets/icons/icon3.png",
  "assets/icons/icon2.png",
  "assets/icons/icon3.png",
  "assets/icons/icon.png",
  "assets/icons/icon2.png",
  "assets/icons/icon3.png",
  "assets/icons/icon2.png",
  "assets/icons/icon3.png",
  "assets/icons/icon.png",
  "assets/icons/icon2.png",
  "assets/icons/icon3.png",
  "assets/icons/icon2.png",
  "assets/icons/icon3.png"
];

class grid_with_count extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview with count"),
      ),
      body: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 5,
          children: List.generate(15, (index) {
            return Card(
              color: Colors.purple,
              shadowColor: Colors.yellow,
              child: Image.asset(images[index]),
            );
          })),
    );
  }
}
