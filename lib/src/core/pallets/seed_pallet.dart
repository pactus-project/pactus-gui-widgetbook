import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/app_styles.dart' show AppTheme;

/// ## [SeedPallet] Class Documentation
///
/// The `SeedPallet` class defines a theme extension that manages color seeds
/// for different states (normal, error, succeed) in both background and text.
/// It provides a comprehensive color system for consistent theming across the application.
///
/// ### Usage:
///
/// This class allows for centralized management of color seeds,
/// ensuring consistency across the application's theme.
/// It supports both light and dark modes with predefined static instances.
///
/// ### Properties:
///
/// - **[normalBackgroundSeed]** (Color?): The background color seed for normal state
/// - **[normalTextSeed]** (Color?): The text color seed for normal state
/// - **[errorBackgroundSeed]** (Color?): The background color seed for error state
/// - **[errorTextSeed]** (Color?): The text color seed for error state
/// - **[succeedBackgroundSeed]** (Color?): The background color seed for success state
/// - **[succeedTextSeed]** (Color?): The text color seed for success state
///
/// ### Methods:
///
/// - **[copyWith]**:
///   - Creates a new instance of `SeedPallet` by copying the current instance
///     and replacing any provided values.
///   - Parameters match all class properties (all optional)
///
/// - **[lerp]**:
///   - Linearly interpolates between two `SeedPallet` instances
///     based on the provided factor (t).
///   - Returns a new instance with blended colors for all properties.
///
/// - **[toString]**:
///   - Provides a string representation of the `SeedPallet` instance,
///     listing all its color properties.
///
/// - **[getByIndex]**:
///   - Retrieves the color at the specified index:
///     - 6: normalBackgroundSeed
///     - 5: normalTextSeed
///     - 4: errorBackgroundSeed
///     - 3: errorTextSeed
///     - 2: succeedBackgroundSeed
///     - 1: succeedTextSeed
///   - Throws an exception if the index is invalid.
///
/// ### Predefined Themes:
///
/// - **[light]**: Light theme color seeds
/// - **[dark]**: Dark theme color seeds

@immutable
class SeedPallet extends ThemeExtension<SeedPallet> {
  const SeedPallet({
    required this.normalBackgroundSeed,
    required this.normalTextSeed,
    required this.errorBackgroundSeed,
    required this.errorTextSeed,
    required this.succeedBackgroundSeed,
    required this.succeedTextSeed,
  });

  final Color? normalBackgroundSeed;
  final Color? normalTextSeed;
  final Color? errorBackgroundSeed;
  final Color? errorTextSeed;
  final Color? succeedBackgroundSeed;
  final Color? succeedTextSeed;

  @override
  SeedPallet copyWith({Color? enableColor, Color? disableColor}) {
    return SeedPallet(
      normalBackgroundSeed: normalBackgroundSeed ?? normalBackgroundSeed,
      normalTextSeed: normalTextSeed ?? normalTextSeed,
      errorBackgroundSeed: errorBackgroundSeed ?? errorBackgroundSeed,
      errorTextSeed: errorTextSeed ?? errorTextSeed,
      succeedBackgroundSeed: succeedBackgroundSeed ?? succeedBackgroundSeed,
      succeedTextSeed: succeedTextSeed ?? succeedTextSeed,
    );
  }

  // Controls how the properties change on theme changes
  @override
  SeedPallet lerp(ThemeExtension<SeedPallet>? other, double t) {
    if (other is! SeedPallet) {
      return this;
    }
    return SeedPallet(
      normalBackgroundSeed:
          Color.lerp(normalBackgroundSeed, other.normalBackgroundSeed, t),
      normalTextSeed: Color.lerp(normalTextSeed, other.normalTextSeed, t),
      errorBackgroundSeed:
          Color.lerp(errorBackgroundSeed, other.errorBackgroundSeed, t),
      errorTextSeed: Color.lerp(errorTextSeed, other.errorTextSeed, t),
      succeedBackgroundSeed:
          Color.lerp(succeedBackgroundSeed, other.succeedBackgroundSeed, t),
      succeedTextSeed: Color.lerp(succeedTextSeed, other.succeedTextSeed, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'SeedPallet('
      'normalBackgroundSeed:$normalBackgroundSeed, '
      'normalTextSeed: $normalTextSeed, '
      'errorBackgroundSeed:$errorBackgroundSeed, '
      'errorTextSeed: $errorTextSeed, '
      'succeedBackgroundSeed:$succeedBackgroundSeed, '
      'succeedTextSeed: $succeedTextSeed, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 6:
        return normalBackgroundSeed;
      case 5:
        return normalTextSeed;
      case 4:
        return errorBackgroundSeed;
      case 3:
        return errorTextSeed;
      case 2:
        return succeedBackgroundSeed;
      case 1:
        return succeedTextSeed;
      default:
        throw Exception('Invalid SeedPallet color index');
    }
  }

  // the light theme
  static const light = SeedPallet(
    normalBackgroundSeed: Color(0xFFEBF3FC),
    normalTextSeed: Color(0xFF0F6CBD),
    errorBackgroundSeed: Color(0xFFFFD7D7),
    errorTextSeed: Color(0xFFBD0F0F),
    succeedBackgroundSeed: Color(0xFFC6FFBD),
    succeedTextSeed: Color(0xFF0F840B),
  );

  // the dark theme
  static const dark = SeedPallet(
    normalBackgroundSeed: Color(0xFF242424),
    normalTextSeed: Color(0xFFFFFFFF),
    errorBackgroundSeed: Color(0xFFFFD7D7),
    errorTextSeed: Color(0xFFBD0F0F),
    succeedBackgroundSeed: Color(0xFFC6FFBD),
    succeedTextSeed: Color(0xFF0F840B),
  );
}

enum SeedColors {
  normalBackgroundSeed,
  normalTextSeed,
  errorBackgroundSeed,
  errorTextSeed,
  succeedBackgroundSeed,
  succeedTextSeed
}

extension ComponentsModeExtension on BuildContext {
  /// ### [fromSeedPalletColor]
  /// ### Retrieves a color from the seed color palette
  ///
  /// `fromSeedPalletColor` is an extension method that provides access to specific seed colors
  /// defined in the application's theme extensions.
  ///
  /// #### Parameters
  /// - `seedColors`: A value from the [SeedColors] enum that specifies which seed color to retrieve
  ///
  /// #### Returns
  /// A [Color] value corresponding to the requested seed color from the [SeedPallet] theme extension
  ///
  /// #### Example
  /// ```dart
  /// Color bgColor = context.fromSeedPalletColor(SeedColors.succeedBackgroundSeed);
  /// ```
  ///
  /// #### Notes
  /// - The method assumes the [SeedPallet] extension is properly configured in the app's theme
  /// - Will throw an exception if the requested color is not found in the palette

  Color fromSeedPalletColor(SeedColors seedColors) {
    return (switch (seedColors) {
      // YellowPallet colors
      SeedColors.succeedBackgroundSeed =>
        AppTheme.of(this).extension<SeedPallet>()!.succeedBackgroundSeed!,
      SeedColors.succeedTextSeed =>
        AppTheme.of(this).extension<SeedPallet>()!.succeedTextSeed!,
      SeedColors.errorBackgroundSeed =>
        AppTheme.of(this).extension<SeedPallet>()!.errorBackgroundSeed!,
      SeedColors.errorTextSeed =>
        AppTheme.of(this).extension<SeedPallet>()!.errorTextSeed!,
      SeedColors.normalBackgroundSeed =>
        AppTheme.of(this).extension<SeedPallet>()!.normalBackgroundSeed!,
      SeedColors.normalTextSeed =>
        AppTheme.of(this).extension<SeedPallet>()!.normalTextSeed!,
    });
  }
}
