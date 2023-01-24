import 'package:flutter/material.dart';

class PositionIndicator extends StatelessWidget{
  final pagePosition;

  // Instatiate the class with the position that is currently selected
  PositionIndicator({this.pagePosition});

  Widget activeControl(){
    return Container(
      height: 8.0,
      width: 8.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF4771B1)
      ),
    );
  }

  Widget nonActiveControl(){
    return Container(
      height: 6.0,
      width: 6.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFCDCDCD)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        pagePosition == 0 ? activeControl() : nonActiveControl(),
        Container(width: 12.0,),
        pagePosition == 1 ? activeControl() : nonActiveControl(),
        Container(width: 12.0,),
        pagePosition == 2 ? activeControl() : nonActiveControl(),
        Container(width: 12.0,),
        pagePosition == 3 ? activeControl() : nonActiveControl(),
      ],
    );
  }
}