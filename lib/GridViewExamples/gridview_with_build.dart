import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: grid_with_build(),
  ));
}

var images = [
  "assets/icons/icon.png",
  "assets/icons/icon2.png",
  "assets/icons/icon3.png",
  "assets/icons/icon2.png",
  "assets/icons/icon3.png"
];

class grid_with_build extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) {
            return Card(
              child: Image.asset(images[index]),
            );
          }),
    );
  }
}
