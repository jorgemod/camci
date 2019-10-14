import 'package:flutter/material.dart';
import 'pasarela.dart';

class Cart extends StatelessWidget {

  var empty = false;

  final image1 = new AssetImage('imagenes/productos/aguacate1.png');

  Widget item() {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image(image: image1),
            Text("Desc 1"),
            Text(
              "\$FF.00",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
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
            ]));
  }

  Widget vacio() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text("Carrito vacio")],
      ),
      height: double.maxFinite,
      width: double.maxFinite,
    );
  }

  Widget lleno(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: <Widget>[
              item(),

            ],
          ),
        ),
        InkWell(
          child: Container(
            color: Colors.white70,
            height: 60,
            padding: EdgeInsets.only(bottom: 20),
            child: Center(
              child: Text("Pagar"),
            ),
          ),
          onTap: () {
            _showDialog(context);
          },
        ),
      ],
    );
  }

  void _showDialog(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Pagara:"),
          content: new Text("123.123"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Pagar", style: TextStyle(fontSize: 20),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pago()),
                );
                empty = true;
              },
            ),
            new FlatButton(
              child: new Text("Cancelar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (!empty) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Carrito"),
        ),
        body: lleno(context),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text("Carrito"),
        ),
        body: vacio(),
      );
    }
  }
}
