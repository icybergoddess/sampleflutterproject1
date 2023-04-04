import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: grid_with_extend(),
  ));
}

var images = [
  "assets/icons/icon.png",
  "assets/icons/icon2.png",
  "assets/icons/icon3.png",
  "assets/icons/icon2.png",
  "assets/icons/icon3.png",
  "assets/icons/icon.png"
];

class grid_with_extend extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.extent(maxCrossAxisExtent: 60,
     children: List.generate(10, (index) {
       return Card(
         child: Text("hi",style: TextStyle(fontSize: 40),),
       );
       },
     ),
   ));
  }
  
}