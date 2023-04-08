import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileUI(),
  ));
}

class ProfileUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.favorite_outline_outlined))
          ],
          title: Center(
              child: Text(
                'PROFILE',
              )),
        ),
        body: Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1549763204-03c693da13be?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDIwfHx8ZW58MHx8fHw%3D&w=1000&q=80',
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                  top: 140,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.red,
                          child: Icon(
                            Icons.message,
                            size: 30,
                            color: Colors.white,
                          )),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 60,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                          radius: 56,
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.lightBlue,
                        child: Icon(
                          Icons.add,
                          size: 40,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )),
              Positioned(
                child: Container(height: 330),
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Column(
                    children: [
                      Text(
                        'Ivana Bechlam',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.grey.shade700),
                      ),
                      Text(
                        'model/ super star',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ],
                  )

              )
            ]
        )
    );
  }
}