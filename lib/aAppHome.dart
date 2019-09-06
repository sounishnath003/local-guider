import 'package:flutter/material.dart';
import 'package:kolkata_guide/AppBody.dart';
import 'package:kolkata_guide/MenuHome.dart';
import 'package:kolkata_guide/MenuPage.dart';
import 'package:kolkata_guide/TouristsSpots/TouristsSpotsDB.dart';
import 'package:kolkata_guide/UNknownFacts.dart';
import 'package:kolkata_guide/UnknownFacts/UnknownFacts.dart';
import 'package:kolkata_guide/main.dart' as prefix0;

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
        drawer: Drawer(
          child: DrawerHeader(
            child: ListView(children: [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(),
                  accountEmail: Text("flock.sinasini@gmail.com"),
                  accountName: Text("Sounish Nath"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("Assets/Images/0.webp"),
                  )),
              Column(
                children: <Widget>[
                  new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MenuPage()));
                        },
                        title: Text(
                          "Tourists Spot",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MenuPage()));
                        },
                        title: Text(
                          "Police Contact",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      ListTile(
                        onTap: () {
                         return showDetails(context, 
                         "Developer Details", 
                         "This app was made with love by Sounish Nath 😍, buy me a coffee ☕");
                        },
                        title: Text(
                          "Developer",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ]),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: _floatingActionButton(context),
        bottomNavigationBar: _bottomAppBar(context));
  }

  Future<Widget> showDetails(BuildContext context, String textTitle, String desc) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(textTitle),
            content: Text(desc),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("More Details"),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back"),
              ),
            ],
          );
        });
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

Widget _bottomAppBar(BuildContext context) {
  return BottomAppBar(
    shape: CircularNotchedRectangle(),
    notchMargin: 4.0,
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _iconBottomBar(Icon(Icons.menu), 32, context),
        _iconBottomBar(Icon(Icons.place), 32, context)
      ],
    ),
  );
}

unknownFacts(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return UNknownFacts();
    }
  ));
}


Widget _iconBottomBar(Icon icon, double size, BuildContext context) {
  return IconButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return UNknownFacts();
    }
  ));
    },
    icon: icon,
    iconSize: size,
  );
}

class DataSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.arrow_menu,
        progress: transitionAnimation,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return InkWell(
      onTap: () {
        Future.delayed(const Duration(milliseconds: 35), () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return MenuHome(
              touristObject: touristsCard[0],
            );
          }));
        });
      },
      child: Card(
        child: Stack(
          children: <Widget>[Text("")],
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionLists = query.isEmpty
        ? touristsCard
        : touristsCard.where((p) => p.name.startsWith(query)).toList();

    return ListView.builder(
        itemCount: suggestionLists.length,
        itemBuilder: (context, index) => ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return MenuHome(
                    touristObject: suggestionLists[index],
                  );
                }));
              },
              leading: Icon(Icons.location_city),
              title: RichText(
                text: TextSpan(
                    text:
                        suggestionLists[index].name.substring(0, query.length),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: [
                      TextSpan(
                          text: suggestionLists[index]
                              .name
                              .substring(query.length),
                          style: TextStyle(color: Colors.grey))
                    ]),
              ),
              subtitle: Text(suggestionLists[index].famousFor),
            ));
  }
}
