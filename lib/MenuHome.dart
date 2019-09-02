import 'package:after_layout/after_layout.dart';
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

class _MenuHomeBodyState extends State<MenuHomeBody>
    with AfterLayoutMixin<MenuHomeBody> {
  double _bottomSheetBottomPosition = -330;
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
                Future.delayed(const Duration(milliseconds: 250), () {
                  setState(() {
                    _bottomSheetBottomPosition =
                        widget._completeBottomSheetBottomPosition;
                    Navigator.pop(context);
                  });
                });
              },
              icon: Icon(
                Icons.close,
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
              height: 40,
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
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  // color: Colors.white
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    touristObject.desc,
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 1,
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  _onTap() {
    setState(() {
      _bottomSheetBottomPosition = isCollasped
          ? widget._expandedBottomSheetBottomPosition
          : widget._collapsableBottomSheetBottomPosition;
      isCollasped = !isCollasped;
    });
  }

  Widget bottomScrollGoogle() {
    return AnimatedPositioned(
        duration: const Duration(milliseconds: 500),
        curve: Curves.decelerate,
        bottom: _bottomSheetBottomPosition,
        right: 0,
        left: 0,
        child: InkWell(
          onTap: _onTap,
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
                      "More Details",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: _clipsWidget(),
                  )
                ],
              )),
        ));
  }

  Widget recentVisitedCards() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.14,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: touristListCards.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return MenuHome(touristObject: touristListCards[index]);
                    }));
                  });
                },
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage(touristListCards[index].imagePath),
                            colorFilter: ColorFilter.linearToSrgbGamma(),
                            fit: BoxFit.cover),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Text(
                                touristListCards[index].name,
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }

  Widget _clipsWidget() {
    return Container(
      height: 250,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 3.0),
                child: Text.rich(TextSpan(
                    text:
                        "** This is very famous place in kolkata, must visit.",
                    style: TextStyle(fontSize: 15))),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(children: [
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 15,
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Address: " + touristObject.address,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Card(
                          color: Colors.yellow,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              touristObject.famousFor,
                              style: TextStyle(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    // FlatButton(
                    //   onPressed: () {},
                    //   child: Text("Get Directions",
                    //   style: TextStyle(
                    //     fontSize: 18,
                    //     fontWeight: FontWeight.bold
                    //   ),
                    //   )
                    // ),

                    recentVisitedCards()

                    // Row(
                    //   children: <Widget>[

                    //   ],
                    // )
                  ])),
            ],
          ),

          // Column(
          //   children: <Widget>[
          //     roundedContainer(Colors.redAccent),
          //     SizedBox(height: 20),
          //     roundedContainer(Colors.greenAccent),
          //   ],
          // ),
          // SizedBox(width: 16),
          // Column(
          //   children: <Widget>[
          //     roundedContainer(Colors.orangeAccent),
          //     SizedBox(height: 20),
          //     roundedContainer(Colors.purple),
          //   ],
          // ),
          // SizedBox(width: 16),
          // Column(
          //   children: <Widget>[
          //     roundedContainer(Colors.grey),
          //     SizedBox(height: 20),
          //     roundedContainer(Colors.blueGrey),
          //   ],
          // ),
          // SizedBox(width: 16),
          // Column(
          //   children: <Widget>[
          //     roundedContainer(Colors.lightGreenAccent),
          //     SizedBox(height: 20),
          //     roundedContainer(Colors.pinkAccent),
          //   ],
          // ),
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

  @override
  void afterFirstLayout(BuildContext context) {
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        isCollasped = true;
        _bottomSheetBottomPosition =
            widget._collapsableBottomSheetBottomPosition;
      });
    });
  }
}

/*




*/
