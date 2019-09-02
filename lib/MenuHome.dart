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
  final TouristsSpots touristObject;

  MenuHomeBody({Key key, this.touristObject}) : super(key: key);

  _MenuHomeBodyState createState() => _MenuHomeBodyState(touristObject);
}

class _MenuHomeBodyState extends State<MenuHomeBody> {
  TouristsSpots touristObject;
  _MenuHomeBodyState(this.touristObject);

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
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.white30
                      )
                    ],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Image.asset(touristObject.imagePath)),
                  )
                ),
              ),


            SizedBox(height: 40,),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Text(touristObject.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                  ),

                SizedBox(height: 10,),

                Text.rich(
                  TextSpan(
                    text: "",
                    children: <TextSpan> [
                      TextSpan(text: touristObject.desc,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                        letterSpacing: 1,

                      )
                      )
                    ]
                  )
                )

                ],
              ),
            )




            ],
          ),
        ),
      ],
    );
  }
}

/*




*/
