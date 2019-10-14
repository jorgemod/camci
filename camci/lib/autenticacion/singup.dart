import 'package:flutter/material.dart';
import 'package:camci/autenticacion/principal.dart';

class Singup extends StatelessWidget {

//  nombre, quizá un correo , numero de celular? , direccion?

  Widget form(BuildContext context) {
    bool acepto = false;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          logo(),
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

          CheckboxListTile(
            title: Text("¿Acepta terminos y condiciones?"),
            value: true,

            onChanged: (bool val) {},
            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
          ),

          FlatButton(
            child: Text("Registrarse"),
            color: Colors.amberAccent,
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/principal");

            },
          ),
        ],
      ),
    );
  }

  Widget logo() {
    var assetsImage = new AssetImage('imagenes/logo.png');
    var image = new Image(image: assetsImage,width: 80.0,height: 80.0,);
    return Container(
        child: Center(
          child: image,
        ));

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: form(context),
    );
  }
}

