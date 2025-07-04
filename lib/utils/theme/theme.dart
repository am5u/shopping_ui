import 'package:shopping_ui/utils/theme/widget_themes/appbar_theme.dart';
import 'package:shopping_ui/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:shopping_ui/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:shopping_ui/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:shopping_ui/utils/theme/widget_themes/text_field_theme.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui/utils/constants/colors.dart';
import 'package:shopping_ui/utils/theme/widget_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightAppTheme = ThemeData(
    useMaterial3: true,

    scaffoldBackgroundColor: TColors.light,
    fontFamily: 'Suwannaphum',
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    textTheme: TTextTheme.lightTextThem,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
    appBarTheme: TAppbarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
  );

  static ThemeData darkAppTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: TColors.dark,
    fontFamily: 'Suwannaphum',
    brightness: Brightness.dark,
    primaryColor: TColors.primary,
    textTheme: TTextTheme.darkTextThem,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
    appBarTheme: TAppbarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
  );
}
