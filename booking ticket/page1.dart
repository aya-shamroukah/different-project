// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:health/projects/movie/item.dart';
import 'package:health/projects/movie/movieitem.dart';



class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: Container(decoration: BoxDecoration(gradient: LinearGradient(
              colors: [Color(0xff604BA4),Color(0xff130B2B)])),
          
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ListView(children: [
                Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top: 20),
                  child: 
                Text("Choose Movie",style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic,fontSize: 20),)
                ),
              Padding(
                padding: const EdgeInsets.only(top: 30,right: 25,left: 25),
                child: Container(width: 343,
                    height: 40,
                    decoration: BoxDecoration(color: Color(0xff767680).withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10)),
                     child: Row(
                      children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(Icons.search,color: Colors.grey,),
                      ),
                      Text(" Search",style: TextStyle(color: Colors.grey,fontSize: 15),),
                      SizedBox(width: 220,),
                      Icon(Icons.keyboard_voice,color:Colors.grey)
                     ],),
                      ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Text('Now Playing',style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
            Now_Playing(),
              
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text('Coming Soon',style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
             Container(
               height: 130,
                child: Expanded(child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: nowplaying.length,
                  itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,),
                    width: 100,
                    height: 130,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("${comingsoon[index]["image"]}",width: 150,)
                  );
                })),
              ),
         
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text('Top movies',style: TextStyle(color: Colors.white,fontSize: 17),),
              ),
               Container(
                height: 130,
                child: Expanded(child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: nowplaying.length,
                  itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,),
                    width: 100,
                    height: 130,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset("${topmovie[index]["image"]}",width: 150,)
                  );
                })),
              ),
    
                
              ],),
              Container(
                decoration: BoxDecoration(gradient: LinearGradient(
              colors: [Color(0xff8056A2),Color(0xff685585)]),
             ),
                width: double.infinity,
              height: 70,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Icon(Icons.home,color: Colors.white,size: 30,),
               Icon(Icons.location_on,color: Colors.white,size: 30,),
                Icon(Icons.auto_awesome_motion,color: Colors.white,size: 30,),
                 Icon(Icons.person,color: Colors.white,size: 30,),
            ],),
              )
            ],
          ) 
           ,),
    );
  }
}