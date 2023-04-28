import 'package:easy_localization/easy_localization.dart';
import 'package:edoktor_structure/presentation/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'core/init/constants/app_constants.dart';
import 'core/init/locale_manager/locale_manger.dart';
import 'core/init/theme/app_theme.dart';
import 'data/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupDi();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: LanguageManager.instance!.supportedLocales,
      path: ApplicationConstants.languageAssetsPath,
      startLocale: LanguageManager.instance!.trLocale,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeManager.craeteTheme((AppThemeLight())),
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        home: HomeView(),
      );
    });
  }
}
