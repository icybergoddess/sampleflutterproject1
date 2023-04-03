import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:myfirstproject/listpage.dart';
class LoginForm extends StatefulWidget {
  @override
  //creating statefulwidger
  State<StatefulWidget> createState() => _LoginFormState();
}

class _LoginFormState extends State {
  var loginformkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Form(
        key: loginformkey,
        child: ListView(
          children: [
    Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
        "Login Here",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
        ),
      ),
    ),


            //Username field
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Username",
                  labelText: "Enter Your Username",
                  prefixIcon: Icon(Icons.account_box),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
                textInputAction: TextInputAction.next,
                //validating username
                validator: (uname){
                  if(uname!.isEmpty || !uname.contains("@"))
                    {
                      return "Enter a valid username or email";
                    }
                  else
                    {
                      return null;
                    }
                },
              ),
            ),

            //password
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  labelText: "Enter Your Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                ),
                textInputAction: TextInputAction.next,
                validator: (pwd){
                  if(pwd!.isEmpty || pwd.length<6)
                  {
                    return "Enter a valid password,length should be greater than 6";
                  }
                  else
                  {
                    return null;
                  }
                },
              ),
            ),

    ElevatedButton(onPressed: () {
      final valid= loginformkey.currentState!.validate();
      if(valid){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>ListPage()));
        Fluttertoast.showToast(
            msg: "Login Successfull",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0
        );
      }
      else
        {
          Fluttertoast.showToast(
              msg: "Oops!Something went wrong!!!",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0
          );
        }


    }, child: Text("Login"),),
    SizedBox(height: 100,),//to give space in b/w
    TextButton(onPressed: () {}, child: Text("Not a User? Register Now."))
    ],
    ),
    ));
  }
}
