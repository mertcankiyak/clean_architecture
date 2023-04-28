import 'package:flutter/material.dart';

import '../colors/color_theme.dart';
import 'text_theme_interface.dart';

class TextThemeLight implements ITextTheme {
  @override
  late final TextTheme data;

  @override
  late final String? fontFamily;

  @override
  TextStyle? headline1 = const TextStyle(fontSize: 32, fontWeight: FontWeight.w800);

  @override
  TextStyle? headline3 = const TextStyle(fontSize: 28, fontWeight: FontWeight.w800);

  @override
  TextStyle? headline2 = const TextStyle(fontSize: 22, fontWeight: FontWeight.w800);

  @override
  TextStyle? headline4 = const TextStyle(fontSize: 20, fontWeight: FontWeight.w800);

  @override
  TextStyle? headline5 = const TextStyle(fontSize: 18, fontWeight: FontWeight.w800);

  @override
  TextStyle? headline6 = const TextStyle(fontSize: 20, fontWeight: FontWeight.normal);

  @override
  TextStyle? subtitle1 = const TextStyle(fontSize: 16.0);

  @override
  TextStyle? subtitle2 = const TextStyle(
    fontSize: 14.0,
  );

  @override
  TextStyle? bodyText1 = const TextStyle(fontSize: 12.0);

  @override
  TextStyle? bodyText2 = const TextStyle(fontSize: 10.0);

  @override
  final Color? primaryColor;

  TextThemeLight({this.primaryColor, IColors? colorTheme}) {
    fontFamily = "Roboto";

    data = TextTheme(
            headlineLarge: headline6?.copyWith(fontSize: 50),
            titleLarge: headline6,
            displayMedium: headline2,
            titleMedium: subtitle1,
            titleSmall: subtitle2,
            displaySmall: headline3,
            bodyMedium: bodyText2,
            displayLarge: headline1,
            bodyLarge: subtitle2,
            headlineSmall: headline5)
        .apply(
      displayColor: primaryColor,
    );
  }
}
