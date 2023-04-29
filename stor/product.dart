import'package:flutter/material.dart';
import 'package:health/projects/stor/product_image.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _Page1State();
}

class _Page1State extends State<Product> {
  late final Color fillcolor;
  final bool Isselect=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 104, 179, 240),
      appBar: AppBar(backgroundColor: Color(0xffF1EfF1),
      elevation: 0,
      leading:IconButton(
        padding: EdgeInsets.only(left: 15),
        color:  Color.fromARGB(255, 104, 179, 240),
        
        icon:Icon( Icons.arrow_back,),onPressed: (() {
        Navigator.of(context).pop();
      }),),
      title: Text("Back",style: TextStyle(  
        color:  Color.fromARGB(255, 104, 179, 240),fontStyle: FontStyle.italic,fontWeight: FontWeight.w700),),
     ) ,
     body: Column(
       children: [
         Stack(
           children: [
             Productimage(image:"images/airpod.png"),
             Positioned(
              bottom: 70,left: 100,
              child: Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:20.0),
                    child: colordot(
                      Isselect: true, fillcolor: Color.fromARGB(255, 128, 126, 128)),
                  ),
                    colordot(
                Isselect:false, fillcolor:Color.fromARGB(255, 104, 179, 240)), 
                colordot(
                Isselect: false, fillcolor: Color.fromARGB(255, 104, 179, 240)), 
                ],
              ), 
                ),
                Positioned(
                  bottom: 60,left: 100,
                  child:  Text("Bluetooth earbuds"
                  ,style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.w500),)),
                Positioned(
                   bottom: 30,left: 15,
                  child:  Text("Price\$400"
                  ,style: TextStyle(color: Color(0xfffcca46),fontSize: 20,fontWeight: FontWeight.w400),)),
                 
               
           ],
         ), Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          padding: EdgeInsets.all(20),
                    child: Text("descrabtion",style: TextStyle(fontSize: 20)),
                  )
       ],
     ),
     );
  }

  
}

class colordot extends StatelessWidget {
  const colordot({
    Key? key,
    required this.Isselect,
    required this.fillcolor,
  }) : super(key: key);

  final bool Isselect;
  final Color fillcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
     Container(
      padding: EdgeInsets.all(3),
         margin: EdgeInsets.symmetric(horizontal: 20),
         height: 24,width: 24,
         decoration: BoxDecoration(shape: BoxShape.circle,
         border: Border.all(color:Isselect? Color.fromARGB(255, 128, 126, 128):Colors.transparent,)
         ),
         child: Container(
         decoration: BoxDecoration(shape: BoxShape.circle,
    color:fillcolor
         ),
         ),
     )
         ],),
    );
  }
}
