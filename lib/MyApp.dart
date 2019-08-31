import 'package:flutter/material.dart';
import 'package:kolkata_guide/AppBody.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kolkata Guider',
      theme: ThemeData(
        primaryColor: Colors.white,
        primaryIconTheme: IconThemeData(color: Colors.black),
        fontFamily: "Product"
      ),
      home: MyAppHome(),
    );
  }
}

class MyAppHome extends StatelessWidget {
  const MyAppHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Kolkata Guider"),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.toys,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        clipBehavior: Clip.antiAlias,
        child: Icon(Icons.add),
        onPressed: () {},
        ),
      body: AppBody(),
    );
  }
}
