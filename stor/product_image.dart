import'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Productimage extends StatelessWidget {
  const Productimage({Key? key ,required this.image}):super(key: key);
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30),
      height: 580,
      decoration: BoxDecoration(color: Color(0xffF1EfF1) ,
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),
      bottomRight: Radius.circular(50))
      ),
      child: Column(children: [
        Container(
          
          margin: EdgeInsets.symmetric(vertical: 30),height: 400,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
            Container(
              height: 350,width: 320,
              decoration: BoxDecoration(color: Colors.white,
              shape: BoxShape.circle
              ),
            ),
            Image.asset(image,height: 330,width: 330,fit: BoxFit.cover,)
          ]),
        )
      ]),
    );
  }
}