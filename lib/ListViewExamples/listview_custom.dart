import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_with_Custom(),
  ));
}

class List_with_Custom extends StatelessWidget {
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
      appBar: AppBar(title: Text("Listview with custom"),),
     body: ListView.custom(
       childrenDelegate: SliverChildListDelegate([
         Card(
           color: Colors.yellow,
           shadowColor: Colors.red,
           child: ListTile(
             title: Text("Pet Store"),
             subtitle: Text("Enter Description here"),
             // leading: Icon(Icons.ac_unit),
             // leading: CircleAvatar(child: Image(image: AssetImage("assets/icons/icon.png"))),
             leading: CircleAvatar(
                 backgroundImage: AssetImage("assets/icons/icon.png")),
             trailing: Wrap(
               children: [
                 Icon(Icons.message),
                 SizedBox(width: 20,),
                 Icon(Icons.call),
               ],
             ),
           ),
         ),
       ]),

    //      childrenDelegate: SliverChildBuilderDelegate(
    // (BuildContext context, int index) {
    //   return Card(
    //   child: Text(name[index]),
    // );
    //   },
    // childCount: name.length
    //  )
    ));
  }
}
