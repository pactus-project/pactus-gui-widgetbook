import 'package:pactus_gui_widgetbook/src/core/pallets/seed_pallet.dart'
    show SeedColors;

/// [ChipTextMode] Documentation :
/// Defines different text display modes for a chip,
/// each associated with specific background and text colors.
///
/// **Modes:**
/// - `ChipTextMode.normal` - Blue color scheme (default)
/// - `ChipTextMode.inCorrect` - Red color scheme (incorrect state)
/// - `ChipTextMode.correct` - Green color scheme (correct state)
///
/// Example:
/// ```dart
/// ChipTextMode mode = ChipTextMode.normal;
/// Color bgColor = mode.background.color;  // Get background color
/// Color textColor = mode.textColor.color; // Get text color
/// ```
enum ChipTextMode {
  /// Normal mode with a blue color scheme.
  normal(SeedColors.normalBackgroundSeed, SeedColors.normalTextSeed),

  /// Incorrect mode with a red color scheme.
  inCorrect(SeedColors.errorBackgroundSeed, SeedColors.errorTextSeed),

  /// Correct mode with a green color scheme.
  correct(SeedColors.succeedBackgroundSeed, SeedColors.succeedTextSeed);

  /// Creates a ChipTextMode with the given background and text colors.
  ///
  /// - [background]: The background color seed for the chip
  /// - [textColor]: The text color seed for the chip
  const ChipTextMode(this.background, this.textColor);

  /// The background color seed for this mode.
  final SeedColors background;

  /// The text color seed for this mode.
  final SeedColors textColor;
}
