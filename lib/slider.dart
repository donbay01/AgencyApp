import 'package:flutter/material.dart';
import 'package:quote/mainScreen.dart';
import 'home.dart';
import 'tabs.dart';
import 'package:introduction_screen/introduction_screen.dart';


class Board extends StatelessWidget {


  List<PageViewModel> getPages(){
    return [
      PageViewModel(
          decoration: PageDecoration(
              boxDecoration: BoxDecoration (
                  image: DecorationImage(
                    image: AssetImage ('assets/account.jpg'),
                    fit: BoxFit.cover,
                  ),

              )
          ),


          titleWidget: Padding(
            padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Text(''
                'EFFICIENCY',
            style: TextStyle(color: Colors.white,
            fontSize: 40),
            ),
          ),
        bodyWidget:
        Text ('We work harder and smarter for all your needs, keeping you a step ahead',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),)




      ),
      PageViewModel(
          decoration: PageDecoration(
              boxDecoration: BoxDecoration (
                  image: DecorationImage(
                    image: AssetImage ('assets/pad.jpg'),
                    fit: BoxFit.cover,
                  )
              )
          ),

          titleWidget: Padding(
            padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Text(''
                'SECURITY',
              style: TextStyle(color: Colors.white,
                  fontSize: 40),
            ),
          ),
          bodyWidget:
          Text ('Providing the secure platform needed for your safety',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),)




      ),

      PageViewModel(
          decoration: PageDecoration(
              boxDecoration: BoxDecoration (
                  image: DecorationImage(
                    image: AssetImage ('assets/high.jpg'),
                    fit: BoxFit.cover,
                  )
              )
          ),

          titleWidget: Padding(
            padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
            child: Text(''
                'QUICK SERVICES',
              style: TextStyle(color: Colors.white,
                  fontSize: 40),
            ),
          ),
          bodyWidget:
          Text ('We work harder and smarter for all your needs, keeping you a step ahead',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),)

      ),


    ];

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: getPages(),
        done: Text(
          'Done',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25
          ),
        ),


        onDone: (){
          return Navigator.push(context,
              MaterialPageRoute(builder: (context) => MainScreen()));
        },
        skip: Text('Skip',
        style: TextStyle(
          color: Colors.white,
          fontSize: 25
        ),),
        showSkipButton: true,
        showNextButton: true,
        next: Icon(
          Icons.arrow_forward,
          color: Colors.white,
          size: 30,
        ),


      ),
    );
  }
}

