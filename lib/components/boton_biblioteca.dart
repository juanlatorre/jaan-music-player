import 'package:flutter/material.dart';
import 'package:jaan_music_player/utils/indian.dart';

Widget botonBiblioteca(String titulo) {
  return InkWell(
    child: SizedBox(
      width: 100,
      child: Container(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        child: Text(
          titulo,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: indian["bluebell"],
            fontSize: 18,
          ),
        ),
      ),
    ),
    onTap: () {
      print("jaja");
    },
  );
}
