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
            decoration: InputDecoration(hintText: "Name"),
          ),
          TextField(
            decoration: InputDecoration(hintText: "E-mail"),
          ),
          TextField(
            decoration: InputDecoration(hintText: "Phone number"),
          ),
          TextField(
            decoration: InputDecoration(hintText: "Address"),
          ),
          SizedBox(
            height: 70,
          ),

          CheckboxListTile(
            title: Text("Do you accept terms and conditions?"),
            value: true,

            onChanged: (bool val) {},
            controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
          ),

          FlatButton(
            child: Text("Send"),
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
    var assetsImage = new AssetImage('imagenes/newlogo.png');
    var image = new Image(image: assetsImage,width: 170.0,height: 170.0,);
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

