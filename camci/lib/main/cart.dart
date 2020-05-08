import 'package:flutter/material.dart';
import 'pasarela.dart';
import 'package:flare_flutter/flare_actor.dart';

class Cart extends StatelessWidget {

  var seleccionados = [];
  var suma  = 0.0;

  Cart(this.seleccionados);

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
          Text("Shopping Cart is Empty")
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
              child: Text("Pay", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white), ),
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
          title: new Text("Total price:"),
          content: new Text("\$"+ suma.toString()),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Pay", style: TextStyle(fontSize: 18),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Pago()),
                );
                seleccionados = [];
              },
            ),
            new FlatButton(
              child: new Text("cancel", style: TextStyle(fontSize: 18),),
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
          title: Text("YOUR BAG"),
        ),
        body: lleno(context),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text("paid out"),
        ),
        body: vacio(),
      );
    }
  }
}
