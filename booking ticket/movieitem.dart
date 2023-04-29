import 'package:flutter/material.dart';
import 'package:health/projects/movie/item.dart';

class Now_Playing extends StatelessWidget {
  const Now_Playing({super.key});
  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: (){
        Navigator.of(context).pushNamed('view');
      },
      child: Container(
                  height: 130,
                  child: Expanded(child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: nowplaying.length,
                    itemBuilder: (context,index){
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: 100,
                      height: 130,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("${nowplaying[index]["image"]}",height: 130,)
                    );
                  })),
                ),
    );
  }
}
 
