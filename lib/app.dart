import "package:shopping_ui/features/auth/screens/login/login.dart";
import "package:shopping_ui/features/welcome/welcome.dart";
import "package:shopping_ui/utils/theme/theme.dart";
import "package:flutter/material.dart";
import "package:easy_localization/easy_localization.dart";
import "package:get/get.dart";

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightAppTheme,
      darkTheme: TAppTheme.darkAppTheme,
      home:  WelcomeScreen(),
    );
  }
}
