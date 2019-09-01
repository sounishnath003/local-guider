import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kolkata_guide/TouristsSpots/TouristsSpotsDB.dart';

class MenuPage extends StatelessWidget {
  final String appbarText;

  const MenuPage({Key key, this.appbarText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("$appbarText"),
      //   centerTitle: true,
      //   elevation: 0.0,
      //   actions: <Widget>[
      //     Icon(
      //       Icons.account_circle,
      //       color: Colors.redAccent,
      //       size: 34,
      //     ),
      //     SizedBox(
      //       width: 10,
      //     )
      //   ],
      // ),
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
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.42,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Colors.redAccent,
                      Colors.red,
                    ]),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
              ),
              AppBar(
                backgroundColor: Colors.transparent,
                title: Text(
                  "Tourists Spots",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                centerTitle: true,
                elevation: 0.0,
              ),
              _positionBannerText(context),
            ],
          ),
          sizebox(10),
          Center(
            child: Text(
              "Sweetness of Rosogolla",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
          sizebox(15),
          Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Our story",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              )),
          sizebox(10),
          _touristsPlace(context)
        ],
      ),
    );
  }
}

Widget _touristsPlace(BuildContext context) {
  List<TouristsSpots> touristSpots = touristsSpots;

  return Expanded(
    flex: 1,
    child: Padding(
      padding: const EdgeInsets.only(left: 28.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: touristSpots.length,
        itemBuilder: (BuildContext context, int index) {
          return Wrap(
            direction: Axis.horizontal,
            children: <Widget>[
              new Card(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(touristSpots[index].imagePath),
                        )
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        },
      ),
    ),
  );
}

Widget sizebox(double height) {
  return SizedBox(height: height);
}

Widget _positionBannerText(BuildContext context) {
  return Positioned(
      top: MediaQuery.of(context).size.height * 0.175,
      left: 60,
      child: Text.rich(TextSpan(text: "", children: <TextSpan>[
        TextSpan(
            text: "Kolkata \n",
            style: TextStyle(fontSize: 40, letterSpacing: 2
                // color: Colors.white
                )),
        TextSpan(
            text: "City of Joy \n\n",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
      ])));
}

/*


Expanded(
                  flex: 1,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: touristSpots.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Wrap(
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
                            ),
                          ],
                        );
                      }),
                )

                */
