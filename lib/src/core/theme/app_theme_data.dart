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
