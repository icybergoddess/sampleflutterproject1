import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:HomeUI()));
}

class HomeUI extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers:<Widget>[
         SliverAppBar(
           expandedHeight: 180.0,
             backgroundColor: Colors.purple,
           leading: IconButton(
             icon: const Icon(
               Icons.menu,
               color: Colors.white,
             ),
               onPressed: (){},
           ),
           actions: <Widget>[
             IconButton(icon: const Icon(
               Icons.favorite_border,
               color: Colors.greenAccent,
             ), onPressed: () {  },)
           ],
           floating: true,
           flexibleSpace: ListView(
             children: <Widget>[
               const SizedBox(
                 height: 70.0,
               ),
               const Text("Type your location",textAlign:TextAlign.center,style:
                 TextStyle(color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 20.0
                 ),

               ),
               Container(
                 margin:
                 const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                 padding:const EdgeInsets.all(5.0),
                 decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(40.0)
                 ),
                 child: TextField(
                   decoration: InputDecoration(
                     hintText: "Kochi",
                     border: InputBorder.none,
                     icon: IconButton(
                       onPressed: (){},
                       icon:const Icon(Icons.search),
                     )
                   ),
                 ),
               )


             ],
           ),
         ),

          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10.0,
            ),
          ),
          SliverToBoxAdapter(

          ),

        ],


      ),
    );
  }
}