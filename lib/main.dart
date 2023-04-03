import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myfirstproject/login_with_validation.dart';
import 'package:myfirstproject/login_design.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginForm()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // color: Colors.red, set background color for container
        //linear background
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [Colors.red, Colors.orange, Colors.yellow]),
          // image: DecorationImage(
          //     fit:BoxFit.cover, image: AssetImage("assets/icons/bg2.jpeg")),

          // image: NetworkImage("https://mobimg.b-cdn.net/v3/fetch/79/79c509bd1decb1502e612549b894d904.jpeg"))
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image(image: AssetImage("assets/icons/icon.png")),
              Image.asset(
                "assets/icons/selfcare.png",
                height: 150,
              ),
              Text(
                "Be Positive..!!",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
