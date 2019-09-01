import 'package:flutter/material.dart';

class TouristsSpots {
  final String name;
  final Text desc;
  final String imagePath;
  final String address;
  final Color color;

  TouristsSpots(this.name, this.desc, this.imagePath, this.address, this.color);
}

List<TouristsSpots> touristsSpots = [
  
  TouristsSpots("Birla Planatorium", 
  Text("Nice Place for family"), 
  "Assets/Images/birla.gif", 
  "Mid Kolkata, 700-124",
  Color(0xFFE040FB)
  ),

  TouristsSpots("Victoria Memorial", 
  Text("Nice Place for family"), 
  "Assets/Images/victoria.jpg", 
  "Mid Kolkata, 700-124",
  Color(0XFF651FFF)
  ),

  TouristsSpots("Sovabazar Memorial", 
  Text("Nice Place for family"), 
  "Assets/Images/devFest.png", 
  "Mid Kolkata, 700-124",
  Color(0XFF26C6DA)
  )

];


