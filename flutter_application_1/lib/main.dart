import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import "dart:math" as math;
//import "dart:developer" as dev;

var bars = [
  '"Which English teacher has 7 kids" "Kanye West"',
  '"I want to hurry quicklier"',
  '"What is the burning point of an eagle"',
  '"Coo coo caw"',
  '"Is your phone touchscreen"',
  '"Rizzler alpha sigma"',
  '"What does this mean" "E"',
  '"I am cow"',
  '"Hey are you my mom because I love you mommy rizz"',
  '"I\'m homophobic for you homophobia rizz"',
  '"Stress makes the flesh taste worse"',
  '"What does discrimination mean"',
  '"I DON\'T WANT TO MAKE A BABY"',
  '"That\'s not your mother that\'s OUR mother"',
  '"Do you want to make balloon babies with me"',
  '"Your theme song is probably the Gandhi song"',
  '"Her skibidi yappatron is so not sigma"',
  '"It\'s okay we can just explode the oxygen everywhere"',
  '"I like to eat your dog"',
  '"Cogidubnus in whale"',
  '"I could fowl you"',
  '"These marsupials give birht to offspring that aren\'t fully cooked"',
  '"I have to mew it\'s elegant"',
  '"Your big-ass forehead reflects too much light"',
  '"You wanna know what\'s a nerd moment? This extremely sexy calculator"',
  '"This is the big mama of calculators"',
  '"You\'re built like a bomb threat"',
  '"I\'ll hit you with my mother\'s bosom\'s grave\'s son"',
  '"I want a collection of six wives, not five wives and a husband"',
  '"I consume nitrogen on a daily basis"',
  '"When I grow up I wanna be gay"',
  '"I misread Darwin vs. Lamark as Drake vs. Kendrick"',
  '"How did we go from strawberries to blood" "They\'re both red and yummy"',
  '"You know the big guy who\'s like really big"',
  '"I\'m not crazy guys I swear I\'m not crazy I\'m not I\'M NOT I\'M NOT"',
  '"No skibidi 😡"',
  '"I laughed at your dad yesterday"',
  '"MY GYATTSTER GOT THE GRIMACE SHAKE WITH THAT FANUM TAX BABY GRONK RIZZ"',
  '"Mike 1 Mike 2 Mike 3 Mike 4 Mike 5 Mike 6 mic drop"',
  '"Hold on I have to count the slaves"',
  '"Are you an empath" "No I\'m a psychopath"',
  '"Do you have any pencils that are meticulum"',
  '"They\'re probably great friends like how we\'re lovers"',
  '"Letter N. N for...not M"',
  '"Sometimes you just gotta die; these guys are dying"',
  '"You hit me with that!" "Aww :( Do you want me to hit you with this side it hurts more"',
  '"We worship SOCIAL MEDIA now we worship TAYLOR SWIFT on TIKTOK"',
  '"They\'re having not normal Chinese babies they\'re having island Chinese babies"',
  '"Tell your mom I\'m single and ready to mingle"',
  '""Na"like I\'m going to GNAW YOUR KNEECAPS OFF IF YOU DON\'T GET THSE VOWELS RIGHT"',
  '"Lowkey craving some liquid IV right now 🤤"',
  '"It sounded like a sound from heaven"',
  '"Hear me out a spoon but the eyeholes are actual eyes"',
  '"I SEE THE TRIANGLE MAN"',
  '"Would you rather eat fifty million desks or drink a mango smoothie"',
  '"No breathing until Christmas"',
  '"Jefferetary Secretary"',
  '"If a square and a triangle give birth to a circle who\'s the father"'
  '"Was he born first or was he given birth to"',
  '"Sorry I\'m just imagining you as a bobby pin"',
  '"Bones 🥰🔥😛"',
  '"I am desk"'
];
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

