import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
                child: Text(
            "Login Here",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
          ),
              )),

          Padding(
            padding: const EdgeInsets.all(10),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Username",
                labelText: "Enter Your Username",
                prefixIcon: Icon(Icons.account_box),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Enter your password",
                prefixIcon: Icon(Icons.visibility_off),
                suffixIcon: Icon(Icons.visibility_outlined),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          ElevatedButton(onPressed: () {

            Fluttertoast.showToast(
                msg: "Login Successfull",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0
            );
          }, child: Text("Login"),),
          SizedBox(height: 100,),//to give space in b/w
          TextButton(onPressed: () {}, child: Text("Not a User? Register Now."))
        ],
      ),
    );
  }
}
