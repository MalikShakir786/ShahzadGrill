// ignore_for_file: unused_import, must_be_immutable, avoid_unnecessary_containers, use_key_in_widget_constructors, camel_case_types, unnecessary_import, avoid_web_libraries_in_flutter
import 'dart:ffi';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:resturant/global_widgets/cutom_navbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/link.dart';
import 'package:hexcolor/hexcolor.dart';


class AboutUsScreen extends StatelessWidget {
  AboutUsScreen({super.key});
  Uri dialNumber1 = Uri(scheme: 'tel', path: '');
  List imageList = [
    {'id': 1, 'image_path': 'assets/images/fast_food.jpg'},
    {'id': 2, 'image_path': 'assets/images/deliveryboy2.jpg'},
    {'id': 3, 'image_path': 'assets/images/chicken_tika.jpg'},
    {'id': 4, 'image_path': 'assets/images/fast_food.jpg'},
    {'id': 5, 'image_path': 'assets/images/mutton.jpg'},
    {'id': 1, 'image_path': 'assets/images/friends_meal.jpeg'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(children: [
            CustomNavbar(title: "About Us"),
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              clipBehavior: Clip.antiAlias,
              child: CarouselSlider(
                items: imageList
                    .map(
                      (item) => Image.asset(
                    item['image_path'],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                )
                    .toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  enlargeFactor: 1,
                  aspectRatio: 2,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.deepOrangeAccent),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.lightGreenAccent),
                    child: Center(
                      child: AnimatedTextKit(
                        animatedTexts: [
                          ColorizeAnimatedText('Free Home Delivery',
                              textStyle: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                              colors: Colors.accents)
                        ],
                        repeatForever: true,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        'Delivery Hour  |',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'GST 12:00PM-12:00AM',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                reusecode(number: '03055804004'),
                reusecode(number: '03425804004'),
                reusecode(number: '03314919293'),
                reusecode(number: '0523571100  '),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Icon(
                          Icons.location_on_outlined,
                          color: Colors.brown,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Wazirabad Rd, near Bank Stop, Ugoke, Sialkot,punjab,(branch # 01), pakistan',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.indigoAccent),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ]),
            ),
          ]),
        ),
    );
  }
}


class reusecode extends StatelessWidget {
  final String number;
  reusecode({
    required this.number,
  });
  directcall1() async {
    await FlutterPhoneDirectCaller.callNumber(number);
  }

  Uri dialNumber2 = Uri(scheme: 'tel', path: '');
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(
              Icons.call,
              color: Colors.blueAccent,
              size: 30,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Row(
            children: [
              Text(
                number,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.white),
              ),
              const SizedBox(
                width: 80,
              ),
              Row(
                children: [
                  ElevatedButton.icon(
                      onPressed: directcall1,
                      icon: const Icon(
                        Icons.call,
                      ),
                      label: const Text('Call'))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
