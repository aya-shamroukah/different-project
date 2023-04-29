import'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

class Social extends StatefulWidget {
  const Social({super.key});

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
  List story=[
    {"name":"Add Story", "image":"images/menu.png"},
    {"name":"Samera", "image":"images/Rectangle 41869(1).png"},
    {"name":"Julien", "image":"images/Rectangle 41869.png"},
    {"name":"Mariane", "image":"images/Rectangle 41869(2).png"}

  ];
  List post=[{"name":"Jemma Ray","time":" 19 hour ago", "image":"images/Rectangle 41864(1).png","imagepost":"images/Rectangle 41912.png"},
  {"name":"Jung Taekwoon", "time":" 01 day ago","image":"images/Rectangle 41864.png","imagepost":"images/Rectangle 41912(2).png"},
  {"name":"Eric Ray", "time":" 20 hour ago","image":"images/5 (2).png","imagepost":"images/Rectangle 41912(1).png"},
  
  
  
  ]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          width: 428,
          height: 285,
          decoration: BoxDecoration(color: Color(0xff222222),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(42),
          bottomRight: Radius.circular(42))
          ),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top:45,left: 15,right: 15),
              //like appbar
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Image.asset("images/menu.png"),
                Container(
                  width: 153,
                  height: 55,
                  decoration: BoxDecoration(color: Color(0xff2F2F2F),
                  borderRadius: BorderRadius.circular(28)),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Icon(Icons.notifications,color: Colors.grey,),
                    Container(width: 73,
                    height: 49,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(28),
                    color: Colors.white),
                    child: Icon(Icons.mail_outline,color: Colors.grey,),)
                  ],),)
              ],),
            ),
            SizedBox(height: 19),
            //story
            Container(
              width: double.infinity,
              height: 130,
              child: Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: story.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        //الكونتينر الملون 
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          width: 84,
                          height: 84,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(38),
                            gradient: LinearGradient(begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                              colors: [Color(0xffFF7A51),Color(0xffFFDB5C)])),
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          //الكونتينر الاسود يلي فوق الملون
                          child: Container(
                            width: 84,
                            height: 84,
                            decoration: BoxDecoration(
                              
                              borderRadius: BorderRadius.circular(38),
                              color: Color(0xff222222)
                              ),
                              child: Image.asset("${story[index]["image"]}")
                          ),
                        ),
                        ),
                        SizedBox(height: 10,),
                        Text("${story[index]["name"]}",style: TextStyle(color: Colors.white,fontSize: 14),)
                      ],
                    );
                  })),
              ),
            )
          ]),
        ),
        Expanded(child: 
        //list viev for posts
        ListView.builder(
          itemCount: post.length,
          itemBuilder: (((context, index) {
          return Column(
            children: [
              Container(
              
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(39),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [Image.asset("${post[index]["imagepost"]}"),
                    Row(children: [
                      //for image 
                         Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(38),
                                  gradient: LinearGradient(begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                    colors: [Color(0xffFF7A51),Color(0xffFFDB5C)])),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    
                                    borderRadius: BorderRadius.circular(38),
                                    color: Color(0xff222222)
                                    ),
                                    child: Image.asset("${post[index]["image"]}",scale: 1.1,)
                                ),
                              ),
                              ),
                              //column foe the name and date
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text(" ${post[index]["name"]}",style: TextStyle(color: Colors.white,fontSize: 16,),),
                              Text("${post[index]["time"]}",style: TextStyle(color: Colors.grey[400],fontSize: 14,fontStyle: FontStyle.italic))],),
               SizedBox(width: 150,),
                  Row(children: [
                    Container(
                      decoration: BoxDecoration(color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(50)),
                      width: 57,
                      height: 57,
                      child: Image.asset("images/frame.png"),)
                  ],)
                    ],),
                    //for like and comment
                    Padding(
                      padding: const EdgeInsets.only(top:130,right: 30),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Column(
                          children: [Image.asset("images/Vector1.png"),
                          SizedBox(height: 30,),
                        Column(children: [Image.asset("images/Vector(2).png"),
                        Text("273",style: TextStyle(color: Colors.grey[400],fontSize: 14,fontStyle: FontStyle.italic))],),
                        SizedBox(height: 25,),
                          Container(
                      width: 59,
                      height: 80,
                      decoration: BoxDecoration(border:Border.all(width:0.2 ,color: Colors.white.withOpacity(0.5)),
                      borderRadius: BorderRadius.circular(28)),
                      child: Column(mainAxisAlignment:MainAxisAlignment.center,
                        children: [Image.asset("images/Vector(1).png"),
                       Text("2.4k",style: TextStyle(color: Colors.grey[400],fontSize: 14,fontStyle: FontStyle.italic))
                      ]),)],  ),
                      ),
                    ),
                  
                    ]),
                ),
              ),
              //for write comment
              Container(
                width: 409,
                height: 67,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  color: Color(0xffF8F8F8)),
                  child:
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(children: [Image.asset("images/Rectangle 41864(1).png",scale: 2,),
                        SizedBox(width: 10,),
                        Text("Add a comment...",style: TextStyle(color: Colors.grey,fontSize: 14,fontStyle: FontStyle.italic))]),
                      Text("(273 comments)",style: TextStyle(color: Colors.black,fontSize: 14,fontStyle: FontStyle.italic))
                      ],
                    ),
                  ) ,
                  ),
                  
            ],
          );
        }))))
      ]),
    );
  }
}