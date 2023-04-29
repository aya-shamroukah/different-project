import'package:flutter/material.dart';
import 'package:health/projects/sport/sport/home.dart';
import 'package:health/projects/sport/sport/person.dart';
import 'package:health/projects/stor/product.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Activite extends StatefulWidget {
  const Activite({super.key});

  @override
  State<Activite> createState() => _ActiviteState();
}

class _ActiviteState extends State<Activite> {
  int selectindex=0;
  List <Widget> widgetpage=[
    Home(),
    Person()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: selectindex,
        selectedItemColor: Color(0xffFB8C46) ,
        unselectedItemColor:  Colors.grey,
      iconSize: 35,
        onTap: (index) {
          
          setState(() {
            selectindex=index;
          });
        },
        elevation: 0,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,size: 35,),label: ""),
       BottomNavigationBarItem(icon: Icon(Icons.person,size: 30),label: "",),
        BottomNavigationBarItem(icon: Icon(Icons.settings,size: 30),label: ""),
       

      ]),
      backgroundColor: Colors.white,
      body: widgetpage.elementAt(selectindex),
   
    );
  }
}

