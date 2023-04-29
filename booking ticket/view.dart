import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

class ViewMovie extends StatefulWidget {
  const ViewMovie({super.key});

  @override
  State<ViewMovie> createState() => _ViewMovieState();
}

class _ViewMovieState extends State<ViewMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(gradient: LinearGradient(
              colors: [Color(0xff242167),Color(0xff29133D)])),
        child: Column(
          
          children: [
          Padding(
            padding: const EdgeInsets.only(top: 90,bottom: 30),
            child: Text("Mobile Ticket",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontSize: 25),),
          ),
          Text(textAlign:TextAlign.center,
            "Once you buy a movie ticket \n simply scan the barcode to \n acces to your movie."
            ,style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal,fontSize: 17),),
            SizedBox(height: 40,),
            Image.asset("images/Mobile Tickets.png"),
            Container(
              height: 50,
              width: 50,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Color(0xff7cB7D6),
                    borderRadius: BorderRadius.circular(100)
                  ),
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(100)
                  ),
                ),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(100)
                  ),
                )
              ],),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 57),
              child: Container(
                height: 70,
                decoration: BoxDecoration(gradient: LinearGradient(
                colors: [Color(0xff48259B),Color(0xffBB5CCA)])),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Icon(Icons.home,color: Colors.white,size: 30,),
               Icon(Icons.location_on,color: Colors.white,size: 30,),
                Icon(Icons.auto_awesome_motion,color: Colors.white,size: 30,),
                 Icon(Icons.person,color: Colors.white,size: 30,),
            ],),
              ),
            )
        ],),
      ),
    );
  }
}