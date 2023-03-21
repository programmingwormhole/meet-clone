import 'package:flutter/material.dart';

import '../utils/config.dart';

Widget meetPerson(double size, String image, String name, Color border) {
  return Container(
    width: size * .5,
    height: size,
    decoration: BoxDecoration(
      color: title,
      border: Border.all(color: border, width: 1.5),
      image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(name,
                style: TextStyle(
                  color: title,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
