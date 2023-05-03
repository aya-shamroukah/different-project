
import'package:flutter/material.dart';
class time extends StatelessWidget {
  const time({
    Key? key,
    required this.click1, required this.text, required this.click2, required this.click3,
  }) : super(key: key);

  final bool click1;
  final bool click2;
   final bool click3;
   final String text;
  @override
  Widget build(BuildContext context) {
    return Container( width: 100,height: 50,
    alignment: Alignment.center,
      decoration: BoxDecoration(
                color:click3||click2 || click1?Color(0xff577CEF):Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
              border: Border.all(width: click3||click2 ||click1?1:0,color:click3||click2 || click1?Color(0xff577CEF):Color(0xff577CEF))),
              child: Text(text,style: TextStyle(color:click3||click2 || click1?Colors.white:Color(0xff577CEF)),),
              );
  }
}
class time2 extends StatelessWidget {
  const time2({
    Key? key,
    required this.click4, required this.text, required this.click5, required this.click6,
  }) : super(key: key);

  final bool click4;
  final bool click5;
   final bool click6;
   final String text;
  @override
  Widget build(BuildContext context) {
    return Container( width: 100,height: 50,
    alignment: Alignment.center,
      decoration: BoxDecoration(
                color:click4||click5 || click6?Color(0xff577CEF):Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(15),
              border: Border.all(width: click4||click5 ||click6?1:0,color:click4||click5 || click6?Color(0xff577CEF):Color(0xff577CEF))),
              child: Text(text,style: TextStyle(color:click4||click5 || click6?Colors.white:Color(0xff577CEF)),),
              );
  }
}