import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle (),
      notchMargin: 6.0,
      elevation: 9.0,
      color: Colors.transparent,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 45.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
              color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 40.0,
              width: MediaQuery.of(context).size.width /2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.search, color: Colors.red,),
                  Icon(Icons.person_outline, color: Colors.grey,)
                ],
              ),
            ),
            Container(
              height: 40.0,
              width: MediaQuery.of(context).size.width /2 - 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.settings, color: Colors.red,),
                  Icon(Icons.security, color: Colors.grey,)
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
