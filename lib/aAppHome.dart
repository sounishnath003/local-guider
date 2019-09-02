import 'package:flutter/material.dart';
import 'package:kolkata_guide/AppBody.dart';
import 'package:kolkata_guide/TouristsSpots/TouristsSpotsDB.dart';

final List<TouristsSpots> touristsCard = touristsSpots;

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
        drawer: Drawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _floatingActionButton(context),
        bottomNavigationBar: _bottomAppBar());
  }
}

Widget _floatingActionButton(BuildContext context) {
  return FloatingActionButton(
    onPressed: () {
      Future.delayed(const Duration(milliseconds: 30), () {
      showSearch(context: context, delegate: DataSearch());
      });
    },
    child: Icon(
      Icons.search,
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

Widget _iconBottomBar(Icon icon, double size) {
  return IconButton(
    onPressed: () {},
    icon: icon,
    iconSize: size,
  );
}

class DataSearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {},
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      onPressed: () {
        query = "";
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.arrow_menu,
        progress: transitionAnimation,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return null ;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions

    final List<TouristsSpots> suggestionLists = query.isEmpty
        ? []
        : touristsCard.where((p) => p.name.startsWith(query)).toList();

    return ListView.builder(
        itemCount: suggestionLists.length,
        itemBuilder: (context, index) => ListTile(
          onTap: (){
            showResults(context);
          },
              leading: Icon(Icons.location_city),
              title: RichText(
                text: TextSpan(
                  text: suggestionLists[index].name.substring(0, query.length),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),
                  children: [
                    TextSpan(
                      text: suggestionLists[index].name.substring(query.length),
                      style: TextStyle(color: Colors.grey)
                      )
                  ]
                  ),
              ),
              subtitle: Text(suggestionLists[index].famousFor),
            ));
  }
}
