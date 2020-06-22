

import 'slider.dart';
import 'package:flutter/material.dart';
import 'tabs.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>  {


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'GLOBAL ACCELEREX',
          style: TextStyle(
            color: Colors.red,
          ),
        ),
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              color: Colors.red,
              onPressed: () {

              },
              icon: Icon(Icons.menu,
              size: 30,),
            );
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.power_settings_new,
            size: 30,),
            color: Colors.red,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => Board()
              ));
            },
          ),
        ],
      ),
      body: SecondScreen(),


    );


  }
}