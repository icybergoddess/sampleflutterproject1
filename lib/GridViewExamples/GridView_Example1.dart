import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Grid_View(),
  ));
}

class Grid_View extends StatelessWidget {
  var name = ['name1', 'name2', 'name3', 'name4', 'name5'];
  var phone = ["600", "200", "400", "500", "300"];
  var images = [
    "assets/icons/icon.png",
    "assets/icons/icon2.png",
    "assets/icons/icon3.png",
    "assets/icons/icon2.png",
    "assets/icons/icon3.png"
  ];
  var colors = [600, 200, 400, 500, 300, 700, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisExtent: 20,
        ),
        children: [
          Image(image: AssetImage("assets/icons/icon.png")),
          Image(image: AssetImage("assets/icons/icon.png")),
          Image(image: AssetImage("assets/icons/icon.png")),
          Image(image: AssetImage("assets/icons/icon.png")),
          Image(image: AssetImage("assets/icons/icon.png")),
          Image(image: AssetImage("assets/icons/icon.png")),



        ],
      ),
    );
  }
}
