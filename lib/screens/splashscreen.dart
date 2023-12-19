// ignore_for_file: camel_case_types, prefer_final_fields, unused_field, unused_import, unnecessary_import

import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:lottie/lottie.dart';
import 'package:resturant/aboutus.dart';

void main() => runApp(const splashscreen());

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => about_us(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          HexColor('#053010'),
                          HexColor('#2e2f40'),
                          HexColor('#0f0721'),
                          HexColor('#0f2916'),
                          HexColor('#5c5c5a'),
                          HexColor('#0f0721'),
                          HexColor('#96924e'),
                          HexColor('#d4c935'),
                        ]),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            decoration: const BoxDecoration(),
                            width: MediaQuery.of(context).size.width,
                            child: const Image(
                                image: AssetImage('lib/images/splash.jpg'))),
                      ),
                      Opacity(
                        opacity: 0.3,
                        child: Column(
                          children: [
                            LottieBuilder.asset(
                                'lib/images/lottie.animation.json')
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
