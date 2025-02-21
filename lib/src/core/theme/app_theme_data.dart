import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/app_styles.dart';

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
///   - Includes `BlueGrayPallet.light` and `GrayPallet.light`.
///
/// - **[darkExtensions]**:
///   - A collection of `ThemeExtension` objects for the dark theme.
///   - Includes `BlueGrayPallet.dark` and `GrayPallet.dark`.
///
/// - **[typography]**:
///   - An instance of `Typography` defining text styles for various use cases.
///   - Includes properties like `headerBold`, `titleBold`, `bodyRegular`,
///   `bodyBold`, `captionMedium`, and more.
///   - Uses `InterTextStyles` for text style definitions.
///
/// ### Methods:
///
/// - **[lightTheme]**:
///   - Returns a `FluentThemeData` instance configured for light mode.
///   - Includes light extensions and typography.
///
/// - **[darkTheme]**:
///   - Returns a `FluentThemeData` instance configured for dark mode.
///   - Includes dark extensions and typography.
///
class AppThemeData {
  AppThemeData._();
  static const Iterable<ThemeExtension<dynamic>> lightExtensions = [
    BlueGrayPallet.light,
    BluePallet.light,
    DarkPallet.light,
    FuchsiaPallet.light,
    GrayPallet.light,
    GreenPallet.light,
    LightPallet.light,
    OrangePallet.light,
    PinkPallet.light,
    PurplePallet.light,
    RedPallet.light,
    RosePallet.light,
    VioletPallet.light,
    YellowPallet.light,
    PanePallet.light,
  ];

  static const Iterable<ThemeExtension<dynamic>> darkExtensions = [
    BlueGrayPallet.dark,
    BluePallet.dark,
    DarkPallet.dark,
    FuchsiaPallet.dark,
    GrayPallet.dark,
    GreenPallet.dark,
    LightPallet.dark,
    OrangePallet.dark,
    PinkPallet.dark,
    PurplePallet.dark,
    RedPallet.dark,
    RosePallet.dark,
    VioletPallet.dark,
    YellowPallet.dark,
    PanePallet.dark,
  ];

  /// to-do : add a proper name for each accent color after identifying
  /// by Ui team to how and which color palette to use
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
    caption: InterTextStyles.captionMedium,
    body: InterTextStyles.smallRegular,
    bodyStrong: InterTextStyles.bodyBold,
    bodyLarge: InterTextStyles.bodyRegular,
    subtitle: InterTextStyles.subtitleRegular,
    title: InterTextStyles.titleMedium,
    titleLarge: InterTextStyles.titleBold,
    display: InterTextStyles.headerBold,
  );
}
