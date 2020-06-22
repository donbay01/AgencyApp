import 'slider.dart';
import 'package:flutter/material.dart';
import 'tabs.dart';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20,),
              Text('EFT WALLET - N275,000',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 30,),
              Text('Operational Wallet - N50,000',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),)
            ],
          )
        ],
      ),
    );
  }
}
