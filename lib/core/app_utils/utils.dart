import 'injection.dart';
import '../data_source/dio_service.dart';
import '../router/router.dart';
import '../theme/dynamic_theme/app_themes_color.dart';
import 'package:flutter/material.dart';

class Utils {
  static AppRouter appRouter = locator<AppRouter>();
  static DioService dio() => locator<DioService>();
  static AppThemesColors appTheme() => locator<AppThemesColors>();
  // to change theme mode
  static bool isBrightnessColor = true ;
  static changeBrightnessColor (){
    isBrightnessColor = !isBrightnessColor ;
  }
}
