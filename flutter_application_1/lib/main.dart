import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import "dart:math" as math;
//import "dart:developer" as dev;

var bars = ["hi", "bye", "hello", "world"];
var rand = math.Random();

void main()=>runApp(MyApp);


class MyWidget extends StatelessWidget{
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Center(
        child: Text(
          bars[rand.nextInt(bars.length)], 
          textDirection: TextDirection.ltr
          ),
      ),
    );
  }
}

