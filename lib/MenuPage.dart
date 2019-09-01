import 'package:flutter/material.dart';
import 'package:kolkata_guide/TouristsSpots/TouristsSpotsDB.dart';

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

    List<TouristsSpots> touristSpots = touristsSpots;


    return Container(
      child: Card(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: touristSpots.length, 
          itemBuilder: (BuildContext context, int index) {
            return  Wrap(
              direction: Axis.horizontal,
              alignment: WrapAlignment.spaceAround,
              spacing: 2.0,
              children: <Widget>[
                Container(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: <Widget>[
                          Text(touristSpots[index].name)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            );
          }
        ),
      ),
    );
  }
}
