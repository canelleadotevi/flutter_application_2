import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/category.dart';
import 'package:flutter_application_2/widgets/my_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading:
                  IconButton(onPressed: () {}, icon: Icon(Icons.menu_sharp)),
              trailing: Text("hello"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Found your favorite course",
              style: TextStyle(
                  color: Color.fromARGB(255, 3, 26, 46), fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color.fromARGB(113, 242, 241, 244),
                    spreadRadius: 4,
                    blurRadius: 10,
                    offset: Offset(0, 3))
              ]),
              child: TextField(
                decoration: InputDecoration(
                  filled: false,
                  hintText: " Search for a course",
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Top category",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 3, 26, 46)),
                ),
                Spacer(),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),/* 
            Container(
             child: ListView(
                  padding: EdgeInsets.zero,
                  
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.deepOrange,
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.info_outline),
                          Text("tititle"),
                          Spacer(),
                          Text("Read more"),
                          Icon(Icons.arrow_right_alt_sharp),
                        ],
                      ),
                    ),
                    

                    ...myCards.map((e) => MyCard(category: e)).toList()
                  ],
                ),
            ) */
          ],
        ),
      ),
    );
  }
}
