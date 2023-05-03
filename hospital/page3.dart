import'package:flutter/material.dart';
import 'package:health/projects/hospital/time.dart';
import 'package:health/projects/sport/sport/home.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List days=[
    {'day':'Fri','date':'12'},
     {'day':'Sat','date':'13'},
      {'day':'Sun','date':'14'},
       {'day':'Mon','date':'15'},
        {'day':'Tue','date':'16'},
  ];
  bool click=true;
    bool click1=true;
     bool click2=true;
      bool click3=true;
       bool click4=true;
        bool click5=true;
         bool click6=true;
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
                 RichText(text: TextSpan(
                   style: TextStyle(fontSize: 14,color: Color(0xff577CEF).withOpacity(0.7)),
                  children: [
                  TextSpan(text:'Lorem ipsum dolor sit amet\nconsectetur adipiscing elit. Etiam eu turpis molestie, \n' ),
                 TextSpan(text: ' dictum est a, mattis tellus. Sed dignissim, metus nec \n fringilla accumsan, risus sem sollicitudin lacus, ut\n '),
                 TextSpan(text: 'interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class \n '),
                TextSpan(text: 'aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. ')
                 ],
                 )
                 )
               ],
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 30,top: 30),
             child: Text('Appointment Schedule',style: TextStyle(fontSize: 18,color: Color(0xff577CEF))),
           ),
           SizedBox(height: 20,),
          
           SizedBox(width: 400,height:110 ,
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20),
               child: ListView.builder(
                itemCount: days.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                 return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                       onTap: (){
                  setState(() {
                  click=!click;
                  });
                  },
                      child: Container(
                        width: click?80:80,height:click?80:110 ,
                        decoration: BoxDecoration(
                           boxShadow: [ BoxShadow(offset: Offset(0,9),blurRadius: 3,color: Colors.black38.withOpacity(0.2))],
                          color: click?Colors.white.withOpacity(0.5):Color(0xff577CEF),
                          borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: click?1:0,color: click?Colors.black.withOpacity(0.5):Colors.white24)),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(days[index]['day'],style: TextStyle(fontSize: 15,color: click?Colors.black:Colors.white),),
                          ),
                           Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(days[index]['date'],style: TextStyle(fontSize: 18,color:click?Colors.black:Colors.white),),
                          )
                        ]),
                      ),
                    ),
                  )
                 ],) ;
               },),
             ),
           ),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.all(10.0),
             child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(children: [
                  InkWell(
                     onTap: (){
                      setState(() {
                      click1=!click1;
                      });
                      },
                    child: time(click1: click1,text: '12:30 PM', click2: click1,click3: click1),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: InkWell(
                       onTap: (){
                        setState(() {
                        //click1=!click1;
                        click2=!click2;
                        });
                        },
                      child: time(click1: click2,text: '10:00 AM', click2: click2,click3: click2),
                  ),
                   ),
                    Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: InkWell(
                       onTap: (){
                        setState(() {
                        //click1=!click1;
                        click3=!click3;
                        });
                        },
                      child: time(click1: click3,text: '3:45 PM', click2: click3, click3: click3,),
                  ),
                   )
                ],),
              ),  
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(children: [
                  InkWell(
                     onTap: (){
                      setState(() {
                      click4=!click4;
                      });
                      },
                    child: time2(click4: click4,text: '12:00 PM', click5: click4,click6: click4),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: InkWell(
                       onTap: (){
                        setState(() {
                        //click1=!click1;
                        click5=!click5;
                        });
                        },
                      child: time2(click5: click5,text: '7.30 PM', click4: click5,click6: click5),
                  ),
                   ),
                    Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: InkWell(
                       onTap: (){
                        setState(() {
                        //click1=!click1;
                        click6=!click6;
                        });
                        },
                      child: time2(click6: click6,text: '9.00 PM', click5: click6, click4: click6,),
                  ),
                   )
                ],),
              ),
             ],),
           ),
           SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              InkWell(
                 onTap: (){
                        Navigator.of(context).pushNamed('page4');
                      },
                child: Container(
                  width: 250,height: 58,
                  decoration: BoxDecoration(
                    boxShadow: [ BoxShadow(offset: Offset(0,7),blurRadius: 3,color: Colors.black38.withOpacity(0.2))],

                    color: Color(0xff577CEF),borderRadius: BorderRadius.circular(15)),
                  child:  Column(
                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                              height: 5,width: 60,
                              decoration: BoxDecoration(
                                color: Color(0xffD9D9D9),
                             borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            Text('Book Appointment')
                    ],
                  ),
                ),
              ),SizedBox(width: 10,),
              Container(
                 width: 67,height: 60,
                decoration: BoxDecoration(
                    boxShadow: [ BoxShadow(offset: Offset(0,7),blurRadius: 3,color: Colors.black38.withOpacity(0.2))],
                  

                  color: Color(0xff577CEF),borderRadius: BorderRadius.circular(15)),
                child: Icon(Icons.email),
              )
             ],),
           )
       ]),
    );
  }
}

