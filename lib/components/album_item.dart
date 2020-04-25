import 'package:flutter/material.dart';

Widget albumItem(BuildContext context, String src) {
  return Padding(
    padding: EdgeInsets.all(8),
    child: Material(
      elevation: 4.0,
      color: Colors.transparent,
      child: Ink.image(
        image: NetworkImage(src),
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width / 2.5,
        height: MediaQuery.of(context).size.width / 2.5,
        child: InkWell(
          onTap: () {
            print("yay");
          },
          child: null,
        ),
      ),
    ),
  );
}
