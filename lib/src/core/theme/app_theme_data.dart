import 'package:flutter/material.dart';
import 'package:pactus_gui_widgetbook/src/core/pallets/on_surface_pallet.dart';
import 'package:pactus_gui_widgetbook/src/core/pallets/surface_pallet.dart';
import 'package:pactus_gui_widgetbook/src/core/text_styles/inter_text_styles.dart';

class AppThemeData {
  static const Iterable<ThemeExtension<dynamic>> lightExtensions = [
    SurfacePallet.light,
    OnSurfacePallet.light,
  ];

  static const Iterable<ThemeExtension<dynamic>> darkExtensions = [
    SurfacePallet.dark,
    OnSurfacePallet.dark,
  ];

  static ThemeData lightTheme() => ThemeData.light().copyWith(
    brightness: Brightness.light,
    textTheme: textTheme,
    extensions: lightExtensions,
  );

  static ThemeData darkTheme() => ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    textTheme: textTheme,
    extensions: darkExtensions,
  );

  static const textTheme = TextTheme(
    bodyLarge: InterTextStyles.bodyLarge, // Corresponds to BodyLarge/bold
    bodyMedium: InterTextStyles.body, // Corresponds to Body/regular
    displayLarge: InterTextStyles.bodyLarge, // Corresponds to BodyLarge/bold
    displayMedium: InterTextStyles.display, // Corresponds to Display/semi-bold
    headlineLarge: InterTextStyles.titleLarge, // Corresponds to TitleLarge/semi-bold
    headlineMedium: InterTextStyles.title, // Corresponds to Title/semi-bold
    headlineSmall: InterTextStyles.subtitle, // Corresponds to Subtitle/medium
    titleLarge: InterTextStyles.titleLarge, // Corresponds to TitleLarge/semi-bold
    titleMedium: InterTextStyles.title, // Corresponds to Title/semi-bold
    titleSmall: InterTextStyles.caption, // Corresponds to Caption/light
  );
}
