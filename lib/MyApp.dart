import 'package:flutter/material.dart';
import 'package:kolkata_guide/aAppHome.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kolkata Guider',
      theme: ThemeData(
        canvasColor: Colors.white,
        primaryColor: Colors.white,
        primaryIconTheme: IconThemeData(color: Colors.black),
        fontFamily: "Product"
      ),
      home: AppHome(),
    );
  }
}
