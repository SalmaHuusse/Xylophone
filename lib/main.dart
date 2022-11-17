import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);


   void playSound( int suondNumber ){
     final player = AudioCache();
     player.play('assets_note$suondNumber.wav');
   }
   Expanded buildKey({required Color color , required int suondNumber}){
     return Expanded(
       child: FlatButton(
         color: color,
         onPressed: () {
           playSound(suondNumber);
         },
         child: const Text(" "),
       ),
     );
   }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color:Colors.red , suondNumber: 1),
              buildKey(color:Colors.orange , suondNumber: 2),
              buildKey(color:Colors.yellow , suondNumber: 3),
              buildKey(color:Colors.green, suondNumber: 4),
              buildKey(color:Colors.teal, suondNumber: 5),
              buildKey(color:Colors.blue, suondNumber: 6),
              buildKey(color:Colors.purple, suondNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
