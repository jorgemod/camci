import 'package:flutter/material.dart';
class principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("imagenes/fondito.jpg"), fit: BoxFit.cover,),
            ),
          ),

          inicio(context)
        ],
      ),
    );
  }
}

  Widget background(){
    var assetsImage = new AssetImage('imagenes/fonndo para inicio.jpg');
    var image = new Image(image: assetsImage,width: 1000.0,height: 3000.0,);
    return Container(

      child: image,


    );
  }

Widget inicio(BuildContext context){
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
              child: Text("Iniciar Sesión"),
              onPressed: (){
                Navigator.pushReplacementNamed(context, "/singin");
                },
              color: Colors.amberAccent,
            ),
            FlatButton(
              child: Text("registrarse"),
              onPressed: (){
                Navigator.pushReplacementNamed(context, "/singup");
              },
              color: Colors.red,
            )


          ],
        ),
      ),
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