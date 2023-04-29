import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff09090F),
      bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.grey,),label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.play_arrow,color: Colors.grey),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.grey),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.grey),label: ""),

      ]),
      body: SafeArea(
        
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left:20,top: 25),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
                children: [
                  Text("Hello",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  Text("Daizy !",style: TextStyle(color: Colors.grey,fontSize: 25),),
                  SizedBox(width: 180,),
                  CircleAvatar(backgroundImage: AssetImage("images/image 16.png"),)
                ],
              ),
              SizedBox(height: 10,),
              Text("Check for latest addition",style: TextStyle(color: Colors.grey,fontSize: 15)),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
                child: TextFormField(                            
                     decoration: InputDecoration(
                      fillColor: Colors.grey,
                      prefixIcon: Icon(Icons.search,color: Colors.grey,),
                      hintText: "search:",
                      hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey),               
                      ),
                        enabledBorder:OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.grey)) 
                     ),
                ),
              ),
              SizedBox(height: 35,),
              Text("Filters",style: TextStyle(color: Colors.white,fontSize: 20),),
                   SizedBox(height: 15,),
         
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
          margin:EdgeInsets.symmetric(horizontal: 5) ,
                      decoration: BoxDecoration(
                        color: Colors.grey[600],                   
                        borderRadius: BorderRadius.circular(12)),
                        child: Icon(Icons.auto_awesome_motion,color: Colors.white,),),
                        SizedBox(height: 8,),
                        Text("Genre",style: TextStyle(color: Colors.grey,fontSize: 10),)
                  ],
                ),
                       Column(
                         children: [
                           Container(
                  padding: EdgeInsets.all(12),
          margin:EdgeInsets.symmetric(horizontal: 5) ,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],                   
                    borderRadius: BorderRadius.circular(12)),
                    child: Icon(Icons.star,color: Colors.white,),),
                    SizedBox(height: 8,),
                            Text("Top IMDB",style: TextStyle(color: Colors.grey,fontSize: 10),)
                
                         ],
                       ),
                       Column(
                         children: [
                           Container(
                  padding: EdgeInsets.all(12),
          margin:EdgeInsets.symmetric(horizontal: 5) ,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],                   
                    borderRadius: BorderRadius.circular(12)),
                    child: Icon(Icons.language,color: Colors.white,),),
                    SizedBox(height: 8,),
                          Text("Language",style: TextStyle(color: Colors.grey,fontSize: 10),)

                         ],
                       ),
                       Column(
                         children: [
                           Container(
                  padding: EdgeInsets.all(12),
          margin:EdgeInsets.symmetric(horizontal: 5) ,
                  decoration: BoxDecoration(
                    color: Colors.grey[600],                   
                    borderRadius: BorderRadius.circular(12)),
                    child: Icon(Icons.maps_ugc,color: Colors.white,),),
                    SizedBox(height: 8,),
                      Text("Watched",style: TextStyle(color: Colors.grey,fontSize: 10),)

                         ],
                       ),                   
              ],),
              SizedBox(height: 30,),
                Row(
                children: [
                  Text("Featured",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  Text(" Series",style: TextStyle(color: Colors.grey,fontSize: 20),),
                  SizedBox(width: 180,),
                ],
              ),
                            SizedBox(height: 30,),

              Container(
                padding: EdgeInsets.only(left: 45),
                width: 300,
                height: 350,
                child: ClipRRect(borderRadius: BorderRadius.circular(20),
                  child: Image.asset("images/Untitled.jpg",fit: BoxFit.fill,),),
              )

            ]),
          ),
        ),
      ),
    );
  }
}