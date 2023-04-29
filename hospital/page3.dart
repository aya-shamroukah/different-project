import'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffD9D9D9),
       body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: 30,width: 30,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Color(0xff577CEF)),
                  child: IconButton(onPressed: () {
                    Navigator.of(context).pop();
                  },
                    icon: Icon(Icons.arrow_back,size: 15,))),
                  Text("Doctor Details",style: TextStyle(color: Color(0xff577CEF),fontSize: 20)),
                  Icon(Icons.more_vert,color: Color(0xff577CEF) ,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top:60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Dr. Stefannie',style: TextStyle(fontSize: 18,color: Color(0xff577CEF))),
                SizedBox(height: 5,),
                Text('Cardiologist \n A.j. Hospital, DA Washington ',
                style: TextStyle(fontSize: 16,color: Color(0xff577CEF).withOpacity(0.7)))
              ],),
              Container(
                height: 106,width: 113,
                decoration: BoxDecoration(
                  color: Color(0xff577CEF),
                  borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      children: [
                       
                        Center(
                          child: Container(
                            alignment: Alignment.center,
                            height: 90,width: 90,
                decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100)),
                          
                          ),
                        ), Positioned(right: 0.3,
                          child: Image.asset('images/attractive (1).png',scale:0.6,), ),
                      ],
                    ),
                  ),
              )
            ],),
            
          ),
           Padding(
             padding: const EdgeInsets.only(left: 30,top: 10),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('About Dr. Stefannie',style: TextStyle(fontSize: 18,color: Color(0xff577CEF))),
                 SizedBox(height: 10,),
                 Text("'Lorem ipsum dolor sit amet\nconsectetur adipiscing elit. Etiam eu turpis molestie, \n dictum est a, mattis tellus. Sed dignissim, metus nec \n fringilla accumsan, risus sem sollicitudin lacus, ut '",
                 style: TextStyle(fontSize: 14,color: Color(0xff577CEF).withOpacity(0.7)))
               ],
             ),
             
             
           ),
       ]),
    );
  }
}