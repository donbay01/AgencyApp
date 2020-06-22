import 'package:flutter/material.dart';
import 'slider.dart';
import 'tabs.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Board() ,
  ));
}


  _top(){
  return Container (
    padding: EdgeInsets.all(10.0),
    decoration: BoxDecoration (
      color: Colors.red,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30.0),
        bottomRight: Radius.circular(30.0)
      )
    ),

  );
}