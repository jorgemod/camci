import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  Widget items() {
    final image1 = new AssetImage('imagenes/productos/aguacate1.png');
    final image2 = new AssetImage('imagenes/productos/fresas1.png');
    final precio1 = "10";
    final precio2 = "30";

    final item1 = Container(
        decoration: new BoxDecoration(
            color: Colors.white70,
            borderRadius: new BorderRadius.all(
              Radius.circular(8.0),
            ),
            boxShadow: <BoxShadow> [
              new BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: new Offset(0.0, 10.0)
              )
            ]
        ),
      height: 200,
      width: 180,

      child: Column(
        children: <Widget>[
          Container(
            height: 140,
            child: Image(image: image1),
          ),
          Text("Desc 1"),
          Text("Desc 1"),
          Text(precio1),

        ],
      )
    );

    final item2 = Container(
        decoration: new BoxDecoration(
            color: Colors.white70,
            borderRadius: new BorderRadius.all(
              Radius.circular(8.0),
            ),
            boxShadow: <BoxShadow> [
              new BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: new Offset(0.0, 10.0)
              )
            ]
        ),
      height: 200,
      width: 180,

      child: Column(
        children: <Widget>[
          Container(
            height: 140,
            child: Image(image: image2),
          ),
          Text("Desc 2"),
          Text("Desc 2"),
          Text(precio2),

        ],
      )
    );

    return Container(
      height: 220,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            item1,
            item2
          ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final searchBar = Container(
      height: 110,
      width: double.maxFinite,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.search),
            Text("Buscar"),
          ],
        ),
        margin: EdgeInsets.only(top: 55, bottom: 15, left: 15, right: 15),
        padding: EdgeInsets.only(left: 10, right: 10),
        color: Colors.white,
      ),
      color: Colors.green,
    );

    return Scaffold(
        body: Container(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                searchBar,
                Text("PRODUCTOS"),
                Container(
                  height:475,
                  child: ListView(
                    scrollDirection: Axis.vertical,

                    children: <Widget>[
                      items(),
                      items(),
                      items(),
                      items(),
                      items(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white70,
            height: 60,
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                InkWell(
                  child: Icon(Icons.home),
                  onTap: () {
                    //TODO
                    print("tapped");
                  },
                ),
                InkWell(
                  child: Icon(Icons.shopping_cart),
                  onTap: () {
                    //TODO
                    print("tapped");
                  },
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
