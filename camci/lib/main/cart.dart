import 'package:flutter/material.dart';
import 'pasarela.dart';
import 'package:flare_flutter/flare_actor.dart';

class Cart extends StatelessWidget {

  var seleccionados = [];
  var suma  = 0.0;

  Cart(this.seleccionados);

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


  final image1 = new AssetImage('imagenes/productos/aguacate1.png');



  Widget item(AssetImage image, String price) {
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
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

  Widget total(){
    for (final x in seleccionados){
      var split = precios[x].split('\$');
      suma += double.parse(split[1]);
    }
    return Container(
      height: 20,
      child: Center(
        child: Text("Total \$" + suma.toString(), style: TextStyle(fontSize: 20),),
      ),
    );
  }

  Widget vacio() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          succes()
        ],
      ),
      height: double.maxFinite,
      width: double.maxFinite,
    );
  }

  Widget em() {
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

  List<Widget> productos() {
    List<Widget> s = [];
    for (final p in seleccionados){
      s.add(item(imagenes[p], precios[p]));
    }
    s.add(total());
    return s;
  }

  Widget lleno(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          child: ListView(
            padding: EdgeInsets.only(top: 20),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: productos()
          ),
        ),
        InkWell(
          child: Container(
            color: Colors.green,
            height: 80,
            padding: EdgeInsets.only(bottom: 20),
            child: Center(
              child: Text("Pagar", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white), ),
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
          title: new Text("Total a pagar:"),
          content: new Text("\$"+ suma.toString()),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Pagar", style: TextStyle(fontSize: 18),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pago()),
                );
                seleccionados = [];
              },
            ),
            new FlatButton(
              child: new Text("Cancelar", style: TextStyle(fontSize: 18),),
              onPressed: () {
                seleccionados = [];
//                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget succes() {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        child: new FlareActor("anim/succes.flr",
            alignment: Alignment.center,
            fit: BoxFit.fill,
            animation: "Wait",

        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (seleccionados.isNotEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Carrito"),
        ),
        body: lleno(context),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text("Pagado"),
        ),
        body: vacio(),
      );
    }
  }
}
