import'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: Column(children: [
       SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30,width: 30,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Color(0xff577CEF)),
                  child: IconButton(onPressed: () {
                    Navigator.of(context).pop();
                  },
                    icon: Icon(Icons.arrow_back,size: 15,))),
                  Text("Health Status",style: TextStyle(color: Color(0xff577CEF),fontSize: 20)),
                  Icon(Icons.more_vert,color: Color(0xff577CEF) ,)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 175,height: 141,
                decoration: BoxDecoration(color: Color(0xff577CEF),
                borderRadius: BorderRadius.circular(17),
                 boxShadow: [ BoxShadow(offset: Offset(0,7),blurRadius: 10,color: Colors.black38)],),
              ),
               Container(
                width: 116,height: 141,
                decoration: BoxDecoration(color: Color(0xff577CEF),
                 boxShadow: [ BoxShadow(offset: Offset(0,7),blurRadius: 10,color: Colors.black38)],
                borderRadius: BorderRadius.circular(17)),
              )
            ],
          )
      ]),
    );
  }
}