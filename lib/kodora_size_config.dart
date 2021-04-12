library kodora_size_config;

import 'package:flutter/cupertino.dart';

/// A Calculator.
class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static String screenSize;

  static double size1;
  static double size2;
  static double size3;
  static double size4;
  static double size5;
  static double size6;
  static double size7;
  static double size8;
  static double size9;
  static double size10;
  static double size11;
  static double size12;
  static double size13;
  static double size14;
  static double size15;
  static double size16;
  static double size17;
  static double size18;
  static double size19;
  static double size20;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    size1 = screenHeight / 700;
    size2 = size1*2;
    size3 = size1*3 ;
    size4 = size1*4;
    size5 = size1*5;
    size6 = size1*6;
    size7 = size1*7;
    size8 = size1*8;
    size9 = size1*9;
    size10 = size1*10;
    size11 = size1*11;
    size12 = size1*12;
    size13 = size1*13;
    size14 = size1*14;
    size15 = size1*15;
    size16 = size1*16;
    size17 = size1*17;
    size18 = size1*18;
    size19 = size1*19;
    size20 = size1*20;
  }
}
