import 'package:audioplayers/audio_cache.dart';

import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void playSound(int soundNum) {
      final player = AudioCache();
      player.play('note$soundNum.wav');
    }

    Expanded buildKey(
        {required Color colour,
        required int soundnumber,
        required String victim}) {
      return Expanded(
          child: FlatButton(
        color: colour,
        onPressed: () {
          playSound(soundnumber);
        },
        child: Text(
          '$victim',
          style: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.italic,
            wordSpacing: 2,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ));
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                  colour: Colors.red,
                  soundnumber: 1,
                  victim: 'EMMANUEL (WIERDO.DART)'),
              buildKey(
                  colour: Colors.blue,
                  soundnumber: 2,
                  victim: 'CHIKANKA (SMALLER)'),
              buildKey(
                  colour: Colors.green,
                  soundnumber: 3,
                  victim: 'LAS VEGA (FUNNY)'),
              buildKey(
                  colour: Colors.orange,
                  soundnumber: 4,
                  victim: 'BIGI (BIGGY)'),
              buildKey(
                  colour: Colors.purple,
                  soundnumber: 5,
                  victim: 'DIVINE (WIERDO)'),
              buildKey(
                  colour: Colors.grey,
                  soundnumber: 6,
                  victim: 'HERONNA (BOSS)'),
              buildKey(
                  colour: Colors.yellow,
                  soundnumber: 7,
                  victim: 'OGECHUKWU (LAGOSIAN)'),
            ],
          ),
        ),
      ),
    );
  }
}
