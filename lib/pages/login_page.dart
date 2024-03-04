// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_facebook/utls/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if (_formkey.currentState!.validate()) {
    Navigator.pushNamed(context, MyRoutes.homeRoute);
              }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(

      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SizedBox(
            height: 20.0,
             child: Text("English(US)"),
           ),
            Image.asset("assests/images/iglogo.png",
            scale: 20,
            alignment: Alignment.topCenter),
          
           SizedBox(
            height: 50.0,
           ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 32.0),
             child: Column(
              children: [
             TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)
                ),
                hintText: "Username, email or mobile number",
                labelText: "Username",
              ),
              validator: (value) {
                if(value!.isEmpty){
                  return "Username cannot be empty";
                }
                return null;
              },
             ), 
             SizedBox(
              height: 40.0,
             ),
             TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)
                ),
                hintText: "Password",
                labelText: "Password",
              ),
              validator: (value) {
                if(value!.isEmpty){
                  return "Username cannot be empty";
                }
                return null;
              },
             ), SizedBox(
            height: 20.0,
             ),
             InkWell(
              onTap:() => moveToHome(context),
               child: Container(
                width: 150,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromARGB(240, 51, 1, 189),
                  borderRadius: BorderRadius.circular(40)
                ),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, 
                  fontWeight: FontWeight.bold, 
                  fontSize: 20),
                ),
               ),
             ),
                               SizedBox(
                                 height: 5,
                               ),
              ElevatedButton(
               style: ElevatedButton.styleFrom(
                               backgroundColor: Colors.transparent,
                               foregroundColor: Colors.black,
                               elevation: 0,
               ),
                               onPressed: () {},
                               child: Text("Forgot Password?"),
               
              ),
            ]
             ),
           )
          ],
          ),
      )
    ));
  }
}
