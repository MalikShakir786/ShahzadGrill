import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({
    super.key,
    required this.title,
  });

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.deepOrangeAccent,
        ),
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Stack(
          children: [
            GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
            Align(
              alignment: Alignment.center,
              child: Text(title,style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold
              ),),
            ),

          ],
        ),
      ),
    );
  }
}