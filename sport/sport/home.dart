   import'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.only(top: 60,left: 30),
          child: Text("activitles",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w700),),
        ),
        SizedBox(height: 60,),
        SizedBox(height: 96,width: double.infinity,
          child: Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
               Row(  mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   day(color: Color(0xffFD8E4A),dayname: "mon",num: '5',),
                day(color:Colors.white,dayname: "tus",num: '6',),
                day(color: Colors.white,dayname: "wed",num: '7',), 
                 day(color: Colors.white,dayname: "the",num: '8',),
                day(color: Colors.white,dayname: "fri",num: '9',),
                day(color: Colors.white,dayname: "sat",num: '10',),
                ],
               )
              ],
            ),
          ),
          
        ),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              Text("outdoot",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.black),),
              SizedBox(width: 10,),
              Text("lndoor",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Color(0xffE5E5E5)),),

            ],
          ),
        ),
         SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Center(
            child: Container(
              width: 370,height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(colors: [Color(0xff0056FF),Color(0xff3A78F1)])),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(children: [Text("yoga",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
                  SizedBox(height: 20,),
                  Container(
                    width: 73,height:28,
                    decoration: BoxDecoration(
                      color: Colors.white,
                       borderRadius: BorderRadius.circular(13),
                    ),
                  )],),
                  Image.asset("images/Yoga 1.png")
                ]),
              ),
              ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Center(
            child: Container(
              width: 370,height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(colors: [Color(0xff00C8F5),Color(0xff7090CE),Color(0xff7090CE)])),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(children: [Text("cycling",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
                  SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.center,
                    width: 73,height:28,
                    decoration: BoxDecoration(
                      color: Colors.white,
                       borderRadius: BorderRadius.circular(13),
                    ),
                    child: Text('now',style: TextStyle(color: Colors.black,fontSize: 9),),
                  )],),
                  Image.asset("images/Cycling 1.png")
                ]),
              ),
              ),
          ),
        ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Center(
            child: Container(
              width: 370,height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(colors: [Color(0xffFD7267),Color(0xffE061AE),Color(0xffD35ACD)])),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(children: [Text("running",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
                  SizedBox(height: 20,),
                  Container(
                    alignment: Alignment.center,
                    width: 73,height:28,
                    decoration: BoxDecoration(
                      color: Colors.white,
                       borderRadius: BorderRadius.circular(13),
                    ),
                    child: Text('start now',style: TextStyle(color: Colors.black,fontSize: 9),),
                  )],),
                  Image.asset("images/Running 1.png")
                ]),
              ),
              ),
          ),
        ),
      ]) ,
    );
  }
}
class day extends StatelessWidget {
  const day({
    Key? key, this.color,  required this.dayname,  required this.num,
  }) : super(key: key);
 final color;
 final String dayname;
 final  String num;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(height: 91,width: 79,
      
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(boxShadow: [ BoxShadow(offset: Offset(0,15),blurRadius: 18,color: Colors.black26),],
      color: color,borderRadius: BorderRadius.circular(16)),
      
      child: Column(children: [
        Text('$dayname',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.black),),
        Text('$num',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.black),),
       
        
      ]),
      
      ),
    );
  }
}
  