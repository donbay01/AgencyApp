import 'package:flutter/material.dart';
import 'package:quote/guideDetails.dart';
import 'tabs.dart';
import 'slider.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.black87,
              child: SizedBox(height: 10,)),
          Container (
            padding: EdgeInsets.only(right: 20.0, left: 20),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.width - 50.0,
            child: GridView.count(crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 15.0,
              childAspectRatio: 0.8,
              children: <Widget>[
                _buildCard('ABOUT ANP', 'assets/anp.png', context),
                _buildCard('Frequently Asked \n Questions', 'assets/faq.png', context),
                _buildCard('E-wallet', 'assets/wallet.png', context),
                _buildCard('Training Manual', 'assets/manual.png', context),
                _buildCard('Know Your Terminal', 'assets/pos.png', context),
                _buildCard('Transaction Types', 'assets/transation.png', context),
            ],),
          ),
        ],
      ),
    );
  }
}

Widget _buildCard (String name, String imgPath, context){
  return Padding(
    padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 5.0, right: 5.0),
    child: InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Details( assetPath: imgPath,
            appname: name,)

        ));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0
            )
          ],
          color: Colors.white
        ),
        child: Column(
          children: <Widget>[
            Hero(
              tag: imgPath,
              child: Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage (imgPath),
                    fit: BoxFit.contain
                  )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                height: 1.0,
              ),
            ),
            Text(name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.grey
            ),)
          ],
        ),
      ),
    ),
  );
}
