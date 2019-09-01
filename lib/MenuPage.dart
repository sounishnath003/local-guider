import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kolkata_guide/TouristsSpots/TouristsSpotsDB.dart';

class MenuPage extends StatelessWidget {
  final String appbarText;

  const MenuPage({Key key, this.appbarText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MenuPageBody(),
    );
  }
}

List<TouristsSpots> touristSpots = touristsSpots;

class MenuPageBody extends StatefulWidget {
  MenuPageBody({Key key}) : super(key: key);

  _MenuPageBodyState createState() => _MenuPageBodyState();
}

class _MenuPageBodyState extends State<MenuPageBody> {
  // List<TouristsSpots> touristSpots = touristsSpots;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
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
                "Tourists Spots",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              )),
          sizebox(10),
          _touristsPlace(context),
          sizebox(5),
          bottomScrollDetails(context)
        ],
      ),
    );
  }
}

Widget bottomScrollDetails(BuildContext context) {
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
      child: Container(
        
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Our story",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Align(
            alignment: Alignment.center,
            child: Text.rich(TextSpan(text: "", children: <TextSpan>[
              TextSpan(
                  text:
                      "Kolkata (formerly Calcutta) is the capital of India's West Bengal state. Founded as an East India Company trading post. \n",
                  style: TextStyle(fontSize: 17)),
            ])),
          ),
        ),

      Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
          itemCount: touristSpots.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 2.0),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Card(
                  color: touristSpots[index].color,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(touristSpots[index].name,
                      style: TextStyle(
                        fontSize: 16
                      ),),
                    ),
                  ),
                  ),
              ),
            );
          },
          ),
      ),

      // sizebox(50)
          
        ],
      ),
    ),
  );
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
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: new Card(
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      width: 220,
                      height: 140,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        colorFilter: ColorFilter.linearToSrgbGamma(),
                        fit: BoxFit.cover,
                        image: AssetImage(
                          touristSpots[index].imagePath,
                        ),
                      )),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Text(
                                touristSpots[index].name,
                                style: TextStyle(
                                    fontSize: 22,
                                    decorationColor: Colors.redAccent,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
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




Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Our story",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Align(
            alignment: Alignment.center,
            child: Text.rich(TextSpan(text: "", children: <TextSpan>[
              TextSpan(
                  text:
                      "Kolkata (formerly Calcutta) is the capital of India's West Bengal state. Founded as an East India Company trading post, it was India's capital under the British Raj from 1773–1911 \n\n",
                  style: TextStyle(fontSize: 17)),
              TextSpan(
                  text: "History\n\n",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
              TextSpan(
                  text:
                      "Today it’s known for its grand colonial architecture, art galleries and cultural festivals. \n",
                  style: TextStyle(fontSize: 17))
            ])),
          ),
        ),




*/
