import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  final String appbarText;

  const MenuPage({Key key, this.appbarText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$appbarText"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: MenuPageBody(),
    );
  }
}

class MenuPageBody extends StatefulWidget {
  MenuPageBody({Key key}) : super(key: key);

  _MenuPageBodyState createState() => _MenuPageBodyState();
}

class _MenuPageBodyState extends State<MenuPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Text("appbarText"),
      ),
    );
  }
}
