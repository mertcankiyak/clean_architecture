import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color_theme.dart';

class LightColors implements IColors {
  LightColors() {
    brightness = Brightness.light;
    appBarColor = colors.white;
    switchBackgroundColor = colors.white;
    scaffoldBackgroundColor = colors.white;
    overlayStyle = SystemUiOverlayStyle.light;

    cursorColor = colors.black;

    colorScheme = ColorScheme(
      primary: colors.white,
      surfaceTint: colors.white,
      onBackground: colors.white,
      onSecondary: colors.white,
      error: colors.white,
      onTertiary: colors.white,
      onPrimaryContainer: colors.white,
      onPrimary: colors.black,
      outline: colors.white,
      primaryContainer: colors.white,
      onSurface: colors.white,
      background: colors.white,
      onError: colors.white,
      secondary: colors.white,
      surface: colors.white,
      tertiary: colors.white,
      onSecondaryContainer: colors.white,
      secondaryContainer: colors.white,
      onTertiaryContainer: colors.white,
      errorContainer: colors.white,
      tertiaryContainer: colors.white,
      onErrorContainer: colors.white,
      onSurfaceVariant: colors.white,
      inversePrimary: colors.white,
      inverseSurface: colors.white,
      onInverseSurface: colors.white,
      outlineVariant: colors.white,
      brightness: Brightness.light,
    );
  }

  @override
  Color? appBarColor;

  @override
  Brightness? brightness;

  @override
  ColorScheme? colorScheme;

  @override
  Color? cursorColor;

  @override
  Color? floatingButtonColor;

  @override
  SystemUiOverlayStyle? overlayStyle;

  @override
  Color? scaffoldBackgroundColor;

  @override
  Color? swipeFirst;

  @override
  Color? swipeSecond;

  @override
  Color? tabBarColor;

  @override
  Color? tabbarNormalColor;

  @override
  Color? tabbarSelectedColor;

  @override
  final AppColors colors = AppColors();

  @override
  Color? secondaryBackground;

  @override
  Color? switchBackgroundColor;
}
