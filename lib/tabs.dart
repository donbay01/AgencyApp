

import 'package:quote/bottombar.dart';

import 'slider.dart';
import 'package:flutter/material.dart';
import 'cards.dart';
import 'transaction.dart';
import 'wallet.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> with
    SingleTickerProviderStateMixin {

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController (length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 100, 0),
                  child: Text (
                    ' ANP \n SUPPORT',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 15, 10, 0),
                  child: CircleAvatar (
                    backgroundImage: AssetImage ('assets/images.jpeg'),
                    radius: 40.0,
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            TabBar (
              isScrollable: true,
              controller: _tabController,
              labelColor: Colors.white,
              labelPadding: EdgeInsets.only(right: 45),
              indicatorColor: Colors.transparent,
              unselectedLabelColor: Colors.black87,
              tabs: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Tab (
                    child: Text (
                      'USER GUIDE',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Tab (
                  child: Text (
                    'TRANSACTIONS',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                Tab (
                  child: Text (
                    'WALLET',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Homepage(),
                  Transactions(),
                  Wallet(),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.red,
        child: Icon(Icons.chat),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),

          );
    }
}
