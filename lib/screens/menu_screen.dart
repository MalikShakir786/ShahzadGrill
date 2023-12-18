import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:resturant/screens/detail.dart';

import '../global_widgets/cutom_navbar.dart';
import 'about_us.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});

  var bannerImages = [
    "assets/images/banner1.jpg",
    "assets/images/banner2.jpg",
    "assets/images/banner3.jpg",
  ];
  var menuImages = [
    "assets/images/beefKabab.png",
    "assets/images/chickenKabab.jpg",
    "assets/images/chickenTikka.jpg",
    "assets/images/drumSticks.jpg",
    "assets/images/grillChargha.jpg",
    "assets/images/muttonChamps.jpg",
    "assets/images/muttonKabab.jpg",
    "assets/images/pashaBoti.jpg",
    "assets/images/shishTawook.jpg",
    "assets/images/wings.jpg",
  ];
  var bannerNames = [
    "Chicken Chargha",
    "Chicken Kabab",
    "Mutton Champ",
  ];
  var menuNames = [
    "Beef Kabab",
    "Chicken Kabab",
    "Chicken Tikka",
    "Drum Sticks",
    "Grill Chargha",
    "Mutton Champs",
    "Mutton Kabab",
    "Pasha Boti",
    "Shish Tawook",
    "Chicken Wings",
  ];
  var pricelist = [
    "Rs 600",
    "Rs 600",
    "Rs 360",
    "Rs 1080",
    "Rs 1500",
    "Rs 3600",
    "Rs 1300",
    "Rs 800",
    "Rs 900",
    "Rs 500",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey.shade200,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              CustomNavbar(
                title: "Menu",
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 320,
                child: Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: bannerImages.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child: Card(
                            elevation: 20,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(bannerImages[index]),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black54,
                                      ),
                                      width: 120,
                                      height: 90,
                                      padding: EdgeInsets.all(10),
                                      child: Center(
                                          child: Text(
                                        bannerNames[index],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Divider(
                thickness: 3,
              ),
              Center(
                child: Text(
                  "Menu",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: GridView.count(
                    childAspectRatio: 0.51,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 3,
                    children: List.generate(menuImages.length, (index) {
                      return Card(
                        elevation: 20,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => detail_Page()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white),
                            child: Column(
                              children: [
                                Container(
                                  height: 80,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: Image.asset(menuImages[index])),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    menuNames[index],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    pricelist[index],
                                    style: TextStyle(fontSize: 13),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    })),
              ),
              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
