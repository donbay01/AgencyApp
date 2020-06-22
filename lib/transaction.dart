import 'slider.dart';
import 'package:flutter/material.dart';
import 'tabs.dart';

class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 130),
              child: Align(
                alignment: Alignment.topCenter,
                child: Icon(Icons.cancel,
                  color: Colors.red,
                  size: 50,),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text('No Transaction',
            style: TextStyle(
              fontSize: 25,
              color: Colors.grey

            ),),
          )
        ],
      ),
    );
  }
}
