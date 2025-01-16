import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/pallets/on_surface_pallet.dart';
import 'package:pactus_gui_widgetbook/src/core/pallets/surface_pallet.dart';
import 'package:pactus_gui_widgetbook/src/core/text_styles/inter_text_styles.dart';

/// ## [AppThemeData] Class Documentation
///
/// The `AppThemeData` class provides a centralized definition of
/// the application's themes and typography.
/// It is designed to support both light and dark modes and uses
/// `FluentThemeData` for configuration.
///
/// ### Usage:
///
/// This class offers methods and properties to retrieve predefined
/// themes and typography for the application.
/// It also supports custom theme extensions through the use of
/// `ThemeExtension`.
///
/// ### Properties:
///
/// - **[lightExtensions]**:
///   - A collection of `ThemeExtension` objects for the light theme.
///   - Includes `SurfacePallet.light` and `OnSurfacePallet.light`.
///
/// - **[darkExtensions]**:
///   - A collection of `ThemeExtension` objects for the dark theme.
///   - Includes `SurfacePallet.dark` and `OnSurfacePallet.dark`.
///
/// - **[typography]**:
///   - An instance of `Typography` defining text styles for various use cases.
///   - Includes properties like `subtitle`, `title`, `bodyStrong`,
///   `caption`, `body`, and more.
///   - Uses `InterTextStyles` for text style definitions.
///
/// ### Methods:
///
/// - **[lightTheme()]**:
///   - Returns a `FluentThemeData` instance configured for light mode.
///   - Includes light extensions and typography.
///
/// - **[darkTheme()]**:
///   - Returns a `FluentThemeData` instance configured for dark mode.
///   - Includes dark extensions and typography.
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
