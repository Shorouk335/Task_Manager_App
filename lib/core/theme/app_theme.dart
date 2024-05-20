import 'dynamic_theme/app_color.dart';
import 'dynamic_theme/app_themes_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_color_gen/material_color_gen.dart';

class ThemeManager {
  static ThemeData appTheme() {
    return ThemeData(
      fontFamily: "Cairo",
      primarySwatch: AppColors.primary.toMaterialColor(),
      colorScheme: AppThemesColors().selectedSchema,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white)),
      scrollbarTheme: ScrollbarThemeData(
        thumbColor:
            MaterialStateProperty.all<Color>(Colors.grey.withOpacity(0.6)),
      ),
      cardTheme: CardTheme(
          clipBehavior: Clip.hardEdge,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.background,
        elevation: 0,
        // systemOverlayStyle: SystemUiOverlayStyle(
        //    statusBarBrightness: Brightness.light ,
        //   statusBarColor: AppColors.primary,
        //   statusBarIconBrightness: Brightness.dark ,
        // )
      ),
      scaffoldBackgroundColor: AppColors.background,
    );
  }
}
