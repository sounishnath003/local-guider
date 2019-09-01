import 'package:flutter/material.dart';

class TouristsSpots {
  final String name;
  final Text desc;
  final String imagePath;
  final String address;

  TouristsSpots(this.name, this.desc, this.imagePath, this.address);
}

List<TouristsSpots> touristsSpots = [
  
  TouristsSpots("Birla Planatorium", 
  Text("Nice Place for family"), 
  "Assets/Images/devFest.png", 
  "Mid Kolkata, 700-124"
  ),

  TouristsSpots("Victoria Memorial", 
  Text("Nice Place for family"), 
  "Assets/Images/devFest.png", 
  "Mid Kolkata, 700-124"
  ),

  TouristsSpots("Sovabazar Memorial", 
  Text("Nice Place for family"), 
  "Assets/Images/devFest.png", 
  "Mid Kolkata, 700-124"
  )

];


