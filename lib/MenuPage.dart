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
    List<TouristsSpots> touristSpots = touristsSpots;

    return Material(
      child: Column(
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
                title: Text("Tourists Spots", 
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22
                ),
                ),
                centerTitle: true,
                elevation: 0.0,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height*0.175,
                left: 60,
                child: Text.rich(
                  TextSpan(
                    text: "",
                    children: <TextSpan> [
                      TextSpan(text: "Kolkata \n",
                      style: TextStyle(
                        fontSize: 40,
                        // color: Colors.white70,
                        letterSpacing: 1
                        // color: Colors.white
                      )
                      ),
                      TextSpan(text: "City of Joy \n\n", 
                      style: TextStyle(
                        fontSize: 18,
                        // color: Colors.white
                        fontWeight: FontWeight.bold
                      )
                      )
                    ]
                  )                  
                )
                ),
            ],
          ),

        SizedBox(height: 10,),

        Center(
          child: Text("Sweetness of Rosogolla",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            letterSpacing: 1
          ),
          ),
        )

        ],
      ),
    );
  }
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
