import 'package:flutter/material.dart';
import 'pasarela.dart';

class Cart extends StatelessWidget {

  var precios = [
    "aguacate\n\$45",
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


  var empty = false;

  final image1 = new AssetImage('imagenes/productos/aguacate1.png');

  var seleccionados = [];

  Cart(this.seleccionados);

  Widget item(AssetImage image, String price) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image(image: image),
            Text(
              price,
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

  List<Widget> productos() {
    List<Widget> s = [];
    for (final p in seleccionados){
      s.add(item(imagenes[p], precios[p]));
    }
    return s;
  }

  Widget lleno(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: productos()
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
                seleccionados = [];
              },
            ),
            new FlatButton(
              child: new Text("Cancelar", style: TextStyle(fontSize: 20),),
              onPressed: () {
                print(seleccionados);
                seleccionados = [];
//                Navigator.of(context).pop();
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
