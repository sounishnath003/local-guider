import 'package:flutter/material.dart';
import 'package:kolkata_guide/TouristsSpots/TouristsSpotsDB.dart';

class MenuHome extends StatefulWidget {

  final TouristsSpots touristObject ;

  MenuHome({Key key, this.touristObject}) : super(key: key);

  _MenuHomeState createState() => _MenuHomeState(touristObject);
}

class _MenuHomeState extends State<MenuHome> {

  TouristsSpots touristObject ;
  _MenuHomeState(this.touristObject);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          title: new Text(touristObject.name),
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
        body: MenuHomeBody(touristObject: touristObject,),
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
    return Container(
       child: Center(
         child: Image.asset(touristObject.imagePath),
       ),
    );
  }
}