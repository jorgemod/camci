import 'package:flutter/material.dart';
class principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(

      child: Container(
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
      ),

    );
  }
}

Widget inicio()
{
  return Container(
    child: Center(
      child: Container(
      width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            FlatButton(
              child: Text("iniciar sesion"),
              color: Colors.red,

            ),
            FlatButton(
              child: Text("registrarse"),
              color: Colors.amberAccent,
            )
          ]
        )
      )
    )
  );
}



