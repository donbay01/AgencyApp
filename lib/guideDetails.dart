import 'package:quote/slider.dart';
import 'package:quote/mainScreen.dart';

import 'bottombar.dart';
import 'cards.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final assetPath, appname ;
  Details ({this.assetPath, this.appname});
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
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MainScreen()
                ));
              },
              icon: Icon(Icons.arrow_back,
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
                  builder: (context) => Board()));
            },
          ),
        ],
      ),
      body: ListView (
        children: <Widget>[
          SizedBox (height: 30,),
          Padding (
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'ANP GUIDE',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          ),
          SizedBox(height: 30,),
          Hero(
            tag: assetPath,
            child: Image.asset(assetPath,
            height: 150.0,
            width: 100.0,
            fit: BoxFit.contain,)
          ),
          SizedBox(height: 20.0,),
          Center(
            child: Text(appname,
            style: TextStyle (
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
          )

        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
