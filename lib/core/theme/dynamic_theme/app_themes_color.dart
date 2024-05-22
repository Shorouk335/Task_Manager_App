import '../../app_utils/utils.dart';
import 'package:flutter/material.dart';
import 'app_colors_schema.dart';

class AppThemesColors {
  AppColorScheme selectedSchema = AppColorScheme(
    brightness: Utils.isBrightnessColor ? Brightness.light : Brightness.dark,
    primary: Colors.blue,  
    background: Colors.white,
    secondary: Colors.black ,
    onSurface: Colors.black54 , 
    error: Colors.red
  
    

  );
}
