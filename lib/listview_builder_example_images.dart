import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_with_Builder_image(),
  ));
}

class List_with_Builder_image extends StatelessWidget {
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
      appBar: AppBar(title: Text("Listview builder example with images"),),
      body: ListView.builder(
        itemCount: name.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color:Colors.purple[colors[index]],
              child: ListTile(
                title: Text(name[index]),
                subtitle:Text(phone[index]),
                leading:Image.asset(images[index]),
                trailing: Wrap(
                  children: [
                    Icon(Icons.message),
                    SizedBox(width: 20,),
                    Icon(Icons.call),
                  ],
                ),

              ),);
          }
      ),
    );
  }
}


