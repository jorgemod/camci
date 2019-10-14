import 'package:flutter/material.dart';
import 'cart.dart';

class Principal extends StatelessWidget {
  var precios = [
    "\$45",
    "\$40",
    "\$47",
    "\$46",
    "\$40",
    "\$35",
    "\$45",
    "\$44",
    "\$44.5",
    "\$90",
    "\$85",
    "\$80",
    "\$95",
    "\$88",
    "\$12",
    "\$15",
    "\$15",
    "\$13",
    "\$18",
    "\$18",
    "\$20",
    "\$15",
    "\$18",
    "\$14",
    "\$40",
    "\$45",
    "\$30",
    "\$38",
    "\$10",
    "\$12",
    "\$15",
    "\$15",
    "\$10",
    "\$15",
    "\$18",
    "\$20",
    "\$45",
    "\$40",
    "\$43",
    "\$12",
    "\$15",
    "\$17",
    "\$16",
    "\$9",
    "\$10",
    "\$10",
    "\$12",
    "\$15",
    "\$13",





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
    AssetImage('imagenes/productos/pimientos3.jpg'),
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



  List<Widget> itemsList() {
    List<Widget> i = [];

    for (var j = 0; j < imagenes.length; j+=2) {
      i.add(items(imagenes[j], imagenes[j+1]));
    }
    return i;

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
              children: itemsList(),
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
