import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 350,
                  decoration: const BoxDecoration(
                    //color: Colors.red,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://m.media-amazon.com/images/M/MV5BM2RhNzBmOWMtNTUyMS00MGI5LTlkYjktMzEzZjJiOGJhNjRiXkEyXkFqcGc@._V1_QL75_UX500_CR0,27,500,281_.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 4,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.blueAccent,
                    Colors.pinkAccent,
                    Colors.blueAccent,
                    Colors.yellowAccent,
                  ])),
                ),
                Container(
                  child: Column(
                    children: [
                      const Text(
                        "Leo : Bloody Sweet",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      //rating
                      const SizedBox(
                        height: 10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star, color: Colors.yellowAccent),
                            Icon(Icons.star, color: Colors.yellowAccent),
                            Icon(Icons.star, color: Colors.yellowAccent),
                            Icon(Icons.star, color: Colors.yellowAccent),
                            Icon(Icons.star_half, color: Colors.yellowAccent),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          buildCircleAvatar(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrzOBdnmLJK15QyQ5PVFKk9UlbS72qZt7pdQ&s"),
                          buildCircleAvatar(
                              "https://m.media-amazon.com/images/M/MV5BOTAzMGJhZGQtZThhZi00MmJlLTgwMWEtOWJkYmU1ODQyZWMzXkEyXkFqcGc@._V1_.jpg"),
                          buildCircleAvatar(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo3zbb9Xd-y27Gzitt9fwm7tDzV6Xk98VR0g&s"),
                          buildCircleAvatar(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIdhLVsXvbXfufkvXwoEYySCoQrcnTkAGDHQ&s"),
                        ],
                      ),
                      //movie review
                      const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "Parthiban lives a simple life in Shimla along with wife Satya and two children and runs a cafe.Few contract killers enter the town an create havoc,one night they attack Parthiban's cafe and all get shot dead by him while trying to save his daughter and employee.The trial goes in court and Parthiban is set free as all men were criminals and he did it in self defense.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  CircleAvatar buildCircleAvatar(img) {
    return CircleAvatar(
      backgroundColor: Colors.pinkAccent,
      radius: 40,
      child: CircleAvatar(
        backgroundImage: NetworkImage(img),
        radius: 38,
      ),
    );
  }
}
