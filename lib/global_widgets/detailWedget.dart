// ignore_for_file: override_on_non_overriding_member, file_names, camel_case_types, use_key_in_widget_constructors, no_logic_in_create_state, annotate_overrides, prefer_const_constructors, sized_box_for_whitespace, unnecessary_string_interpolations, avoid_unnecessary_containers, avoid_print, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class detailWedgit extends StatefulWidget {
  const detailWedgit(
      this.dishName, this.starts, this.reviews, this.price, this.type);
  final String dishName, starts, reviews, price, type;

  @override
  State<detailWedgit> createState() =>
      _detailWedgitState(dishName, starts, reviews, price, type);
}

class _detailWedgitState extends State<detailWedgit> {
  @override
  final String dishName, starts, reviews, price, type;

  _detailWedgitState(
      this.dishName, this.starts, this.reviews, this.price, this.type);
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Container(
          color: Color(0xFFFFF1E5),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: 300.w,
                    height: 200,
                    child: Image(
                      image: AssetImage('assets/images/dish.png'),
                    ),
                  ),
                ),
                Text(
                  "$type",
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 20.sp,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    height: 0.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "$dishName",
                        style: TextStyle(
                          color: Color(0xFF0C0C0C),
                          fontSize: 21.sp,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w700,
                          height: 0.h,
                          letterSpacing: -0.72,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14),
                        child: Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 24,
                                height: 24,
                                decoration: ShapeDecoration(
                                    color: Color(0xFFF2CF63),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.08,
                                      pointRounding: 1,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    )),
                              ),
                              Text(
                                "$starts",
                                style: TextStyle(
                                  color: Color(0xFF0C0C0C),
                                  fontSize: 18.sp,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 0.h,
                                  letterSpacing: -0.54,
                                ),
                              ),
                              Text(
                                "($reviews Reviews)",
                                style: TextStyle(
                                  color: Color(0xFF0C0C0C),
                                  fontSize: 14.sp,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                  letterSpacing: -0.36,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "\$ $price.",
                          style: TextStyle(
                            color: Color(0xFFFF9431),
                            fontSize: 28.sp,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700,
                            height: 0,
                            letterSpacing: -0.72,
                          ),
                        ),
                        Text(
                          "00",
                          style: TextStyle(
                            color: Color(0xFFFF9431),
                            fontSize: 24.sp,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            letterSpacing: -0.14,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            // Handle button click
                            print('Button Clicked');
                          },
                          child: Container(
                            width: 32.w,
                            height: 32.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFFF9431), // Circle color
                            ),
                            child: Center(
                              child: Text(
                                '+',
                                style: TextStyle(
                                  color: Colors.white, // Plus sign color
                                  fontSize: 24.sp, // Plus sign size
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0, left: 10),
                          child: Text(
                            '1',
                            style: TextStyle(
                              color: Color(0xFF0C0C0C),
                              fontSize: 24.sp,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w400,
                              height: 0.h,
                              letterSpacing: -0.72,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // Handle button click
                            print('Button Clicked');
                          },
                          child: Container(
                            width: 32.w,
                            height: 32,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFFF9431), // Circle color
                            ),
                            child: Center(
                              child: Text(
                                '-',
                                style: TextStyle(
                                  color: Colors.white, // Plus sign color
                                  fontSize: 24.sp, // Plus sign size
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    shoowBox("Size", "Medium"),
                    shoowBox("Energy", "554 KCal"),
                    shoowBox("Delivery", "45 mint"),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Text(
                    "About",
                    style: TextStyle(
                      color: Color(0xFF0C0C0C),
                      fontSize: 18.sp,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                      height: 0,
                      letterSpacing: -0.54,
                    ),
                  ),
                ),
                buildIngredient('Ingredients'),
                buildIngredient('1 tbsp olive oil'),
                buildIngredient('2 lbs chicken breasts'),
                buildIngredient('1/2 tsp kosher salt'),
                buildIngredient('1/2 tsp ground black pepper'),
                buildIngredient('2 tbsp butter (if ordered)'),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 0, left: 100),
                  child: ElevatedButton(
                    onPressed: () => {},
                    child: Text('ORDER NOW'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrangeAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      minimumSize: Size(163, 48),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildIngredient(String ingredient) {
    return Column(
      children: [
        SizedBox(
          height: 3,
        ),
        Text(
          ingredient,
          style: TextStyle(
            color: Color(0xFF0C0C0C),
            fontSize: 14.sp,
            fontFamily: 'DM Sans',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}

class shoowBox extends StatelessWidget {
  const shoowBox(this.title, this.statment);
  final String title;
  final String statment;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 110.w,
          height: 75,
          //color: Colors.white,
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFFF9431)),
                  borderRadius: BorderRadius.circular(10))),
          child: Padding(
            padding: EdgeInsets.only(
              top: 8,
              left: 10,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "$title",
                      style: TextStyle(
                        color: Color(0xFFFF9431),
                        fontSize: 16.sp,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                        height: 0,
                        letterSpacing: -0.42,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "$statment",
                  style: TextStyle(
                    color: Color(0xFF0C0C0C),
                    fontSize: 18.sp,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.54,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
