import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  Widget items() {

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
      height: 170,
      width: 180,
    );

    return Container(
      height: 190,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            item1,
            item1
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
            Text("No presionar );"),
          ],
        ),
        margin: EdgeInsets.only(top: 55, bottom: 15, left: 15, right: 15),
        padding: EdgeInsets.only(left: 10, right: 10),
        color: Colors.white,
      ),
      color: Colors.yellow,
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
                Text("lorem ipsum dolor"),
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
                    print("tapped");
                  },
                ),
                InkWell(
                  child: Icon(Icons.shopping_cart),
                  onTap: () {
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
