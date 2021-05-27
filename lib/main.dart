import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Xylophone"),
          centerTitle: true,
        ),

        body: SafeArea(
          child: Center(
            child: TextButton(
              child: Text("Click Me"),
              onPressed: () {
                final player = AudioCache();
                player.play('assets_note1.wav');
              },
            ),
          ),
        ),
      ) ,
    );
  }
}


