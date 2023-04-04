import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_with_Seperated(),
  ));
}

class List_with_Seperated extends StatelessWidget {
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
        appBar: AppBar(
          title: Text("Listview seperated"),
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(name[index]),
                  subtitle: Text(phone[index]),
                  leading: Image.asset(images[index]),
                  trailing: Wrap(
                    children: [
                      Icon(Icons.message),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.call),
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context,index){
              return Divider(thickness: 6,);
            },
            itemCount: name.length));
  }
}
