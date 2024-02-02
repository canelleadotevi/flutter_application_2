import 'package:flutter/material.dart';
class Category {
final String text;
final String? image;
final Color cardColor;

Category({required this.text , required this.image , required this.cardColor});
}
List<Category> myCards = [
Category(
text:"UI/UX Design",
image:"assets/images/test.jpg",
cardColor: Color.fromARGB(255, 219, 128, 95)
),
Category(
text:"Graphic Design",
image:"assets/images/test.jpg",
cardColor: Color.fromARGB(255, 48, 149, 85)
),
Category(
text:"Digital Marketing",
image:"assets/images/test.jpg",
cardColor: Color.fromARGB(255, 52, 184, 61)
)
];