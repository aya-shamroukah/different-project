import'package:flutter/material.dart';
import 'package:percentify/components/RoundedCircularPercentify.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Person extends StatefulWidget {
  const Person({super.key});

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  bool notify=false;
    bool notify1=true;

  @override
  Widget build(BuildContext context) {
    var precnt;
    return SafeArea( 
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 20,bottom: 20),
                  child: Text("hello john",
                  style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("reminder habit",
                  style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.w500),),
                ),
                SizedBox(height: 90,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  child: Center(
                    child: SwitchListTile(
                      title: Text("cycling",
                  style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),), 
                      inactiveTrackColor: Color(0xffC4C4C4),
                      inactiveThumbColor: Color(0xffFC7100),                      
                      activeColor: Colors.white,
                      activeTrackColor: Color(0xffFC7100),
                      value: notify,onChanged: (value) {
                      notify=value;
                    },),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  child: Center(
                    child: SwitchListTile(
                      title: Text("study",
                  style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),), 
                      inactiveTrackColor: Color(0xffC4C4C4),
                      inactiveThumbColor: Color(0xffFC7100),                      
                      activeColor: Colors.white,
                      activeTrackColor: Color(0xffFC7100),
                      value: notify,onChanged: (value) {
                      notify1=value;
                    },),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                  child: Center(
                    child: SwitchListTile(
                      title: Text("work",
                  style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),), 
                      inactiveTrackColor: Color(0xffC4C4C4),
                      inactiveThumbColor: Color(0xffFC7100),                      
                      activeColor: Colors.white,
                      activeTrackColor: Color(0xffFC7100),
                      value: notify1,onChanged: (value) {
                      notify=value;
                    },),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical:15),
                  child: Center(
                    child: SwitchListTile(
                      title: Text("running",
                  style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),), 
                      inactiveTrackColor: Color(0xffC4C4C4),
                      inactiveThumbColor: Color(0xffFC7100),                      
                      activeColor: Colors.white,
                      activeTrackColor: Color(0xffFC7100),
                      value: notify,onChanged: (value) {
                      notify=value;
                    },),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: Text("result:",style: TextStyle(color: Colors.black,fontSize: 15),),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                         Center(
        child: RoundedCircularPercentify(
          40, // the value of progress
          backgroundColor: Colors.black45,
          valueColor: Color(0xfffC7100),
          strokeWidth: 10,
          valueStrokeWidth: 10,
          child: const SizedBox(
            width: 90,
            height: 90,
            child: Center(
                child: Text(
              "${13}%",
              style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ),
                        Center(
        child: RoundedCircularPercentify(
          40, // the value of progress
          backgroundColor: Colors.black45,
          valueColor: Color(0xfffC7100),
          strokeWidth: 10,
          valueStrokeWidth: 10,
          child: const SizedBox(
            width: 90,
            height: 90,
            child: Center(
                child: Text(
              "${40}%",
              style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ),
         Center(
        child: RoundedCircularPercentify(
          40, // the value of progress
          backgroundColor: Colors.black45,
          valueColor: Color(0xfffC7100),
          strokeWidth: 10,
          valueStrokeWidth: 10,
          child: const SizedBox(
            width: 90,
            height: 90,
            child: Center(
                child: Text(
              "${60}%",
              style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ),
                    ],
                  ),
                )
        ]),
      ),
    );
  }
}