import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/pallets/on_surface_pallet.dart';
import 'package:pactus_gui_widgetbook/src/core/pallets/surface_pallet.dart';
import 'package:pactus_gui_widgetbook/src/core/text_styles/inter_text_styles.dart';
/// ## [AppThemeData] Class Documentation
///
/// The `AppThemeData` class defines the theme settings for the application,
/// including light and dark themes, color palettes, and typography.
///
/// ### Usage:
///
/// This class provides methods to create `FluentThemeData` instances
/// for light and dark themes, which can be customized with a
/// selected accent color. It integrates Fluent UI theming capabilities
/// with application-specific extensions and styles.
///
/// ### Properties:
///
/// - **[lightExtensions]**:
///   - A collection of `ThemeExtension` objects used for the light theme.
///   - Includes surface and on-surface palettes
///   (`SurfacePallet.light` and `OnSurfacePallet.light`).
///
/// - **[darkExtensions]**:
///   - A collection of `ThemeExtension` objects used for the dark theme.
///   - Includes surface and on-surface palettes
///   (`SurfacePallet.dark` and `OnSurfacePallet.dark`).
///
/// - **[lightAccentColors]**:
///   - A predefined list of accent colors for the light theme.
///   - Includes colors like `Color(0xFF0A4D7E)` and `Color(0xFFD4540A)`.
///
/// - **[darkAccentColors]**:
///   - A predefined list of accent colors for the dark theme.
///   - Includes colors like `Color(0xFF0F6CBD)` and `Color(0xFFF7630C)`.
///
/// - **[typography]**:
///   - A `Typography` object defining text styles used across the app.
///   - Includes styles for subtitles, titles, captions, and body text.
///

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

  static const List<Color> lightAccentColors = [
    Color(0xFF0A4D7E),
    Color(0xFFD4540A),
    Color(0xFFA7101A),
    Color(0xFF7F0080),
    Color(0xFF5C3E83),
    Color(0xFF008D7A),
    Color(0xFF0C5C0C),
    Color(0xFF0F0E32),
  ];

  static const List<Color> darkAccentColors = [
    Color(0xFF0F6CBD),
    Color(0xFFF7630C),
    Color(0xFFE81123),
    Color(0xFFB4009E),
    Color(0xFF744DA9),
    Color(0xFF00B294),
    Color(0xFF107C10),
    Color(0xFF131440),
  ];

  static FluentThemeData lightTheme(Color selectedAccentColor) =>
      FluentThemeData(
        brightness: Brightness.light,
        typography: typography,
        extensions: lightExtensions,
        accentColor: selectedAccentColor.toAccentColor(),
      );

  static FluentThemeData darkTheme(Color selectedAccentColor) =>
      FluentThemeData(
        brightness: Brightness.dark,
        typography: typography,
        extensions: darkExtensions,
        accentColor: selectedAccentColor.toAccentColor(),
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
