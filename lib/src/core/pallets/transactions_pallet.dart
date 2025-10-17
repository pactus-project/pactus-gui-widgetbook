import 'package:fluent_ui/fluent_ui.dart';

/// ## [TransactionsPallet] Class Documentation
///
/// The TransactionsPallet class represents a custom theme extension containing
/// various colors for transaction-related UI elements.
/// It is designed to provide a consistent color scheme for both light and dark
/// themes in a Flutter application, specifically tailored for transaction interfaces.
///
/// ### Usage:
///
/// This class encapsulates a range of colors for different transaction states and
/// UI components, offering flexibility in how colors are applied throughout the
/// app's transaction-related UI. It supports theme switching by providing
/// pre-defined color sets for both light and dark modes.
///
/// ### Properties:
///
/// - **[border]** (Color?): Border color for transaction elements.
/// - **[failed]** (Color?): Color indicating failed transaction status.
/// - **[succeed]** (Color?): Color indicating successful transaction status.
/// - **[icon]** (Color?): Color for transaction-related icons.
/// - **[text]** (Color?): Color for transaction-related text.
/// - **[stepperBackground]** (Color?): Background color for stepper components.
/// - **[surface]** (Color?): Surface color for transaction containers.
/// - **[onSurface]** (Color?): Color for content displayed on surfaces.
///
/// ### Methods:
///
/// - **[copyWith]**:
///   - Creates a new instance of TransactionsPallet by copying the current instance
///   and replacing any provided values.
///
/// - **[lerp]**:
///   - Linearly interpolates between two TransactionsPallet instances based
///   on the provided factor (t).
///   - Returns a new instance of TransactionsPallet with colors blended between
///   the two instances.
///
/// - **[toString]**:
///   - Provides a string representation of the TransactionsPallet instance,
///   listing all its color properties.
///
/// - **[getByIndex]**:
///   - Retrieves the color at the specified index from the palette (1–8).
///   Throws an exception if the index is invalid.
///
@immutable
class TransactionsPallet extends ThemeExtension<TransactionsPallet> {
  const TransactionsPallet({
    required this.border,
    required this.failed,
    required this.succeed,
    required this.icon,
    required this.text,
    required this.stepperBackground,
    required this.surface,
    required this.onSurface,
  });

  final Color? border;
  final Color? failed;
  final Color? succeed;
  final Color? icon;
  final Color? text;
  final Color? stepperBackground;
  final Color? surface;
  final Color? onSurface;

  @override
  TransactionsPallet copyWith({
    Color? border,
    Color? failed,
    Color? succeed,
    Color? icon,
    Color? text,
    Color? stepperBackground,
    Color? surface,
    Color? onSurface,
  }) {
    return TransactionsPallet(
      border: border ?? this.border,
      failed: failed ?? this.failed,
      succeed: succeed ?? this.succeed,
      icon: icon ?? this.icon,
      text: text ?? this.text,
      stepperBackground: stepperBackground ?? this.stepperBackground,
      surface: surface ?? this.surface,
      onSurface: onSurface ?? this.onSurface,
    );
  }

  // Controls how the properties change on theme changes
  @override
  TransactionsPallet lerp(ThemeExtension<TransactionsPallet>? other, double t) {
    if (other is! TransactionsPallet) {
      return this;
    }
    return TransactionsPallet(
      border: Color.lerp(border, other.border, t),
      failed: Color.lerp(failed, other.failed, t),
      succeed: Color.lerp(succeed, other.succeed, t),
      icon: Color.lerp(icon, other.icon, t),
      text: Color.lerp(text, other.text, t),
      stepperBackground:
          Color.lerp(stepperBackground, other.stepperBackground, t),
      surface: Color.lerp(surface, other.surface, t),
      onSurface: Color.lerp(onSurface, other.onSurface, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'TransactionsPallet('
      'border:$border, '
      'failed:$failed, '
      'succeed:$succeed, '
      'icon: $icon, '
      'text: $text, '
      'stepperBackground: $stepperBackground, '
      'surface: $surface, '
      'onSurface: $onSurface, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 8:
        return border;
      case 7:
        return failed;
      case 6:
        return succeed;
      case 5:
        return icon;
      case 4:
        return text;
      case 3:
        return stepperBackground;
      case 2:
        return surface;
      case 1:
        return onSurface;
      default:
        throw Exception('Invalid TransactionsPallet color index');
    }
  }

  // the light theme
  static const light = TransactionsPallet(
    border: Color(0xFFA1AEBE),
    failed: Color(0xFFF91E1E),
    succeed: Color(0xFF08BA0F),
    icon: Color(0xFF242E39),
    text: Color(0xFF465668),
    stepperBackground: Color(0xFFFFFFFF),
    surface: Color(0xFFF0F0F0),
    onSurface: Color(0xFF616161),
  );

  // the dark theme
  static const dark = TransactionsPallet(
    border: Color(0xFF515151),
    failed: Color(0xFFDA3B01),
    succeed: Color(0xFF08BA0F),
    icon: Color(0xFFFFFFFF),
    text: Color(0xFFFFFFFF),
    stepperBackground: Color(0xFF000000),
    surface: Color(0xFF202020),
    onSurface: Color(0xFFFFFFFF),
  );
}
