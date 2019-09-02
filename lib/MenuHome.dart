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
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Hero(
          tag: touristObject.imagePath,
          child: DecoratedBox(
              decoration: BoxDecoration(
                color: touristObject.color
                ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
              )),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(height: 40,),
            IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, size: 30,),
            ),
              ],
            ),

            Column(
              children: <Widget>[
                SizedBox(width: 24,),
              ],
            ),

            Column(
              children: <Widget>[
                SizedBox(height: 50,),
                Center(child: Text(touristObject.name,
                style: TextStyle(
                  fontSize: 20
                ),
                )
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
