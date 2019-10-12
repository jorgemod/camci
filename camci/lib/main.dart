import 'package:flutter/material.dart';
import 'package:camci/autenticacion/singup.dart';
import 'package:camci/main/principal.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Singup(),
      routes: {
        "/principal": (_) => new Principal(),
      },
    );
  }
}