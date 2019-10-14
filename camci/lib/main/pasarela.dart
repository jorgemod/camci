import 'package:flutter/material.dart';

class Pago extends StatelessWidget {

  final pp = new AssetImage('imagenes/pagos/paypal.png');

  final cc = new AssetImage('imagenes/pagos/mastercard.png');

  final ef = new AssetImage('imagenes/pagos/money.png');

  Widget body(BuildContext context) {
    Widget method(String method, AssetImage img) {
      return InkWell(
        onTap: () {
          Navigator.of(context).pop();
          Navigator.of(context).pop();
        },
        child: Container(
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: new BorderRadius.all(Radius.circular(8.0)),
              color: Colors.white,
              boxShadow: <BoxShadow>[
                new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.0,
                    offset: new Offset(0.0, 10.0))
              ]),
          height: 100,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
              Image(image: img,),
              Text(
                method,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
            ],)
          ),
        ),
      );
    }

    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          method("Efectivo", ef),
          method("PayPal", pp),
          method("Tarjeta", cc),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pago"),
      ),
      body: body(context),
    );
  }
}
