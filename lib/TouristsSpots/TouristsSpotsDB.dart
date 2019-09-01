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
  

  TouristsSpots("Victoria Memorial", 
  Text("Nice Place for family"), 
  "Assets/Images/victoria.jpg", 
  "Mid Kolkata, 700-124",
  Color(0XFF651FFF)
  ),


  TouristsSpots("Princep Ghat", 
  Text("Onek pukur ache"), 
  "Assets/Images/princep.jpg", 
  "Mid Kolkata, 700-124",
  Color(0XFFF57F17)
  ),

  TouristsSpots("Fort Williams", 
  Text("The mighty edifice of Fort William is situated in the city of Kolkata, on the eastern bank of the  Hooghly River. Built in the year 1696, the fort is named after King William III and was the first stronghold of the British in the country. The magnificent structure is spread over 70.9 acres and is embellished with hundreds of arched windows that overlook lush green gardens. Meticulous stonework adorns the surface of the building and it took as long as took ten years to reach completion"), 
  "Assets/Images/fort.png", 
  "Mid Kolkata, 700-124",
  Color(0xFFF44336)
  ),

  TouristsSpots("Belur Math", 
  Text("The mighty edifice of Fort William is situated in the city of Kolkata, on the eastern bank of the  Hooghly River. Built in the year 1696, the fort is named after King William III and was the first stronghold of the British in the country. The magnificent structure is spread over 70.9 acres and is embellished with hundreds of arched windows that overlook lush green gardens. Meticulous stonework adorns the surface of the building and it took as long as took ten years to reach completion"), 
  "Assets/Images/belur.webp", 
  "Mid Kolkata, 700-124",
  Color(0XFFD81B60)
  ),

  TouristsSpots("Howrah Bridge", 
  Text("The mighty edifice of Fort William is situated in the city of Kolkata, on the eastern bank of the  Hooghly River. Built in the year 1696, the fort is named after King William III and was the first stronghold of the British in the country. The magnificent structure is spread over 70.9 acres and is embellished with hundreds of arched windows that overlook lush green gardens. Meticulous stonework adorns the surface of the building and it took as long as took ten years to reach completion"), 
  "Assets/Images/howrah.jpg", 
  "Mid Kolkata, 700-124",
  Color(0XFF512DA8)
  ),
  TouristsSpots("Ecopark Ecotourism", 
  Text("A large recreation area for activities such as boating & cycling, plus a playground, lake & gardens."), 
  "Assets/Images/ecoprk.jpg", 
  "Mid Kolkata, 700-124",
  Color(0XFFF57F17)
  ),

  TouristsSpots("Sovabazar Memorial", 
  Text("Nice Place for family"), 
  "Assets/Images/sova.jpg", 
  "Mid Kolkata, 700-124",
  Color(0XFF26C6DA)
  ),


TouristsSpots("Birla Planatorium", 
  Text("Nice Place for family"), 
  "Assets/Images/birla.gif", 
  "Mid Kolkata, 700-124",
  Color(0xFFE040FB)
  ),




];


