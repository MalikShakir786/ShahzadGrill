import 'package:flutter/material.dart';

import '../global_widgets/cutom_navbar.dart';

class RestaurantApp extends StatelessWidget {
  RestaurantApp({super.key});

  var bannerImages = [
    "assets/images/banner1.jpg",
    "assets/images/banner2.jpg",
    "assets/images/banner3.jpg",
  ];
  var menuImages = [
    "assets/images/menu1.jpg",
    "assets/images/menu2.jpg",
    "assets/images/menu3.jpg",
    "assets/images/menu5.jpg",
    "assets/images/menu6.jpg",
    "assets/images/menu7.jpg",
    "assets/images/menu8.png",
    "assets/images/menu9.jpg",
    "assets/images/menu10.jpg",
    
  ];
  var bannerNames = [
    "Chicken Chargha",
    "Chicken Kabab",
    "Mutton Champ",
  ];
  var menuNames = [
    "Chicken Chargha",
    "Chicken Kabab",
    "Mutton Champ",
    "Chicken Chargha",
    "Chicken Kabab",
    "Mutton Champ",
    "Chicken Chargha",
    "Chicken Kabab",
    "Mutton Champ",
  ];
  var pricelist = [
    "Rs 1000",
    "Rs 1200",
    "Rs 1500",
    "Rs 1100",
    "Rs 1700",
    "Rs 900",
    "Rs 1600",
    "Rs 1900",
    "Rs 1800",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.grey.shade200,
          child: Column(
            children: [
              SizedBox(height: 10,),
              CustomNavbar(title: "Menu",),
              SizedBox(height: 20,),
              SizedBox(
                height: 320,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                      itemCount: bannerImages.length,
                      itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(10),
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
                                child: Center(child: Text(bannerNames[index],style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              Divider(thickness: 3,),
              Center(child: Text("Menu",style: TextStyle(
                fontSize: 23,fontWeight: FontWeight.bold
              ),),),
              SizedBox(height: 5,),
              Expanded(
                child: GridView.count(
                  childAspectRatio: 0.53,
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
                  crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    crossAxisCount: 3,
                  children: List.generate(menuImages.length, (index){
                    return Container(
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                      ),
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
                            child: Text(menuNames[index],style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(pricelist[index],style: TextStyle(
                              fontSize: 13
                            ),),
                          )
                        ],
                      ),
                    );
                  })
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


