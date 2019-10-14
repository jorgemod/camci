import 'package:flutter/material.dart';

class Pago extends StatelessWidget {
  Widget body() {
    Widget method(String method) {
      return InkWell(
        child: Container(
          margin: EdgeInsets.all(10),
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
            child: Text(
              method,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
            ),
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
          method("Efectivo"),
          method("PayPal"),
          method("Tarjeta"),
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
      body: body(),
    );
  }
}
