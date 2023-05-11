import'package:flutter/material.dart';
import 'package:percentify/components/RoundedCircularPercentify.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD9D9D9),
      body: Column(children: [
       SizedBox(height: 40,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30,width: 30,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Color(0xff577CEF)),
                  child: IconButton(onPressed: () {
                    Navigator.of(context).pop();
                  },
                    icon: Icon(Icons.arrow_back,size: 15,))),
                  Text("Health Status",style: TextStyle(color: Color(0xff577CEF),fontSize: 20)),
                  Icon(Icons.more_vert,color: Color(0xff577CEF) ,)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 175,height: 141,
                decoration: BoxDecoration(color: Color(0xff577CEF),
                borderRadius: BorderRadius.circular(17),
                 boxShadow: [ BoxShadow(offset: Offset(0,7),blurRadius: 10,color: Colors.black38)],),
                 child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:15.0,left: 15,bottom: 5),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Icon(Icons.place_outlined,size: 25,),
                        SizedBox(width: 10,),
                        Text('1km',style: TextStyle(fontSize: 17),)
                      ],
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top:10.0,left: 15,bottom: 5),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Icon(Icons.access_time,size: 25,),
                        SizedBox(width: 10,),
                        Text('35min 33 sec',style: TextStyle(fontSize: 17),)
                      ],
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(top:10.0,left: 15,bottom: 5),
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                        Icon(Icons.local_fire_department,size: 25,),
                        SizedBox(width: 10,),
                        Text('114 calories',style: TextStyle(fontSize: 17),)
                      ],
                      ),
                    )
                  ],
                 ),
              ),
               Container(
                width: 116,height: 147,
                decoration: BoxDecoration(color: Color(0xff577CEF),
                 boxShadow: [ BoxShadow(offset: Offset(0,7),blurRadius: 10,color: Colors.black38)],
                borderRadius: BorderRadius.circular(17)),
                child: Padding(
                  padding: const EdgeInsets.only(top:12.0,left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Walk'),
                     Center(
        child: RoundedCircularPercentify(
          40, // the value of progress
          backgroundColor: Colors.white.withOpacity(0.5),
          valueColor: Colors.white,
          strokeWidth: 10,
          valueStrokeWidth: 10,
          child: const SizedBox(
            width: 90,
            height: 90,
            child: Center(
                child: Text(
              "2850 \nSteps",
              style: TextStyle(fontSize: 10, color: Colors.white,fontWeight: FontWeight.bold),

            )),
          ),
        ),
      ),
      Row(
        children: [
          SizedBox(width: 55,),
          Icon(Icons.directions_walk),
        ],
      )
                  ]),
                ),
              )
            ],
          ),
          SizedBox(height:15),
          Padding(
            padding: const EdgeInsets.only(top:10.0,left: 20,bottom: 5),
            child: Row(
              children: [
              Padding(
                padding: const EdgeInsets.only(top:10.0,left: 15,bottom: 5),
                child: Container(
                  width: 116,height: 211,
                   decoration: BoxDecoration(color: Color(0xff577CEF),
                     boxShadow: [ BoxShadow(offset: Offset(0,7),blurRadius: 10,color: Colors.black38)],
                    borderRadius: BorderRadius.circular(17)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Sleep'),
                        SizedBox(height: 40,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text('6.33',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 19),
                          child: Text('Hour',
                          style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.white.withOpacity(0.7)),),
                        ),
                        SizedBox(height: 31,),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Image.asset('images/Group.png'),
                        )
                      ]),
                    ),
                ),
              ),
              SizedBox(width: 50,),
              Container(
                 width: 175,height: 211,
                 decoration: BoxDecoration(color: Color(0xff577CEF),
                   boxShadow: [ BoxShadow(offset: Offset(0,7),blurRadius: 10,color: Colors.black38)],
                  borderRadius: BorderRadius.circular(17)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text('Heart'),
                        ),
                      Image.asset('images/Group 43.png')
                      ],
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: 175,height: 125,
                      child: Image.asset('images/Line.png',fit: BoxFit.fill,scale: 0.6,)),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5,left: 20),
                        child: Text('BP 102'),
                      )
                  ]),
              )
            ],),
          ),
          Padding(
           padding: const EdgeInsets.only(top:10.0,left: 20,bottom: 5),
            child: Row(
              children: [
                Padding(
            padding: const EdgeInsets.only(top:10.0,left: 15,bottom: 5),

                  child: Container(
                      width: 175,height: 174,
                   decoration: BoxDecoration(color: Color(0xff577CEF),
                     boxShadow: [ BoxShadow(offset: Offset(0,7),blurRadius: 10,color: Colors.black38)],
                    borderRadius: BorderRadius.circular(17)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Water'),
                        SizedBox(height: 5,),
                        Row(children: [
                          Image.asset('images/Vecto.png'),
                          SizedBox(width: 15,),
                          Column(
                            children: [
                              Text('.55',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                              Text('Liters',style: TextStyle(color: Colors.white.withOpacity(0.7)),)
                            ],
                          )
                        ],),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                            Image.asset('images/Vector.png'),
                             Image.asset('images/Vector.png'),
                              Image.asset('images/Vector.png',color: Colors.white.withOpacity(0.5),),
                               Image.asset('images/Vector.png',color: Colors.white.withOpacity(0.5),),
                                Image.asset('images/Vector.png',color: Colors.white.withOpacity(0.5),)
                          ],),
                        )
                      ]),
                    ),
                  ),
                  
                ),
                SizedBox(width:44),
                Container(
                      width: 116,height: 174,
                   decoration: BoxDecoration(color: Color(0xff577CEF),
                     boxShadow: [ BoxShadow(offset: Offset(0,7),blurRadius: 10,color: Colors.black38)],
                    borderRadius: BorderRadius.circular(17)),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                  Text('Food'),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Fruits',style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 10),),
                     Text('80g',style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 10),)
                  ],),
                   SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Vegetables',style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 10),),
                     Text('45g',style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 10),)
                  ],),
                   SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Fat',style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 10),),
                     Text('50g',style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 10),)
                  ],),
                   SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('Non-fat',style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 10),),
                     Text('38g',style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 10),)
                  ],),
                  SizedBox(height: 19,),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Image.asset('images/Group 44.png',scale: 1,),
                  )
                      ],),
                    ),
                )
              ],
            ),
          ),
          SizedBox(height:30),
          Container(
              width: 312,height: 58,
                   decoration: BoxDecoration(color: Color(0xff577CEF),
                     boxShadow: [ BoxShadow(offset: Offset(0,7),blurRadius: 10,color: Colors.black38)],
                    borderRadius: BorderRadius.circular(17)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset('images/Vecto1.png'),
                      ),SizedBox(width: 70,),
                      
                      Text('Set Alarm',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                      ],
                    ),
          )
      ]),
    );
  }
}