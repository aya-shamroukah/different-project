import'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
class Nft extends StatefulWidget {
  const Nft({super.key});

  @override
  State<Nft> createState() => _NftState();
}

class _NftState extends State<Nft> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
          Positioned.fill(child: Image.asset("images/javier (1).png",fit: BoxFit.fill,)),
          Column(children: [Padding(
            padding: const EdgeInsets.only(top: 80,right: 26,left: 26),
            child: Text("Welcome to \nNFT Marketplace",
            style: TextStyle(color: Colors.white,fontSize: 36,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 450,),
           Center(
             child: Container(
               width: 306,
               height: 200,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30),
                 gradient: LinearGradient(begin: Alignment.topLeft,
                 end: Alignment.bottomRight,
                 colors: [
                   Colors.white.withOpacity(0.5),
                   Colors.white.withOpacity(0.1)
                 ],
                // stops: [0.2,1.0]
                 )),
                 child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top:25,bottom: 8),
                    child: Text("Explore and Mint NFTs",style: 
                    TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),),
                  ),
                  Text("You can buy and sell the NFTs of the best \n artists in the world.",
                  style: TextStyle(color: Color(0xffEBEBF5),fontSize: 11)),
                  SizedBox(height: 25,),
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).pushNamed('nft1');
                  },
                  child: Text("Get started now"),
                  style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff97A9F6)),
                           
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(33)))),
                  )
                 ]),
             ),
           )
          
          ],),
           
        ]),
      ),
    );
  }
}