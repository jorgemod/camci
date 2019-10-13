import 'package:flutter/material.dart';
import 'package:camci/autenticacion/singin.dart';
import 'package:camci/autenticacion/singup.dart';
import 'package:camci/autenticacion/principal.dart';
import 'package:camci/main/principal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camci',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.yellow,
      ),
      home: Principal(),
//      home: principal(),
      routes: {
        "/singin": (_) => new Signin(),
        "/singup": (_) => new Singup(),
        "/main": (_) => new Principal()
      },
    );
  }
}

