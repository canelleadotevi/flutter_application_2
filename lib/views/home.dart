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
              trailing: Container(
                width: 60,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/profile_1.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
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
                  filled: true,
                  fillColor: Colors.white,
                  hintText: " Search for a course",
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
                  focusColor: Colors.white,
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
                )
              ],
            ),
            SizedBox(height: 30),
            /* ListView(
             scrollDirection: Axis.horizontal, 
              children: [
                Container(
                  width: 300,
                  height: 200,
                  child: Text("hellooooo"),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 3, 40, 100),
                  
                  ),
                )
              ],
            ) */
           /*  Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.red
              ),
              child: Text("hello"),
            ) */
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 106, 152, 189),
                borderRadius: BorderRadius.circular(20),


              ),
             
            ),
            SizedBox(width: 10,),
            Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 28, 177, 112),
                borderRadius: BorderRadius.circular(20),


              ),
             
            ),
            SizedBox(width: 10,),
            Container(
              width: 100,
              height: 100,
              padding: EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 50, 100, 21),
                borderRadius: BorderRadius.circular(20),


              ),
             
            ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 300,
              height: 200,
              padding: EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 7, 62, 108),
                borderRadius: BorderRadius.circular(20),


              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/card.png",
                    width: 100,
                    height: 200,
                  ),
                  SizedBox(width: 20,),
                  Container(
                    alignment: Alignment.center,
                    width: 100,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [
                        Text("UI/UX Design with Figma",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w800),),
                        SizedBox(height: 2,),
                        Row(
                          children: [
                            Icon(Icons.star,color: Color.fromARGB(255, 244, 138, 26),),
                            
                            SizedBox(width: 5,),
                            Text("4.9  (37 Reviews)",style: TextStyle(color:Colors.white, fontWeight: FontWeight.w100, fontSize: 12),)
                          ],
                        ),
                        SizedBox(height: 2,),
                        Text("25 classes",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 12),)
                      ],
                      )
                    
                    
                  )
                ],
              ),
            ),



          /* SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                 child: Row(children: [
                  Text("ddafzg"),
                  Text("ddafzg"),
                  Text("ddafzg"),
                 ],)
                )
              ],
            ),
          ) */
          ],
        ),
      ),
    );
  }
}
