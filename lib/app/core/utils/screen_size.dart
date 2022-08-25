import 'dart:developer';

import 'package:flutter/widgets.dart';


/// ScreenSize class
/// 
/// It is use to responsive designs. We have exactly screen width and height dimensions.
/// ```
/// width: ScreenSize.widthMultiplier * 50.0
/// ```
/// Set 50% of screen width size.
/// 
/// ```
/// height: ScreenSize.heightMultiplier * 50.0
/// ```
/// Set 50% of screen height size.
class ScreenSize{

  static double _screenWidth = 0;
  static double _screenHeight = 0;
  static double _blockWidth = 0;
  static double _blockHeight = 0;
 
  static double textMultipler = 1;
  static double imageSizeMultiplier = 1;
  static double heightMultiplier = 1;
  static double widthMultiplier = 1;
  static bool isPortrait = true;
  static bool isMobilePortrait = false;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
      isPortrait = true;
      if (_screenWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockWidth = _screenWidth / 100;
    _blockHeight = _screenHeight / 100;

    textMultipler = _blockHeight;
    imageSizeMultiplier = _blockWidth;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;
    log('Screen width $_screenWidth');
    log('Block width $_blockWidth');
    log('Block height $_blockHeight');




  }
}