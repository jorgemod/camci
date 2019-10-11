import 'package:flutter/material.dart';

class Signin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          background(),
          formulario(),
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



  Widget background(){
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white
      ),
    );
  }
  Widget formulario(){
    return Container(
      child: Center(
        child: Container(
          width: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              logo(),
              FlatButton(
                child: Text("CAMCI"),
                color: Colors.white,

              ),


              TextField(
                decoration: InputDecoration(hintText: "Email"),
              ),
              TextField(
                decoration: InputDecoration(hintText: "Contraseña"),
                obscureText: true,
              ),
              FlatButton(
                child: Text("Iniciar Sesión"),
                color:Color(0xFFEAB447),
                onPressed: () {},

              ),
              SizedBox(
                height: 70,

              ),
              FlatButton(
                child: Text("Iniciar Sesión Con Google"),
                color: Colors.red,
                onPressed: () {},
              ),
              FlatButton(
                child: Text("Iniciar Sesión Con Facebook"),
                color: Colors.blueAccent,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),

    );
  }

}