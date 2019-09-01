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
            Icon(
              Icons.account_circle,
              size: 30,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: AppBody(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _floatingActionButton(),
        bottomNavigationBar: _bottomAppBar());
  }
}

Widget _floatingActionButton() {
  return FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
    backgroundColor: Colors.black,
    // elevation: 0.0,
  );
}

Widget _bottomAppBar() {
  return BottomAppBar(
    shape: CircularNotchedRectangle(),
    notchMargin: 4.0,
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _iconBottomBar(Icon(Icons.menu), 25),
        _iconBottomBar(Icon(Icons.search), 25)
      ],
    ),
  );
}

Widget _iconBottomBar(Icon icon, double size){
  return IconButton(
    onPressed: (){}, 
    icon: icon,
    iconSize: size,
  );
}