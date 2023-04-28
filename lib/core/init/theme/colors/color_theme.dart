import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

@immutable
class AppColors {
  final white = Colors.white;
  final black = Colors.black;
}

abstract class IColors {
  AppColors get colors;
  Color? scaffoldBackgroundColor;
  Color? appBarColor;
  Color? tabBarColor;
  Color? tabbarSelectedColor;
  Color? tabbarNormalColor;
  Color? floatingButtonColor;
  SystemUiOverlayStyle? overlayStyle;
  ColorScheme? colorScheme;

  Brightness? brightness;

  Color? swipeFirst;
  Color? swipeSecond;
  Color? switchBackgroundColor;
  Color? secondaryBackground;

  Color? cursorColor;
}
