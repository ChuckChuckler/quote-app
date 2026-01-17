import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import "dart:math" as math;
//import "dart:developer" as dev;

var bars = ["hi", "bye", "hello", "world"];
var rand = math.Random();

void main()=>runApp(const MaterialApp(
    title: "quotes aww",
    home: MyWidget()
  ));


class MyWidget extends StatefulWidget{
  const MyWidget({super.key});
  @override
  State<MyWidget> createState()=>_MyWidgetState();
}

class _MyWidgetState extends State<MyWidget>{
  String quote = bars[rand.nextInt(bars.length)];

  void newQuote(){
    setState((){
      quote=bars[rand.nextInt(bars.length)];
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              quote,
              textDirection: TextDirection.ltr
            ),
            ElevatedButton(
              onPressed: newQuote, 
              child: Text("change")
            )
          ],
        )
      )
    );
  }
}

