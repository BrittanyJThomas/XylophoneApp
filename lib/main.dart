import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

var ColorsArray = [
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.orange,
  Colors.amber,
  Colors.yellow,
  Colors.purple
];

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  // This widget is the root of your application.

  void PlaySound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded BuildKey(int number) {
    return Expanded(
      child: Container(
        color: ColorsArray[number],
        child: TextButton(
          child: Text(''),
          onPressed: () {
            PlaySound(number + 1);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (int i = 0; i < 7; i++) BuildKey(i),
            ],
          ),
        ),
      ),
    );
  }
}