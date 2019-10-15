import 'package:flutter/material.dart';
import 'cart.dart';

class Principal extends StatelessWidget {
  var seleccionados = [];

  var precios = [
    "aguacate\nCalidad alta\n\$45",
    "aguacate\nCalidad media\n\$40",
    "aguacate\nCalidad normal\n\$47",
    "aguacate\nCalidad alta\n\$46",
    "durazno\nCalidad normal\n\$40",
    "durazno\nCalidad alta\n\$35",
    "durazno\nCalidad media\n\$45",
    "durazno\nCalidad media\n\$44",
    "durazno\nCalidad alta\n\$44.5",
    "fresa\nCalidad alta\n\$90",
    "fresa\nCalidad media\n\$85",
    "fresa\nCalidad media\n\$80",
    "fresa\nCalidad alta\n\$95",
    "fresa\nCalidad alta\n\$88",
    "jitomate\nCalidad media\n\$12",
    "jitomate\nCalidad normal\n\$15",
    "lechuga\nCalidad normal\n\$15",
    "lechuga\nCalidad alta\n\$13",
    "lechuga\nCalidad media\n\$18",
    "lechuga\nCalidad alta\n\$18",
    "limon\nCalidad normal\n\$20",
    "limon\nCalidad normal\n\$15",
    "limon\nCalidad alta\n\$18",
    "limon\nCalidad media\n\$14",
    "manzana\nCalidad alta\n\$40",
    "manzana\nCalidad normal\n\$45",
    "manzana\nCalidad media\n\$30",
    "manzana\nCalidad alta\n\$38",
    "naranjas\nCalidad media\n\$10",
    "naranjas\nCalidad normal\n\$12",
    "naranjas\nCalidad media\n\$15",
    "papa\nCalidad alta\n\$15",
    "papa\nCalidad alta\n\$10",
    "pepino\nCalidad media\n\$15",
    "pepino\nCalidad normal\n\$18",
    "pepino\nCalidad alta\n\$20",
    "pimiento\nCalidad alta\n\$45",
    "pimiento\nCalidad media\n\$40",
    "pimiento\nCalidad normal\n\$43",
    "platanos\nCalidad alta\n\$12",
    "platanos\nCalidad alta\n\$15",
    "platanos\nCalidad media\n\$17",
    "platanos\nCalidad normal\n\$16",
    "tomate\nCalidad alta\n\$9",
    "tomate\nCalidad media\n\$10",
    "zanahorias\nCalidad normal\n\$10",
    "zanahorias\nCalidad alta\n\$12",
    "zanahorias\nCalidad media\n\$15",
    "zanahorias\nCalidad normal\n\$13",
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

    for (var j = 0; j < imagenes.length; j += 2) {
      i.add(items(imagenes[j], precios[j], imagenes[j + 1], precios[j + 1], j));
    }
    return i;
  }

  Widget items(
      AssetImage img1, String pr1, AssetImage img2, String pr2, int index) {
    final item1 = InkWell(
      child: Container(
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
          height: 215,
          width: 170,
          child: Column(
            children: <Widget>[
              Container(
                height: 140,
                child: Image(image: img1),
              ),
              Text(
                pr1,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          )),
      onTap: () {
        seleccionados.add(index);
        print(index);
      },
    );
    final item2 = InkWell(
      child: Container(
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
          height: 215,
          width: 170,
          child: Column(
            children: <Widget>[
              Container(
                height: 140,
                child: Image(image: img2),
              ),
              Text(
                pr2,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          )),
      onTap: () {
        seleccionados.add(index + 1);

        print(index + 1);
      },
    );

    return Container(
      height: 230,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          item1,
          item2,
        ],
      ),
    );
  }

  Future sleep1() {
    return new Future.delayed(const Duration(seconds: 1), () {
      return "1";
    });
  }

  void _showDialog(BuildContext context) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("No hay articulos en el carrito"),
          content: new Text(";("),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text(
                "Aceptar",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.of(context).pop();
//               Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
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
                    var res = seleccionados;
                    if (res.isEmpty) {
                      _showDialog(context);
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cart(res)),
                      );
                      seleccionados = [];
                    }
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
