// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assests/images/iglogo.png",
         height: 10,
         width: 10,
         alignment:Alignment.topCenter,),
         Text(
          "Instagram", 
          style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
         ),
         )
        ],
        )
      );
  }
}
