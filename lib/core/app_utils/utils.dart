import 'package:task_manager_app/core/servies/prefServies.dart';

import 'injection.dart';
import '../data_source/dio_service.dart';
import '../router/router.dart';
import '../theme/dynamic_theme/app_themes_color.dart';
import 'package:flutter/material.dart';

class Utils {
  static AppRouter appRouter = locator<AppRouter>();
  static DioService dio() => locator<DioService>();
  static AppThemesColors appTheme() => locator<AppThemesColors>();
  static PrefServies pref() => locator<PrefServies>();
  // to change theme mode
  static bool isBrightnessColor = true ;
  static changeBrightnessColor (){
    isBrightnessColor = !isBrightnessColor ;
  }

  static getToken(){
     pref().getToken();
  }
  static setToken(String token){
     pref().setToken(token);
  }

 
}
