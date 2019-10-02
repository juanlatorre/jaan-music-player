import 'package:flutter/material.dart';

Widget albumItem(BuildContext context, String src) {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: SizedBox(
      height: MediaQuery.of(context).size.width / 2.5,
      width: MediaQuery.of(context).size.width / 2.5,
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        child: Image.network(
          src,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}
