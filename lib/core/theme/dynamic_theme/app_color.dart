import '../../app_utils/utils.dart';
import 'app_themes_color.dart';
import 'package:flutter/material.dart';


class AppColors {
  static AppThemesColors selectedTheme = Utils.appTheme();
  static Color get primary => selectedTheme.selectedSchema.primary;
  static Color get onPrimary => selectedTheme.selectedSchema.onPrimary;
  static Color get primaryContainer =>
      selectedTheme.selectedSchema.primaryContainer;
  static Color get onPrimaryContainer =>
      selectedTheme.selectedSchema.onPrimaryContainer;
  static Color get secondary => selectedTheme.selectedSchema.secondary;
  static Color get onSecondary => selectedTheme.selectedSchema.onSecondary;
  static Color get secondaryContainer =>
      selectedTheme.selectedSchema.secondaryContainer;
  static Color get onSecondaryContainer =>
      selectedTheme.selectedSchema.onSecondaryContainer;
  static Color get tertiary => selectedTheme.selectedSchema.tertiary;
  static Color get onTertiary => selectedTheme.selectedSchema.onTertiary;
  static Color get tertiaryContainer =>
      selectedTheme.selectedSchema.tertiaryContainer;
  static Color get onTertiaryContainer =>
      selectedTheme.selectedSchema.onTertiaryContainer;
  static Color get error => selectedTheme.selectedSchema.error;
  static Color get onError => selectedTheme.selectedSchema.onError;
  static Color get errorContainer =>
      selectedTheme.selectedSchema.errorContainer;
  static Color get onErrorContainer =>
      selectedTheme.selectedSchema.onErrorContainer;
  static Color get background => selectedTheme.selectedSchema.background;
  static Color get onBackground => selectedTheme.selectedSchema.onBackground;
  static Color get surface => selectedTheme.selectedSchema.surface;
  static Color get onSurface => selectedTheme.selectedSchema.onSurface;
  static Color get surfaceVariant =>
      selectedTheme.selectedSchema.surfaceVariant;
  static Color get onSurfaceVariant =>
      selectedTheme.selectedSchema.onSurfaceVariant;
  static Color get outline => selectedTheme.selectedSchema.outline;
  static Color get shadow => selectedTheme.selectedSchema.shadow;
  static Color get inverseSurface =>
      selectedTheme.selectedSchema.inverseSurface;
  static Color get onInverseSurface =>
      selectedTheme.selectedSchema.onInverseSurface;
  static Color get inversePrimary =>
      selectedTheme.selectedSchema.inversePrimary;
  static Color get surfaceTint => selectedTheme.selectedSchema.surfaceTint;
  static Color get brightnessColor =>
      selectedTheme.selectedSchema.brightnessColor;
  static Color get invBrightnessColor =>
      selectedTheme.selectedSchema.invBrightnessColor;
  // static Color get green => selectedTheme.selectedSchema.green;
  static Brightness get brightness => selectedTheme.selectedSchema.brightness;
  static Color negativeColor = Colors.red;
}
