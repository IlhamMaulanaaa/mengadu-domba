import 'package:flutter/material.dart';

import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';
import '../widgets/positionindicator.dart';

class OnboardingMainPage extends StatefulWidget{
  @override
  _OnboardingMainPage createState() => _OnboardingMainPage();
}

class _OnboardingMainPage extends State<OnboardingMainPage>{
  final _currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          
          // The PageView widget gives us native scroll abilities between pages
          PageView(
            onPageChanged: (int index){
              setState(() {
                _currentPageNotifier.value = index;
              });
            },
            
            // Create a listing of the pages to be displayed
            children: <Widget>[
              Page1(),
              Page2(),
              Page3(),
              Page4(),
            ],
          ),

          // The position indicator widget
          Positioned(
            bottom: 80,
            right: 0,
            left: 0,
            child: new PositionIndicator(pagePosition: _currentPageNotifier.value,),
          ),

          // Position the button on the Stack widget
          Positioned(
            bottom: 0.0,
            right: 0,
            left: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: 46.0,
                  child: FloatingActionButton(
                    child: Text("GET STARTED", style: TextStyle(color: Colors.white),),
                    onPressed: () { },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}