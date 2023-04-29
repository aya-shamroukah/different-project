import'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Nft2 extends StatefulWidget {
  const Nft2({super.key});

  @override
  State<Nft2> createState() => _Nft2State();
}

class _Nft2State extends State<Nft2> {
  List list4=[
    {"name":"Azumi","sub":"view info","number":"200055.02","num":"3,99%","image":"images/Shape.png"},
    {"name":"Hape prime","sub":"view info","number":"180055.45","num":"-33,79%","image":"images/Shape(1).png"},
    {"name":"Cryoto","sub":"view info","number":"90055.62","num":"6,56%","image":"images/Shape(2).png"},
    {"name":"Ape Club","sub":"view info","number":"88055.12","num":"-3,99%","image":"images/Shape(3).png"},
    {"name":"Bat","sub":"view info","number":"10055.06","num":"3,99%","image":"images/Shape(4).png"},
    {"name":"Mutant","sub":"view info","number":"9095.27","num":"-3,96%","image":"images/Shape(5).png"},
{"name":"Azumi","sub":"view info","number":"200055.02","num":"3,99%","image":"images/Shape.png"},
    {"name":"Hape prime","sub":"view info","number":"180055.45","num":"-33,79%","image":"images/Shape(1).png"},
    {"name":"Cryoto","sub":"view info","number":"90055.62","num":"6,56%","image":"images/Shape(2).png"},
    {"name":"Ape Club","sub":"view info","number":"88055.12","num":"-3,99%","image":"images/Shape(3).png"},
    {"name":"Bat","sub":"view info","number":"10055.06","num":"3,99%","image":"images/Shape(4).png"},
    {"name":"Mutant","sub":"view info","number":"9095.27","num":"-3,96%","image":"images/Shape(5).png"},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff211134),
      body: ListView(children: [
        Container(
          alignment: Alignment.center,
          child:
           Padding(
             padding: const EdgeInsets.only(top: 25),
             child: Text("Stats",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w400),),
           )),
           SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Ranking",style: TextStyle(color: Colors.white,fontSize: 24),),
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Container(
              width: 164,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xff27143E),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 1,color: Color(0xff3C1E5D))
              ),
              child: Center(
                child: Text(" All categories ",
                style: TextStyle(color: Colors.white,fontSize: 15,fontStyle: FontStyle.italic
                )),
              ),
            ),
              Container(
              width: 164,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xff27143E),
                borderRadius: BorderRadius.circular(30),
                border: Border.all(width: 1,color: Color(0xff3C1E5D))
              ),
              child: Center(
                child: Text("  All Chains  ",
                style: TextStyle(color: Colors.white,fontSize: 15,fontStyle: FontStyle.italic
                )),
              ),
            )
          ],),

          Padding(
            padding: const EdgeInsets.only(left:12,right: 12,top: 30),
            child: Container(
              height: 800,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 2,color: Color(0xff3C1E5D)),
                color: Color(0xff31194E)
              ),
              child: ListView.builder(
                itemCount: list4.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    leading: Image.asset(list4[index]["image"]),
                    title: Text(list4[index]["name"],style: TextStyle(color: Colors.white,fontSize: 19),),
                    subtitle: Text(list4[index]["sub"],style: TextStyle(color: Colors.grey,fontSize: 15),),
                    trailing: Column(children: [
                      Text(list4[index]["number"],style: TextStyle(color: Colors.grey,fontSize: 15)),
                      SizedBox(height: 4,),
                      Text(list4[index]["num"],style: TextStyle(color: index.isOdd?Colors.red:Colors.green,fontSize: 12))
                    ]),
                  );
                
              })),
            ),
          )
      ]),
    );
  }
}