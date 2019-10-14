import 'package:flutter/material.dart';
import 'cart.dart';

class Principal extends StatelessWidget {
  var precios = [
    "\$45",
    "aguacate\n\$40",
    "aguacate\n\$47",
    "aguacate\n\$46",
    "durazno\n\$40",
    "durazno\n\$35",
    "durazno\n\$45",
    "durazno\n\$44",
    "durazno\n\$44.5",
    "fresa\n\$90",
    "fresa\n\$85",
    "fresa\n\$80",
    "fresa\n\$95",
    "fresa\n\$88",
    "jitomate\n\$12",
    "jitomate\n\$15",
    "lechuga\n\$15",
    "lechuga\n\$13",
    "lechuga\n\$18",
    "lechuga\n\$18",
    "limon\n\$20",
    "limon\n\$15",
    "limon\n\$18",
    "limon\n\$14",
    "manzana\n\$40",
    "manzana\n\$45",
    "manzana\n\$30",
    "manzana\n\$38",
    "naranjas\n\$10",
    "naranjas\n\$12",
    "naranjas\n\$15",
    "papa\n\$15",
    "papa\n\$10",
    "pepino\n\$15",
    "pepino\n\$18",
    "pepino\n\$20",
    "pimiento\n\$45",
    "pimiento\n\$40",
    "pimiento\n\$43",
    "platanos\n\$12",
    "platanos\n\$15",
    "platanos\n\$17",
    "platanos\n\$16",
    "tomate\n\$9",
    "tomate\n\$10",
    "zanahorias\n\$10",
    "zanahorias\n\$12",
    "zanahorias\n\$15",
    "zanahorias\n\$13",





  ];

  var imagenes = [
    AssetImage('imagenes/productos/aguacate1.png'),
    AssetImage('imagenes/productos/aguacate2.png'),
    AssetImage('imagenes/productos/aguacate3.png'),
    AssetImage('imagenes/productos/aguacate4.png'),
    AssetImage('imagenes/productos/durazno1.png'),
    AssetImage('imagenes/productos/durazno2.png'),
    AssetImage('imagenes/productos/durazno3.png'),
    AssetImage('imagenes/productos/durazno4.png'),
    AssetImage('imagenes/productos/durazno5.png'),
    AssetImage('imagenes/productos/fresas1.png'),
    AssetImage('imagenes/productos/fresas2.png'),
    AssetImage('imagenes/productos/fresas3.png'),
    AssetImage('imagenes/productos/fresas4.png'),
    AssetImage('imagenes/productos/fresas5.png'),
    AssetImage('imagenes/productos/jitomate1.png'),
    AssetImage('imagenes/productos/jitomate2.png'),
    AssetImage('imagenes/productos/lechuga1.png'),
    AssetImage('imagenes/productos/lechuga2.png'),
    AssetImage('imagenes/productos/lechuga3.png'),
    AssetImage('imagenes/productos/lechuga4.png'),
    AssetImage('imagenes/productos/limon1.png'),
    AssetImage('imagenes/productos/limon3.png'),
    AssetImage('imagenes/productos/limon4.png'),
    AssetImage('imagenes/productos/limon5.png'),
    AssetImage('imagenes/productos/manzana1.png'),
    AssetImage('imagenes/productos/manzana2.png'),
    AssetImage('imagenes/productos/manzana3.png'),
    AssetImage('imagenes/productos/manzana4.png'),
    AssetImage('imagenes/productos/naranjas1.png'),
    AssetImage('imagenes/productos/naranjas2.png'),
    AssetImage('imagenes/productos/naranjas3.png'),
    AssetImage('imagenes/productos/papa1.png'),
    AssetImage('imagenes/productos/papa2.png'),
    AssetImage('imagenes/productos/pepinos1.png'),
    AssetImage('imagenes/productos/pepinos2.png'),
    AssetImage('imagenes/productos/pepinos3.png'),
    AssetImage('imagenes/productos/pimiento2.png'),
    AssetImage('imagenes/productos/pimientos1.png'),
    AssetImage('imagenes/productos/pimientos3.png'),
    AssetImage('imagenes/productos/platanos1.png'),
    AssetImage('imagenes/productos/platanos2.png'),
    AssetImage('imagenes/productos/platanos3.png'),
    AssetImage('imagenes/productos/platanos4.png'),
    AssetImage('imagenes/productos/tomate1.png'),
    AssetImage('imagenes/productos/tomate2.png'),
    AssetImage('imagenes/productos/zanahoria1.png'),
    AssetImage('imagenes/productos/zanahoria2.png'),
    AssetImage('imagenes/productos/zanahoria3.png'),
  ];



  Widget itemsList() {
    items(image1, image2),

  }












  Widget items(AssetImage img1, AssetImage img2) {
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
              child: Image(image: img1),
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
              child: Image(image: img2),
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
        ]));

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
                  child: Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
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
