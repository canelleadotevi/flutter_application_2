import 'package:flutter/material.dart';
class Popular{
  final String? image;
  final String title;
  final String subtitle;
  final String secondSubtitle;
  final Color cardColor;
  Popular ({ required this.image , required this.title , required this.subtitle , required this.secondSubtitle,  required this.cardColor });

}

List<Popular> populars = [
  Popular(
    image:"assets/images/card.png",
    title:"UI/UX Design with Figma",
    subtitle: "4.9  (37 Reviews)",
    secondSubtitle: "25 classes",
    cardColor: Color.fromARGB(255, 63, 44, 141)
  ),
   Popular(
    image:"assets/images/card.png",
    title:"UI/UX Design with Figma",
    subtitle: "4.9  (37 Reviews)",
    secondSubtitle: "25 classes",
    cardColor: Color.fromARGB(255, 137, 30, 161)
  ),
   Popular(
    image:"assets/images/card.png",
    title:"UI/UX Design with Figma",
    subtitle: "4.9  (37 Reviews)",
    secondSubtitle: "25 classes",
    cardColor: Color.fromARGB(255, 11, 78, 133)
  ),
   Popular(
    image:"assets/images/card.png",
    title:"UI/UX Design with Figma",
    subtitle: "4.9  (37 Reviews)",
    secondSubtitle: "25 classes",
    cardColor: Color.fromARGB(255, 96, 214, 70)
  ),
];
