import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: grid_with_custom(),
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

class grid_with_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridview with count"),
      ),
     body: GridView.custom(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 4),
         childrenDelegate: SliverChildBuilderDelegate((context,index){
           return Container(
             child: ListView(
               children: const [
                 Center(child: Text("hi"),),
                 SizedBox(height: 2,),
                 Icon(Icons.ac_unit,color: Colors.red,)
               ],
             ),
           );
         })),
    );
  }
}
