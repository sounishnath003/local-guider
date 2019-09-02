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
              color: Colors.redAccent,
              size: 34,
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
    child: Icon(Icons.search,
    size: 32,
    ),
    backgroundColor: Colors.redAccent,
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
        _iconBottomBar(Icon(Icons.menu), 32),
        _iconBottomBar(Icon(Icons.search), 32)
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



class DataSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return null;
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return null;
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return null;
  }

}