import 'package:flutter/material.dart';
class principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          background(),
          inicio()
        ],
      ),
    );
  }
}

  Widget background(){
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.white
      ),
    );
  }

Widget inicio(){
  return Container(
    child: Center(
      child: Container(
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("Iniciar Sesión Con Facebook"),
              color: Colors.blueAccent
            )


          ],
        ),
      ),
    ),

  );
}

