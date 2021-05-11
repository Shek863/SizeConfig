library kodora_ux;
import 'package:flutter/cupertino.dart';


MediaQueryData _mediaQueryData;
double screenHeight;
double screenWidth;
double size1;
double spatialW1;

class Ux {
  void init(BuildContext context, double deltaX, double deltaY) {
    _mediaQueryData = MediaQuery.of(context);
    screenHeight = _mediaQueryData.size.height;
    screenWidth = _mediaQueryData.size.width;
    size1 = screenHeight / deltaY;
    spatialW1 = screenWidth / deltaX;
  }
}

double s(double _size){
return size1 * _size;
}

double h(double _spatialH){
return size1 * _spatialH;
}

double w(double _spatialW){
return spatialW1 * _spatialW;
}
