import 'package:flutter/material.dart';

class Data{
 Color blue60 = Color(0Xff73D0E6).withOpacity(0.6);
 Color yellow60 =  Color(0XffFEDE77).withOpacity(0.6);
 Color pink60 = Color(0XffFBA5B1).withOpacity(0.6);
 Color vr60 = Color(0XffBD25E5).withOpacity(0.4);
Color blue100 = Color(0Xff73D0E6).withOpacity(1);
 Color yellow100 =  Color(0XffFEDE77).withOpacity(1);
 Color pink100 = Color(0XffFBA5B1).withOpacity(1);
 Color black100 = Color(0Xff1A1A1A).withOpacity(1);
// var colors= [
//  Data().blue60,
//  Data().yellow60,
//  Data().pink60,
// ];
 static Map<int, Color> color = {
  50: Color.fromRGBO(255, 92, 87, .1),
  100: Color.fromRGBO(255, 92, 87, .2),
  200: Color.fromRGBO(255, 92, 87, .3),
  300: Color.fromRGBO(255, 92, 87, .4),
  400: Color.fromRGBO(255, 92, 87, .5),
  500: Color.fromRGBO(255, 92, 87, .6),
  600: Color.fromRGBO(255, 92, 87, .7),
  700: Color.fromRGBO(255, 92, 87, .8),
  800: Color.fromRGBO(255, 92, 87, .9),
  900: Color.fromRGBO(255, 92, 87, 1),
 };

 MaterialColor colorCustom = MaterialColor(0xFFFBA5B1, color);
}