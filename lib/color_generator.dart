import 'dart:math';

import 'package:flutter/material.dart';

class ColorGenerator {
  //
  static Color generateRandomColor() {
    return Color.fromARGB(255, _getRandomUnsignedInt(), _getRandomUnsignedInt(),
        _getRandomUnsignedInt());
  }

  static int _getRandomUnsignedInt() {
    // initial
    int num = Random().nextInt(254);

    // to make sure that colors are bright
    while (num < 10) {
      //
      num = Random().nextInt(254);
    }

    return num;
  }
}
