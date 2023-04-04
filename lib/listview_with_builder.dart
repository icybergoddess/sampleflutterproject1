import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_with_Builder(),
  ));
}

class List_with_Builder extends StatelessWidget {
  var datas = ['item1', 'item2', 'item3', 'item4', 'item5', 'item6', 'item7'];
  var colors = [600, 200, 400, 500, 300, 700, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List view classwith builder"),
      ),
      body: ListView.builder(
          itemCount: datas.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,

              // color: Colors.green,
              color: Colors.pink[colors[index]],
              child: Center(
                child: Text(datas[index]),
              ),
            );
          }),
    );
  }
}
