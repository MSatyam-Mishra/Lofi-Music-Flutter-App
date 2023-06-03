import 'dart:ui' as ui;

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

final screenWidth = (ui.window.physicalSize.width / ui.window.devicePixelRatio);
final screenHeight =
    (ui.window.physicalSize.height / ui.window.devicePixelRatio);
final safePaddingTop = WidgetsBinding.instance.window.padding.top;
final safePaddingBottom = WidgetsBinding.instance.window.padding.top;

//text Styles

TextStyle songtitleStyle = const TextStyle(
    color: Colors.white,
    fontSize: 40,
    fontWeight: FontWeight.w800,
    fontFamily: "assets/fonts/lufga-regular.otf");

List<Color> colors = [
  Colors.black,
  Colors.blue,
  Colors.yellow,
  Colors.pink,
  Colors.red,
  Colors.green
];
