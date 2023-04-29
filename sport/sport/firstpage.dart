import'package:flutter/material.dart';
import 'package:health/homepage.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstPageState();
}

class _FirstPageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
            Container(
              height: 390,width:double.infinity,
              decoration: BoxDecoration(color: Color(0xffFC7100).withOpacity(0.9),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200),
              bottomRight: Radius.circular(200),),
              
              ),
            ),SizedBox(height: 150,),
            Text("lets start\nyour habits",
            style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold),),
            SizedBox(height:5,),
             Text("   lorem ipsum dolor sit amet\n   consectetur adipiscing elit sed do\n   eiusmod tespor incidiunt ut",
             style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 17),),
             SizedBox(height:35,),
             Container(
              height: 55,width: 200,
              decoration: BoxDecoration(color: Color(0xffFD8E4A),borderRadius: BorderRadius.circular(27.5)),
               child: MaterialButton(onPressed: (){
                Navigator.of(context).pushNamed('acti');
               },  
                child: Text("START NOW",style: TextStyle(fontSize: 22),)),
             )
            
          ]),
          Positioned(left: 100,right: 100,top: 60,
            child:  Image.asset("images/Girl With Phone 1.png")),
            
         
        ],
      ),
    );
  }
}