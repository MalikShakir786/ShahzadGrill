import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    super.key,
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8.sp),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: Colors.deepOrangeAccent,
        ),
        padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
        child: Stack(
          children: [
            GestureDetector(onTap: () {}, child: Icon(Icons.arrow_back)),
            Align(
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
