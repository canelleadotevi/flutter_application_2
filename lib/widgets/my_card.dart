import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/category.dart';

class MyCard extends StatefulWidget {
  // const MyCard(
  //     {super.key,
  //     required this.title,
  //     required this.subtitle,
  //     this.image,
  //     required this.stars,
  //     required this.favorit});

  // final String title, subtitle;
  // final String? image;
  // final int stars;
  // final bool favorit;

  final Category category;

  const MyCard({super.key, required this.category});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          const BoxShadow(blurRadius: 5),
        ],
      ),
          
    );
  }
}
