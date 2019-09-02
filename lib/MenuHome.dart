import 'package:flutter/material.dart';
import 'package:kolkata_guide/TouristsSpots/TouristsSpotsDB.dart';

class MenuHome extends StatefulWidget {
  final TouristsSpots touristObject;

  MenuHome({Key key, this.touristObject}) : super(key: key);

  _MenuHomeState createState() => _MenuHomeState(touristObject);
}

class _MenuHomeState extends State<MenuHome> {
  TouristsSpots touristObject;
  _MenuHomeState(this.touristObject);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MenuHomeBody(
        touristObject: touristObject,
      ),
    );
  }
}

class MenuHomeBody extends StatefulWidget {
  final double _expandedBottomSheetBottomPosition = 0;
  final double _collapsableBottomSheetBottomPosition = -250;
  final double _completeBottomSheetBottomPosition = -330;

  final TouristsSpots touristObject;

  MenuHomeBody({Key key, this.touristObject}) : super(key: key);

  _MenuHomeBodyState createState() => _MenuHomeBodyState(touristObject);
}

class _MenuHomeBodyState extends State<MenuHomeBody> {
  
  double _bottomSheetBottomPosition = 0;
  bool isCollasped = false;

  TouristsSpots touristObject;
  _MenuHomeBodyState(this.touristObject);

  final List<TouristsSpots> touristListCards = touristsSpots;

  Widget decoratedBox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                size: 30,
              ),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            SizedBox(
              width: 24,
            ),
          ],
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Center(
                child: Text(
              touristObject.name,
              style: TextStyle(fontSize: 20),
            ))
          ],
        ),
      ],
    );
  }

  Widget touristTextDetails() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            Text(
              touristObject.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text.rich(TextSpan(text: "", children: <TextSpan>[
              TextSpan(
                  text: touristObject.desc,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    // letterSpacing: 1,
                  ))
            ]))
          ],
        ),
      ),
    );
  }

  Widget bottomScrollGoogle() {
    return AnimatedPositioned(
        duration: const Duration(milliseconds: 500),
        curve: Curves.decelerate,
        bottom: widget._collapsableBottomSheetBottomPosition,
        right: 0,
        left: 0,
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  height: 60,
                  child: Text(
                    touristObject.name,
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: _clipsWidget(),
                )
              ],
            )));
  }

  Widget roundedContainer(Color color) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
  }

  Widget _clipsWidget() {
    return Container(
      height: 250,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              roundedContainer(Colors.redAccent),
              SizedBox(height: 20),
              roundedContainer(Colors.greenAccent),
            ],
          ),
          SizedBox(width: 16),
          Column(
            children: <Widget>[
              roundedContainer(Colors.orangeAccent),
              SizedBox(height: 20),
              roundedContainer(Colors.purple),
            ],
          ),
          SizedBox(width: 16),
          Column(
            children: <Widget>[
              roundedContainer(Colors.grey),
              SizedBox(height: 20),
              roundedContainer(Colors.blueGrey),
            ],
          ),
          SizedBox(width: 16),
          Column(
            children: <Widget>[
              roundedContainer(Colors.lightGreenAccent),
              SizedBox(height: 20),
              roundedContainer(Colors.pinkAccent),
            ],
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Hero(
          tag: touristObject.imagePath,
          child: DecoratedBox(
              decoration: BoxDecoration(color: touristObject.color),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
              )),
        ),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              decoratedBox(),
              SizedBox(
                height: 45,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        boxShadow: [new BoxShadow(color: Colors.white30)],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Image.asset(touristObject.imagePath)),
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              touristTextDetails(),
            ],
          ),
        ),
        bottomScrollGoogle()
      ],
    );
  }
}

/*




*/
