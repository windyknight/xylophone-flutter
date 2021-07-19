import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  void playNote(int num) {
    player.play("note$num.wav");
  }

  Expanded xyloButton(int noteNum, Color btncolor) {
    return Expanded(
      child: Container(
        color: btncolor,
        child: TextButton(
          child: Text(""),
          onPressed: () {
            playNote(noteNum);
          },
        ),
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
              xyloButton(1, Colors.red),
              xyloButton(2, Colors.orange),
              xyloButton(3, Colors.yellow),
              xyloButton(4, Colors.green),
              xyloButton(5, Colors.blue),
              xyloButton(6, Colors.indigo),
              xyloButton(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
