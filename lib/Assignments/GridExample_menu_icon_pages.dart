import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: grid_assignment(),
  ));
}

var images = [
  "assets/icons/icon.png",
  "assets/icons/icon2.png",
  "assets/icons/icon3.png",
  "assets/icons/icon2.png",
  "assets/icons/icon3.png"
];
var name = ['name1', 'name2', 'name3', 'name4', 'name5'];
var colors = [600, 200, 400, 500, 300, 700, 100];

class grid_assignment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: GridView.builder(
          itemCount: name.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20,
            mainAxisExtent: 20
          ),
          itemBuilder: (context, index) {
            return Card(

              color: Colors.purple,
              child: Center(
                child: Column(
                  children: [
                    Text(name[index]),
                    Icon(Icons.message)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
