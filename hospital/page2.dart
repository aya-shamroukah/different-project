
import'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  List Specialist=[{'title':'Dental Specialist'},
  {'title':'Heart Specialist'},
  {'title':'Medicine Specialist'},
  {'title':'Dental Specialist'}];
  List doctor=[{'image':'images/attractive (4).png','doctorname':'Dr. Krystal Jung','dec':'Dermatologists \n A.j. Hospital, DA Washington '},
  {'image':'images/attractive (3).png','doctorname':'Dr. Bae Johyun','dec':'Medicine \n A.j. Hospital, DA Washington '},
  {'image':'images/attractive (1).png','doctorname':'Dr. Stefannie','dec':'Cardiologist \n A.j. Hospital, DA Washington '}];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffD9D9D9),
        body: Column(children: [
          SizedBox(height: 30,),
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
                  Text("Find Doctor",style: TextStyle(color: Color(0xff577CEF),fontSize: 20)),
                  Icon(Icons.more_vert,color: Color(0xff577CEF) ,)
              ],
            ),
          ),
           SizedBox(height: 30,),
          SizedBox(
            width: double.infinity,height: 76,
            child: ListView.builder(
                 itemCount: Specialist.length,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: ((context, index) {
                 return Row(
                   children: [Padding(
                     padding: const EdgeInsets.all(10.0),
                     child: Container(
                       alignment: Alignment.center,
                       width: 136,height: 76,
                        decoration: BoxDecoration(
                     boxShadow: [ BoxShadow(offset: Offset(0,7),blurRadius: 10,color: Colors.black38)],
                         borderRadius: BorderRadius.circular(11),color: Color(0xff577CEF)),
                         child: Text(Specialist [index]['title'],style: TextStyle(fontSize: 13),),
                     ),
                   )],
                 )
                 ;
               })),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Text("See all",style: TextStyle(color: Color(0xff577CEF).withOpacity(0.8),fontSize: 15)),
              ),
              Container(
                height: 12,width: 12,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Color(0xff577CEF)),
                child: Icon(Icons.arrow_forward,size: 10,))
            ],),
          ), 
          Expanded(
           // width: 368,height:double.infinity,
            child: ListView.builder(
              itemCount: doctor.length,
              itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 10,bottom: 20,right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 2,horizontal: 10),
                       decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),
                       topRight: Radius.circular(15)),
                       color: Color (0xffEDEDED),),
                      width: 96,height: 74,
                      child: Container(
                      //  padding: EdgeInsets.all(2),
                        width: 68,height: 65,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(38),color: Color(0xff577CEF) ),
                    
                    child: ClipRRect(
                      child: Image.asset(doctor [index]['image'],fit: BoxFit.fitHeight,))  
                    ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed('page3');
                    },
                    child: Container(
                      width: double.infinity,
                      child: Row(
                         crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            height: 151,width: 300,
                            decoration: BoxDecoration(color: Color(0xffD9D9D9),
                            border: Border.all(width: 0.5,color: Colors.white),
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(110)),
                            boxShadow: [ BoxShadow(offset: Offset(0,7),blurRadius: 10,color: Colors.black38)],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height:10),
                                Text(doctor[index]['doctorname']
                                ,style: TextStyle
                                (color: Color(0xff577CEF),fontSize: 17,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                            SizedBox(height: 5,),
                               Text(doctor[index]['dec']
                                ,style: 
                                TextStyle(color: Color(0xff577CEF),fontSize: 15,fontWeight: FontWeight.w400,),),
                                SizedBox(height: 15,),
                                Row(children: [
                                  Icon(Icons.star,color: Colors.yellow,),
                                    Icon(Icons.star,color: Colors.yellow,),
                                      Icon(Icons.star,color: Colors.yellow,),
                                        Icon(Icons.star,color: Colors.yellow,),
                                          Icon(Icons.star,color: Colors.grey,),
                                          SizedBox(width: 10,),
                                          Text("( 124 Reviews )",style: TextStyle(color:  Color(0xff577CEF).withOpacity(0.6)),)
                                ],)
                              ]),
                            ),
                          ),
                          Container(
                            height: 38,width: 38,
                            decoration:  BoxDecoration(color: Color(0xffEDEDED),
                            border: Border.all(width: 1,color: Colors.white),
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [ BoxShadow(offset: Offset(0,7),blurRadius: 7,color: Colors.black38)],
                            ), 
                            child: Icon(Icons.phone,color: Color(0xff577CEF).withOpacity(0.7),),
                          ),SizedBox(width: 5,),
                           Container(
                            height: 38,width: 38,
                            decoration:  BoxDecoration(color: Color(0xffEDEDED),
                            border: Border.all(width: 1,color: Colors.white),
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [ BoxShadow(offset: Offset(0,7),blurRadius: 7,color: Colors.black38)],
                            ), 
                            child: Icon(Icons.email,color: Color(0xff577CEF).withOpacity(0.7),),
                          )
                          
                        ],
                      ),
                    ),
                  )
                  ],
                  
                ),
              );
            },),
          )
        ]),
      ),
    );
  }
}