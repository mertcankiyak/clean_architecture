import 'package:flutter/material.dart';
import 'package:flutter/src/services/system_chrome.dart';

import 'color_theme.dart';

class DarkColors implements IColors {
  @override
  final AppColors colors = AppColors();

  @override
  late final ColorScheme? colorScheme;

  @override
  late final Brightness? brightness;

  @override
  late final Color? appBarColor;

  @override
  late final Color? scaffoldBackgroundColor;

  @override
  late final Color? tabBarColor;

  @override
  late final Color? tabbarNormalColor;

  @override
  late final Color? tabbarSelectedColor;

  @override
  Color? cursorColor;

  DarkColors() {
    // appBarColor = colors.darkGrey;
    // scaffoldBackgroundColor = colors.darkGrey;
    // tabBarColor = colors.green;
    // tabbarNormalColor = colors.lighterGrey;
    // tabbarSelectedColor = colors.green;
    // colorScheme = const ColorScheme.dark().copyWith(onPrimary: colors.green, onSecondary: colors.darkGrey);
    brightness = Brightness.dark;
  }

  @override
  Color? floatingButtonColor;

  @override
  SystemUiOverlayStyle? overlayStyle;

  @override
  Color? secondaryBackground;

  @override
  Color? swipeFirst;

  @override
  Color? swipeSecond;

  @override
  Color? switchBackgroundColor;
}
