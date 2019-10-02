import 'package:flutter/material.dart';
import 'package:jaan_music_player/views/biblioteca.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jaan Music Player',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Color(0xFF3B3B98),
      ),
      home: Biblioteca(),
    );
  }
}
