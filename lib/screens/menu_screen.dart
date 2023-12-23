// ignore_for_file: unused_import, must_be_immutable, prefer_const_constructors, sized_box_for_whitespace, duplicate_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:resturant/screens/detail.dart';
import 'package:resturant/screens/about_us.dart';
import '../global_widgets/cutom_navbar.dart';

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
                height: 10.h,
              ),
              CustomNavbar(
                title: "Menu",
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 250,
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
                                  padding: EdgeInsets.all(20),
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black54,
                                      ),
                                      width: 120.w,
                                      height: 80,
                                      padding: EdgeInsets.all(10),
                                      child: Center(
                                          child: Text(
                                        bannerNames[index],
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20.sp,
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
                  style:
                      TextStyle(fontSize: 23.sp, fontWeight: FontWeight.bold),
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
                          child: Expanded(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white),
                              child: Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 80.h,
                                        child: Expanded(
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                              child: Image.asset(
                                                  menuImages[index])),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Expanded(
                                        child: Text(
                                          menuNames[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Expanded(
                                        child: Text(
                                          pricelist[index],
                                          style: TextStyle(fontSize: 13.sp),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    })),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
