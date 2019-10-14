import 'package:flutter/material.dart';
import 'cart.dart';

class Principal extends StatelessWidget {

  final image1 = new AssetImage('imagenes/productos/aguacate1.png');
  final image2 = new AssetImage('imagenes/productos/aguacate2.png');
  final image3 = new AssetImage('imagenes/productos/aguacate3.png');
  final image4 = new AssetImage('imagenes/productos/aguacate4.png');
  final image5 = new AssetImage('imagenes/productos/durazno1.png');
  final image6 = new AssetImage('imagenes/productos/durazno2.png');
  final image7 = new AssetImage('imagenes/productos/durazno3.png');
  final image8 = new AssetImage('imagenes/productos/durazno4.png');
  final image9 = new AssetImage('imagenes/productos/durazno5.png');
  final image10 = new AssetImage('imagenes/productos/fresas1.png');
  final image11 = new AssetImage('imagenes/productos/fresas2.png');
  final image12 = new AssetImage('imagenes/productos/fresas3.png');
  final image13 = new AssetImage('imagenes/productos/fresas4.png');
  final image14 = new AssetImage('imagenes/productos/fresas5.png');
  final image15 = new AssetImage('imagenes/productos/jitomate1.png');
  final image16 = new AssetImage('imagenes/productos/jitomate2.png');
  final image17 = new AssetImage('imagenes/productos/lechuga1.png');
  final image18 = new AssetImage('imagenes/productos/lechuga2.png');
  final image19 = new AssetImage('imagenes/productos/lechuga3.png');
  final image20 = new AssetImage('imagenes/productos/lechuga4.png');
  final image21 = new AssetImage('imagenes/productos/limon1.png');
  final image22 = new AssetImage('imagenes/productos/limon3.png');
  final image23 = new AssetImage('imagenes/productos/limon4.png');
  final image24 = new AssetImage('imagenes/productos/limon5.png');
  final image25 = new AssetImage('imagenes/productos/manzana1.png');
  final image26 = new AssetImage('imagenes/productos/manzana2.png');
  final image27 = new AssetImage('imagenes/productos/manzana3.png');
  final image28 = new AssetImage('imagenes/productos/manzana4.png');
  final image29 = new AssetImage('imagenes/productos/naranjas1.png');
  final image30 = new AssetImage('imagenes/productos/naranjas2.png');
  final image31 = new AssetImage('imagenes/productos/naranjas3.png');
  final image32 = new AssetImage('imagenes/productos/papa1.png');
  final image33 = new AssetImage('imagenes/productos/papa2.png');
  final image34 = new AssetImage('imagenes/productos/pepinos1.png');
  final image35 = new AssetImage('imagenes/productos/pepinos2.png');
  final image36 = new AssetImage('imagenes/productos/pepinos3.png');
  final image37 = new AssetImage('imagenes/productos/pimiento2.png');
  final image38 = new AssetImage('imagenes/productos/pimientos1.png');
  final image39 = new AssetImage('imagenes/productos/pimientos3.png');
  final image40 = new AssetImage('imagenes/productos/platanos1.png');
  final image41 = new AssetImage('imagenes/productos/platanos2.png');
  final image42 = new AssetImage('imagenes/productos/platanos3.png');
  final image43 = new AssetImage('imagenes/productos/platanos4.png');
  final image44 = new AssetImage('imagenes/productos/tomate1.png');
  final image45 = new AssetImage('imagenes/productos/tomate2.png');
  final image46 = new AssetImage('imagenes/productos/zanahoria1.png');
  final image47 = new AssetImage('imagenes/productos/zanahoria2.png');
  final image48 = new AssetImage('imagenes/productos/zanahoria3.png');

  Widget items() {

    final precio1 = "10";
    final precio2 = "30";

    final item1 = Container(
        decoration: new BoxDecoration(
            color: Colors.white70,
            borderRadius: new BorderRadius.all(
              Radius.circular(8.0),
            ),
            boxShadow: <BoxShadow>[
              new BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: new Offset(0.0, 10.0))
            ]),
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
        ));

    final item2 = Container(
        decoration: new BoxDecoration(
            color: Colors.white70,
            borderRadius: new BorderRadius.all(
              Radius.circular(8.0),
            ),
            boxShadow: <BoxShadow>[
              new BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10.0,
                  offset: new Offset(0.0, 10.0))
            ]),
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
        ));

    return Container(
      height: 220,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          InkWell(
            child: item1,
            onTap: () {
              print("item1");
            },
          ),
          InkWell(
            child: item2,
            onTap: () {
              print("item2");
            },
          ),
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
        decoration: BoxDecoration(color: Colors.green, boxShadow: <BoxShadow>[
          new BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: new Offset(0.0, 10.0))
        ])
    );

    return Scaffold(
        body: Container(
      height: double.maxFinite,
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
                searchBar,
                SizedBox(
                  height: 15,
                ),
                Text(
                  "PRODUCTOS",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 5,
                ),
          Flexible(
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                items(),
                items(),
                items(),
                items(),
                items(),
                items(),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Cart()),
                    );
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
