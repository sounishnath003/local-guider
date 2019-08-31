import 'package:flutter/material.dart';
import 'package:kolkata_guide/AppBody.dart';

class AppHome extends StatelessWidget {
  const AppHome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text(" Kolkata Guide "),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          Icon(Icons.account_circle, size: 30,),
          SizedBox(width: 10,)
        ],
      ),
      body: AppBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
    );
  }
}