import'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Nft1 extends StatefulWidget {
  const Nft1({super.key});

  @override
  State<Nft1> createState() => _Nft1State();
}

class _Nft1State extends State<Nft1> {
  List list1=[{"name":"Art","image":"images/Group1.png"},
  {"name":"Virtual Worlds","image":"images/Group2.png"},
  ];
  List list2=[
    {"name":"3D Art","like":"200","image":"images/javier (6).png"},
  {"name":"Abstract Art","like":"156","image":"images/javier (3).png"},
    {"name":"Portrait Art","like":"116","image":"images/img(5).png"},

  ];
   List list3=[
    {"name":"Wave","hach":"wav2 #5672","like":"2320","image":"images/javier (4).png"},
    {"name":"Abstract Pink","hach":"abstract #2538","like":"566","image":"images/javier (5).png"},
    {"name":"ball","hach":"baalli #4890","like":"790","image":"images/img(4).png"},

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff211134),
      body: ListView(children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30,),
            child: Text("NFT Marketplace", 
            style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w300)),
          ),
        ),
        SizedBox(height: 15,),
        Container(
          width: 200,
          height: 200,
          child: Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list1.length,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('nft2');
                  },
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [                
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(list1[index]["image"]),),
                    ),
                              //    Positioned(bottom: 20,
                  //    child: 
                               //Text(list1[index]["name"],style: TextStyle(color: Colors.white,fontSize: 22,),),
                   //      )
                  ],),
                );
              
            })),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15,left: 10),
          child: Text("Trending collections",
          style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal,),),
        ),
        Container(
          height: 240,
          child: Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list2.length,
              itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 15,left: 10,right: 15),
                child: Container(
                  margin: EdgeInsets.all(5),
                  width: 185,height: 216,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1,color: Color(0xff3C1E5D))
                    ),
                  child: 
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Image.asset(list2[index]["image"]),
                  ),
                  SizedBox(height: 9,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text(list2[index]["name"],style: TextStyle(color: Colors.white,fontSize: 13,)),
                    Row(
                      children: [
                      
                        Text(list2[index]["like"],style: TextStyle(color: Colors.grey,fontSize: 13,)),
                        SizedBox(width: 4,),
                          Icon(Icons.favorite,color: Colors.red,size: 17,),
                      ],
                    )
                    
                    ],
                  )
                ]),),
              );
            })),
          ),
        ),
         Padding(
          padding: const EdgeInsets.only(top: 15,left: 10),
          child: Text("Top seller",
          style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.normal,),),
        ),
         Container(
          height: 280,
          child: Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list3.length,
              itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 15,left: 10,right: 15),
                child: Container(
                  margin: EdgeInsets.all(5),
                  width: 185,height: 216,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 1,color: Color(0xff3C1E5D))
                    ),
                  child: 
                Column(
                  children: [
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Image.asset(list3[index]["image"]),
                  ),
                  SizedBox(height: 11,),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 10),
                    child: Text(list3[index]["name"],style: TextStyle(color: Colors.white,fontSize: 13,))),
                  SizedBox(height: 9,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [Text(list3[index]["hach"],style: TextStyle(color: Colors.grey,fontSize: 13,)),
                    Row(
                      children: [

                        Text(list3[index]["like"],style: TextStyle(color: Colors.grey,fontSize: 13,)),
                         SizedBox(width: 4,),
                          Icon(Icons.favorite,size: 17,),
                      ],
                    )
                    
                    ],
                  )
                ]),),
              );
            })),
          ),
        ),
      ]),
    );
  }
}