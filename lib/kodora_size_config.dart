library kodora_size_config;
import 'package:flutter/cupertino.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenHeight;
  static double screenWidth;
  static double size1;
  static double spatialW1;

  static double size(double _size){
   return size1 * _size;
  }

  static double spatialH(double _spatialH){
   return size1 * _spatialH;
  }

  static double spatialW(double _spatialW){
   return spatialW1 * _spatialW;
  }

  void init(BuildContext context, double x, double y) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    size1 = screenHeight / x;
    spatialW1 = screenWidth / y;
  }

}
