import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/pallets/on_surface_pallet.dart';
import 'package:pactus_gui_widgetbook/src/core/pallets/surface_pallet.dart';
import 'package:pactus_gui_widgetbook/src/core/text_styles/inter_text_styles.dart';

class AppThemeData {
  AppThemeData._();
  static const Iterable<ThemeExtension<dynamic>> lightExtensions = [
    SurfacePallet.light,
    OnSurfacePallet.light,
  ];

  static const Iterable<ThemeExtension<dynamic>> darkExtensions = [
    SurfacePallet.dark,
    OnSurfacePallet.dark,
  ];

  static FluentThemeData lightTheme() => FluentThemeData(
        brightness: Brightness.light,
        typography: typography,
        extensions: lightExtensions,
      );

  static FluentThemeData darkTheme() => FluentThemeData(
        brightness: Brightness.dark,
        typography: typography,
        extensions: darkExtensions,
      );

  static Typography typography = const Typography.raw(
    subtitle: InterTextStyles.subtitle,
    title: InterTextStyles.title,
    bodyStrong: InterTextStyles.bodyStrong,
    caption: InterTextStyles.caption,
    body: InterTextStyles.body,
    bodyLarge: InterTextStyles.bodyLarge,
    display: InterTextStyles.display,
    titleLarge: InterTextStyles.titleLarge,
  );
}
