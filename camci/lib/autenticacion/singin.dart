import 'package:flutter/material.dart';

class Signin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          background(),
          formulario(context),
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

  Widget logofbk() {
    var assetsImage = new AssetImage('imagenes/facebook.png');
    var image = new Image(image: assetsImage,width: 30.0,height: 30.0,);
    return Container(
        child: Center(
          child: image,
        ));

  }


  final fb = new AssetImage('imagenes/sn/facebook.png');
  final gl = new AssetImage('imagenes/sn/gmail.png');

  Widget boton(AssetImage img, String str, BuildContext context){
    return InkWell(
      child: Container(
        height: 49,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Iniciar con "+ str),
            Image(image: img,)
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: new BorderRadius.all(Radius.circular(8.0)),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              new BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: new Offset(0.0, 10.0))
            ]),
      ),
      onTap: () {
        Navigator.pushReplacementNamed(context, "/main");
      },
    );
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
  Widget formulario(BuildContext context){
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
                color:Colors.amberAccent,
                onPressed: (){
                  Navigator.pushReplacementNamed(context, "/main");
                },
              ),

              boton(fb, "Facebook", context),
              boton(gl, "Google", context),

            ],
          ),
        ),
      ),

    );
  }

}