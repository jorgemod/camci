import 'package:flutter/material.dart';

class Cart extends StatelessWidget {

  Widget body() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Carrito vacio")
        ],
      ),
      height: double.maxFinite,
      width: double.maxFinite,
    );
  }



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Carrito"),),
      body: body(),

    );
  }


}