import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());


class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int sound){
    final player = AudioPlayer();
    player.play(AssetSource('assets_note$sound.wav'));
  }

   Expanded buildKey(int soundNumber, Color color){
    return Expanded(
      flex: 1,
      child: Container(
        width: double.infinity,
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          }, child: Text(''),
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Audio Player'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              buildKey(1,Colors.red),
              buildKey(2,Colors.purple),
              buildKey(3, Colors.blue),
              buildKey(4, Colors.green),
              buildKey(5, Colors.orange),
              buildKey(6, Colors.teal),
              buildKey(7, Colors.yellow),

            ],
          ),
        ),
      ),
    );
  }
}
