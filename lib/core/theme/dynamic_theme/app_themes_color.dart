import '../../app_utils/utils.dart';
import 'package:flutter/material.dart';
import 'app_colors_schema.dart';

class AppThemesColors {
  AppColorScheme selectedSchema = AppColorScheme(
    brightness: Utils.isBrightnessColor ? Brightness.light : Brightness.dark,
    primary: Color(0xff268D89),
    onPrimary: Utils.isBrightnessColor ? Color(0xff000000) : Colors.white,
    secondary: Color(0xff4A4A4A),
    onSecondary: Color(0xff989898),
    primaryContainer: Color(0xff20BCB1),
    onPrimaryContainer: Color(0xff2C6366),
    error: Color(0xffF83E3E),
    background: Colors.white,
    surface: Color(0xff1f222a),
    shadow: Color(0xff1f222a),
    outline: Color(0xffc5c6d0),
  );
}
