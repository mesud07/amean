import 'dart:math';

import 'package:flutter/material.dart';

class RandomColor {
  static Color randomColor() {
    return Color(Random().nextInt(0xffffffff));
  }
}