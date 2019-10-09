import 'package:flutter/material.dart';
class Signin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          background(),
        ],
      ),
    );

  }
  Widget background(){
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.amberAccent
      ),
    );
  }

}