import 'package:flutter/material.dart';

class shoowBox extends StatelessWidget {
  const shoowBox(this.title, this.statment);
  final String title;
  final String statment;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 111.33,
      height: 65,
      //color: Colors.white,
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFFF9431)),
              borderRadius: BorderRadius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
          left: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "$title",
                  style: TextStyle(
                    color: Color(0xFFFF9431),
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    letterSpacing: -0.42,
                  ),
                ),
                SizedBox(
                  width: 40,
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
                fontSize: 18,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: -0.54,
              ),
            )
          ],
        ),
      ),
    );
  }
}
