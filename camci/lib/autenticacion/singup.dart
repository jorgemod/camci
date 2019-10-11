import 'package:flutter/material.dart';

class Singup extends StatelessWidget {

//  nombre, quizá un correo , numero de celular? , direccion?

  Widget fromulario() {
    return Container(
      child: Column(
        children: <Widget>[
          Text("Nombre"),
          TextField(
            decoration: InputDecoration(hintText: "nombre"),
          ),
          Text("Quizás un correo"),
          TextField(
            decoration: InputDecoration(hintText: "Correo"),
          ),
          Text("Número celular?"),
          TextField(
            decoration: InputDecoration(hintText: "Número?"),
          ),
          Text("Dirección?"),
          TextField(
            decoration: InputDecoration(hintText: "Dirección?"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return null;
  }

}