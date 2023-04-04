import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: ListView(
        children:  [
          //ListTile Starts

          ListTile(
            title: Text("Pet Store"),
            subtitle: Text("Enter Description here"),
            // leading: Icon(Icons.ac_unit),
            // leading: CircleAvatar(child: Image(image: AssetImage("assets/icons/icon.png"))),
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/icons/icon.png")),
            trailing: Icon(Icons.call),
          ),

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
        ],
      ),
    );
  }
}
