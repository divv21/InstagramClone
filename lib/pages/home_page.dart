// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("app bar"),
        ),
        body: Center(
          child: Container(
   
            child: Text("home page"),
          ),
          ),
      drawer: Drawer(),
    );
  }
}