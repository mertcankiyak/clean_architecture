import 'package:flutter/material.dart';

import 'colors/color_theme.dart';
import 'colors/dark_color.dart';
import 'colors/light_color.dart';
import 'text/text_theme_dark.dart';
import 'text/text_theme_interface.dart';
import 'text/text_theme_light.dart';

abstract class ITheme {
  ITextTheme get textTheme;
  IColors get colors;
}

class AppThemeLight extends ITheme {
  @override
  ITextTheme get textTheme => TextThemeLight();

  @override
  IColors get colors => LightColors();
}

class DarkThemeLight extends ITheme {
  @override
  ITextTheme get textTheme => TextThemeDark();

  @override
  IColors get colors => DarkColors();
}

abstract class ThemeManager {
  static ThemeData craeteTheme(ITheme theme) => ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: theme.colors.colorScheme?.primary,
            unselectedItemColor: theme.colors.colorScheme?.primary.withOpacity(0.5)),
        fontFamily: theme.textTheme.fontFamily,
        textTheme: theme.textTheme.data,
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: theme.colors.colorScheme?.onSecondary),
        primaryColorLight: theme.colors.floatingButtonColor,
        cardColor: theme.colors.colorScheme?.onSecondary,
        brightness: theme.colors.colorScheme?.brightness,
        // progressIndicatorTheme:
        //     ProgressIndicatorThemeData(color: theme.colors.colors.background),
        // dividerTheme: DividerThemeData(
        //     thickness: 2,
        //     color: theme.colors.colors.dividerColor.withOpacity(0.3),
        //     space: 0),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(foregroundColor: theme.colors.colorScheme?.onSecondary)),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: theme.colors.cursorColor,
          selectionColor: theme.colors.switchBackgroundColor?.withOpacity(0.1),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: theme.colors.floatingButtonColor),
        scaffoldBackgroundColor: theme.colors.colorScheme?.onInverseSurface,
        colorScheme: theme.colors.colorScheme,
        switchTheme: SwitchThemeData(thumbColor: MaterialStateProperty.all(theme.colors.switchBackgroundColor)),
      );
}
