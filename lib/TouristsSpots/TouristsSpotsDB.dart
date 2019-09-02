import 'package:flutter/material.dart';

class TouristsSpots {
  final String name;
  final String desc;
  final String imagePath;
  final String address;
  final Color color;
  final String famousFor;

  TouristsSpots(this.name, this.desc, this.imagePath, this.address, this.color,
      this.famousFor);
}

List<TouristsSpots> touristsSpots = [
  TouristsSpots(
      "Victoria Memorial",
      "Nice Place for family",
      "Assets/Images/victoria.jpg",
      "Mid Kolkata, 700-124",
      Color(0XFF651FFF),
      "Indo-Saracenic architecture"),
  TouristsSpots("Princep Ghat", "Onek pukur ache", "Assets/Images/princep.jpg",
      "Mid Kolkata, 700-124", Color(0XFFF57F17), "Ashoka Era, Gothic style"),
  TouristsSpots(
      "Fort Williams",
      "The mighty edifice of Fort William is situated in the city of Kolkata, on the eastern bank of the  Hooghly River. Built in the year 1696, the fort is named after King William III and was the first stronghold of the British in the country. The magnificent structure is spread over 70.9 acres and is embellished with hundreds of arched windows that overlook lush green gardens. Meticulous stonework adorns the surface of the building and it took as long as took ten years to reach completion",
      "Assets/Images/fort.png",
      "Mid Kolkata, 700-124",
      Color(0xFFF44336),
      "Magnificant structure"),
  TouristsSpots(
      "Belur Math",
      "The mighty edifice of Fort William is situated in the city of Kolkata, on the eastern bank of the  Hooghly River. Built in the year 1696, the fort is named after King William III and was the first stronghold of the British in the country. The magnificent structure is spread over 70.9 acres and is embellished with hundreds of arched windows that overlook lush green gardens. Meticulous stonework adorns the surface of the building and it took as long as took ten years to reach completion",
      "Assets/Images/belur.webp",
      "Mid Kolkata, 700-124",
      Color(0XFFD81B60),
      "Secularism, Swami Vivekananda"),
  TouristsSpots(
      "Howrah Bridge",
      "The mighty edifice of Fort William is situated in the city of Kolkata, on the eastern bank of the  Hooghly River. Built in the year 1696, the fort is named after King William III and was the first stronghold of the British in the country. The magnificent structure is spread over 70.9 acres and is embellished with hundreds of arched windows that overlook lush green gardens. Meticulous stonework adorns the surface of the building and it took as long as took ten years to reach completion",
      "Assets/Images/howrah.jpg",
      "Mid Kolkata, 700-124",
      Color(0XFF512DA8),
      "Symbol of Kolkata"),
  TouristsSpots(
      "Dakhshineswar",
      "Dakshineswar Kali Temple is a Hindu temple located in Dakshineswar, close to Kolkata. Situated on the eastern bank of the Hooghly River, the presiding deity of the temple is Bhavatarini",
      "Assets/Images/dakhshineswar.jpg",
      "Dakshineswar, 700076",
      Color(0XFF512DA8),
      "Deity of Hinduism"),
  TouristsSpots(
      "Ecopark Ecotourism",
      "A large recreation area for activities such as boating & cycling, plus a playground, lake & gardens.",
      "Assets/Images/ecoprk.jpg",
      "Mid Kolkata, 700-124",
      Color(0XFFF57F17),
      "Cruising, Afternoon Lake"),
  TouristsSpots(
      "Park Street",
      "Park Street, is a famous thoroughfare in the city of Kolkata, India. The street runs through what was a deer park of Sir Elijah Impey, Chief Justice of the Supreme Court in",
      "Assets/Images/park.jpg",
      "Kolkata, 700-016",
      Color(0XFFF57F17),
      "Thoroughfare in Kolkata"),
  TouristsSpots(
      "Sovabazar Sutanati",
      "Nice Place for family",
      "Assets/Images/sova.jpg",
      "Mid Kolkata, 700-124",
      Color(0XFF26C6DA),
      "Kolkata RajBari"),
  TouristsSpots(
      "Indian Meseume",
      "Indian heritage museum with sections on archaeology, art, anthropology and geology, founded in 1814.",
      "Assets/Images/indian.jpg",
      "Mid Kolkata, 700-124",
      Color(0XFF26C6DA),
      "Kolkata RajBari"),
  TouristsSpots(
      "Birla Planatorium",
      "Nice Place for family",
      "Assets/Images/birla.gif",
      "Mid Kolkata, 700-124",
      Color(0xFFE040FB),
      "Astronomy gallery"),
];
