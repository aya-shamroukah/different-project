import'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Doctor extends StatefulWidget {
  const Doctor({super.key});

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff577CEF),
        body: Column(
          children: [
            
            Stack(
              children: [
                
                Column(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 200),
                      child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 130,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 30,),
                                Text("Consult to your ",style: TextStyle(fontSize: 14,color: Color(0xff577CEF)),),
                                Text("Online  ",style: TextStyle(fontSize: 24,color: Color(0xff577CEF)),),
                                Text("Doctor ",style: TextStyle(fontSize: 18,color: Color(0xff577CEF)),),
                              ],
                            ),
                          ),
                          Container(height: 310,
                            width: 291,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(100),topLeft: Radius.circular(50),
                              bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                              color: Colors.white,
                            ),
                            child: Stack(children: [
                              Positioned(right: 0,
                                child: Container(height: 180,width: 190,
                                
                               decoration: BoxDecoration(
                                
                              borderRadius: BorderRadius.circular(100),
                              color: Color(0xff577CEF),
                            ),
                              )),
                              Positioned(bottom: 0,right:20,child: Image.asset("images/attractive (5).png",scale: 1,))
                            ]),
                            )
                        ],
                      ),
                      
                    ),
                    SizedBox(height: 40,),
                Container(
                  width: 310,
               height: 208,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30),
                 gradient: LinearGradient(begin: Alignment.topLeft,
                 end: Alignment.bottomRight,
                 colors: [
                   Colors.white.withOpacity(0.5),
                   Colors.white.withOpacity(0.1)
                 ],
                 )),
                 child: Column(
                  
                  //mainAxisAlignment: MainAxisAlignment.t,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      height: 7,width: 60,
                      decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                     borderRadius: BorderRadius.circular(15),
                      ),
                    ),   SizedBox(height: 30,),
                    Text("Find a new doctor to cure your illness.",style: TextStyle(fontSize: 14),),
                    SizedBox(height: 40,),
                    Container(
                      height: 49,
                      width: 127,
                        decoration: BoxDecoration(
                        color: Colors.white,
                     borderRadius: BorderRadius.circular(55),
                      ),
                      child: MaterialButton(onPressed: (){
                        Navigator.of(context).pushNamed('page2');
                      },
                      color: Colors.white,
                      child: Text("Get Started",style: TextStyle(color: Color(0xff577CEF)),),
                      ),
                    )
                  ],
                 ),
                )  ],
                ),
    Positioned(right: 0,child: Image.asset("images/Rectangle5.png",scale: 1,)),
                Positioned(left: 0,child: Image.asset("images/attractive (2).png")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}