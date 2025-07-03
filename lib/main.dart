import 'package:easy_localization/easy_localization.dart';
import 'package:shopping_ui/utils/constants/translation.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: translationPath,
      fallbackLocale: Locale('ar'),
      saveLocale: true,
      child: App(),
    ),
  );
}
