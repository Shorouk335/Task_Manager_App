import 'package:flutter/material.dart';
import 'package:task_manager_app/core/theme/dynamic_theme/app_color.dart';

class AppStringTheme {

 static TextStyle LargeTextTheme() {
    return TextStyle(
        color: AppColors.primary, fontSize: 25.0, fontWeight: FontWeight.bold);
  }

  static TextStyle MediumTextThemeLight() {
    return TextStyle(color: Colors.white, fontSize: 22.0 , fontWeight: FontWeight.bold);
  }
  static TextStyle MediumTextThemeDark() {
    return TextStyle(color: Colors.black, fontSize: 22.0);
  }

  static TextStyle SmallTextTheme() {
    return TextStyle(color: Colors.grey, fontSize: 18.0);
  }
}
