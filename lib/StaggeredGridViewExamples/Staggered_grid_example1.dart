import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(
    home: staggered_grid_example1(),
  ));
}

class staggered_grid_example1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: StaggeredGridView.count(crossAxisCount: 4,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
        staggeredTiles:[
          StaggeredTile.count(2, 2),
          StaggeredTile.count(2, 2),
          StaggeredTile.count(2, 1),
          StaggeredTile.count(2, 4),
          StaggeredTile.count(2, 3),
        ],
        children: [
          CustomChild(iconData: Icons.ice_skating,bgcolor: Colors.red,),
          CustomChild(iconData: Icons.account_box,bgcolor: Colors.purple,),
          CustomChild(iconData: Icons.ice_skating,bgcolor: Colors.lightBlue,),
      CustomChild(iconData: Icons.ice_skating,bgcolor: Colors.amberAccent,),
      CustomChild(iconData: Icons.ice_skating,bgcolor: Colors.lightGreen,),
        ],
      ),
    );
  }
  
}

class CustomChild extends StatelessWidget
{
  final Color? bgcolor;
  final IconData iconData;
  // VoidCallback onpress;

  CustomChild({this.bgcolor,required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Icon(iconData,color: Colors.white,),
    );
  }

}