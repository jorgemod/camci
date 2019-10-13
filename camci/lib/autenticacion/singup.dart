import 'package:flutter/material.dart';
import 'package:camci/main/principal.dart';

class Singup extends StatelessWidget {

//  nombre, quizá un correo , numero de celular? , direccion?

  Widget form(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(hintText: "nombre"),
          ),
          TextField(
            decoration: InputDecoration(hintText: "Correo"),
          ),
          TextField(
            decoration: InputDecoration(hintText: "Número de celular"),
          ),
          TextField(
            decoration: InputDecoration(hintText: "Dirección"),
          ),
          SizedBox(
            height: 70,
          ),
          FlatButton(
            child: Text("Registrarse"),
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/principal");
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: form(context),
    );
  }

}