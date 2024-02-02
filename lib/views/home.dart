import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/category.dart';
import 'package:flutter_application_2/models/popular.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu_sharp),
                color: Color.fromARGB(255, 234, 231, 231),
              ),
              trailing: Container(
                width: 30,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/profile_1.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Find your favorite course",
              style: TextStyle(
                  color: Color.fromARGB(255, 3, 26, 46), fontSize: 30),
            ),
            SizedBox(
              height: 10,
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
                  filled: true,
                  fillColor: Colors.white,
                  hintText: " Search for course",
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white, // Couleur des bordures normales
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:
                          Colors.white, // Couleur des bordures en surbrillance
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  focusColor: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
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
              height: 10,
            ),
            SizedBox(
              height: size.height / 5,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: myCards.length,
                itemBuilder: (BuildContext context, int index) {
                  Category card = myCards[index];

                  return Container(
                    width: size.width / 3,
                    height: 80,
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: card.cardColor.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          card.image!,
                          height: 30,
                          width: 30,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 8),
                        Text(
                          card.text,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Popular",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 3, 26, 46)),
                ),
                Spacer(),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: size.height/3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: populars.length,
                itemBuilder: (BuildContext context, int index) {
                  Popular popular = populars[index];
                  return Container(
                    width: 200,
                    height: size.width/ 8,
                    margin: EdgeInsets.only(right: 10),
                    padding: EdgeInsets.only(top: 0, bottom: 0),
                    decoration: BoxDecoration(
                      color: popular.cardColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          popular.image!,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 80,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                popular.title,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 244, 138, 26),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    popular.subtitle,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w100,
                                        fontSize: 10),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(
                                popular.secondSubtitle,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(items: [
        Icon(Icons.home, color: Colors.grey),
        Icon(
          Icons.save,
          color: Colors.grey,
        ),
        Icon(Icons.notifications,
            color: Colors.grey),
        Icon(Icons.settings,color: Colors.grey)
      ]),
    );
  }
}
