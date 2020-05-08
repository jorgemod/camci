import 'package:flutter/material.dart';
import 'cart.dart';

class Principal extends StatelessWidget {
  var seleccionados = [];

  var precios = [
    "avocado\nHigh quality\n\$45",
    "avocado\nmedium quality\n\$40",
    "avocado\nStandard quality\n\$47",
    "avocado\nHigh quality\n\$46",
    "peach\nStandard quality\n\$40",
    "peach\nHigh quality\n\$35",
    "peach\nmedium quality\n\$45",
    "peach\nmedium quality\n\$44",
    "peach\nHigh quality\n\$44.5",
    "Strawberry\nHigh quality\n\$90",
    "Strawberry\nmedium quality\n\$85",
    "Strawberry\nmedium quality\n\$80",
    "Strawberry\nHigh quality\n\$95",
    "Strawberry\nHigh quality\n\$88",
    "tomato\nmedium quality\n\$12",
    "tomato\nStandard quality\n\$15",
    "lettuce\nStandard quality\n\$15",
    "lettuce\nHigh quality\n\$13",
    "lettuce\nmedium quality\n\$18",
    "lettuce\nHigh quality\n\$18",
    "lemon\nStandard quality\n\$20",
    "lemon\nStandard quality\n\$15",
    "lemon\nHigh quality\n\$18",
    "lemon\nmedium quality\n\$14",
    "Apple\nHigh quality\n\$40",
    "Apple\nStandard quality\n\$45",
    "Apple\nmedium quality\n\$30",
    "Apple\nHigh quality\n\$38",
    "orange\nmedium quality\n\$10",
    "orange\nStandard quality\n\$12",
    "orange\nmedium quality\n\$15",
    "potato\nHigh quality\n\$15",
    "potato\nHigh quality\n\$10",
    "cucumber\nmedium quality\n\$15",
    "cucumber\nStandard quality\n\$18",
    "cucumber\nHigh quality\n\$20",
    "pepper\nHigh quality\n\$45",
    "pepper\nmedium quality\n\$40",
    "pepper\nStandard quality\n\$43",
    "bananas\nHigh quality\n\$12",
    "bananas\nHigh quality\n\$15",
    "bananas\nmedium quality\n\$17",
    "bananas\nStandard quality\n\$16",
    "green tomato\nHigh quality\n\$9",
    "green tomato\nmedium quality\n\$10",
    "carrot\nStandard quality\n\$10",
    "carrot\nHigh quality\n\$12",
    "carrot\nmedium quality\n\$15",
    "carrot\nStandard quality\n\$13",
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
          title: new Text("YOUR BAG IS EMPTY"),
          content: new Text(":("),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text(
                "Accept",
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
              Text("Search"),
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
            "ALL PRODUCTS",
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
