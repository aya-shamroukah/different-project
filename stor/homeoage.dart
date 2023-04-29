import 'package:flutter/foundation.dart';
import'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Stor extends StatefulWidget {
  const Stor({super.key});

  @override
  State<Stor> createState() => _StorState();
}

class _StorState extends State<Stor> {
  List product=[
    {"price":"price:\$542","title":"Bluetooth earbuds:","subtitle":"High sound quality","image":"images/airpod.png","des":""},
        {"price":"price:\$122","title":"Speaker","subtitle":"High sound quality","image":"images/speaker.png","des":""},
    {"price":"price:\$466","title":"Mobile","subtitle":"Mobile has become a force","image":"images/mobile.png","des":""},
    {"price":"price:\$75","title":"Hedset","subtitle":"High sound quality","image":"images/headset.png","des":""},
 {"price":"price:\$435","title":"3D","subtitle":"To take you to the deafult world","image":"images/class.png","des":""},
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 104, 179, 240),
      drawer: Drawer(),
      // ignore: deprecated_member_use
      appBar: AppBar( elevation: 0.0,
        backgroundColor:Color.fromARGB(255, 104, 179, 240) ,
        title: Text("Welcome",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,fontStyle: FontStyle.italic),)),
      body: Container(
        
         margin: EdgeInsets.only(top: 60),
              decoration: BoxDecoration(color: Color(0xffF1EfF1),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))),
        child: Column(
          children: [
            SizedBox(height:10,),
          Expanded(child:
           ListView.builder(
            itemCount: product.length,
            itemBuilder: ((context, index) {
             return Container(
               height: 190,
               margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
               child: InkWell(
                onTap: (() => {
                  Navigator.of(context).pushNamed('product')
                }),
                 child: Stack(
                   alignment: Alignment.bottomCenter,
                   children: [
                     Container(height: 166,
                     
                     decoration: BoxDecoration(color: Colors.white,
                     boxShadow:[ BoxShadow(offset: Offset(0,15),blurRadius: 25,color: Colors.black26),],
                       borderRadius: BorderRadius.circular(22)),
                     ),
                     Positioned( 
                       top:0,left:0,
                       child: 
                     Container(height: 160,padding: EdgeInsets.symmetric(horizontal: 20),
                     child: Image.asset(product[index]["image"],fit: BoxFit.cover,),)),
                     Positioned(bottom: 0,right: 0,
                       child: SizedBox(height: 136,width: 150,
                     child: Column(children: [
                       Padding(
                         padding: const EdgeInsets.only(top: 15,right:17),
                         child: Text(product[index]["title"],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                       ),
                       SizedBox(height: 5,),
                       Text(product[index]["subtitle"],style: TextStyle(color: Colors.black38)),
                        SizedBox(height: 15,),
                       Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(22),
                         color: Color(0xfffcca46)),
                         padding: EdgeInsets.symmetric(horizontal: 30,vertical: 5
                         ),
                         child: Text(product[index]["price"],style: TextStyle(color: Colors.black87)),
                       )
                     ]),
                     ))
                 ]),
               ),
             );
           })))
        ]),
      ),
    );
  }
}