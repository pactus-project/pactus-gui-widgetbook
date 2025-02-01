
import 'package:fluent_ui/fluent_ui.dart';
/// ## [VioletPallet] Class Documentation
///
/// The VioletPallet class represents a custom theme extension containing
/// various shades of violet (pink) colors.
/// It is designed to provide a gradient of violet hues for both light and dark
/// themes in a Flutter application.
///
/// ### Usage:
///
/// This class encapsulates a range of violet shades, offering flexibility
/// in how colors are applied throughout the app's UI.
/// It supports theme switching by providing pre-defined color sets for
/// both light and dark modes.
///
/// ### Properties:
///
/// - **[pink900]** (Color?): The darkest shade of violet in the palette.
/// - **[pink800]** (Color?): A slightly lighter shade of violet.
/// - **[pink700]** (Color?): A medium-dark shade of violet.
/// - **[pink600]** (Color?): A light violet shade.
/// - **[pink500]** (Color?): The base violet shade.
/// - **[pink400]** (Color?): A lighter violet shade.
/// - **[pink300]** (Color?): A soft violet hue.
/// - **[pink200]** (Color?): A very light violet shade.
/// - **[pink100]** (Color?): A pale violet shade.
/// - **[pink50]** (Color?): The lightest violet shade, nearly white.
///
/// ### Methods:
///
/// - **[copyWith]**:
///   - Creates a new instance of VioletPallet by copying the current
///   instance and replacing any provided values.
///
/// - **[lerp]**:
///   - Linearly interpolates between two VioletPallet instances based
///   on the provided factor (t).
///   - Returns a new instance of VioletPallet with colors blended between
///   the two instances.
///
/// - **[toString]**:
///   - Provides a string representation of the VioletPallet instance,
///   listing all its color properties.
///
/// - **[getByIndex]**:
///   - Retrieves the color at the specified index from the palette (1–10).
///   Throws an exception if the index is invalid.
///
@immutable
class VioletPallet extends ThemeExtension<VioletPallet> {
  const VioletPallet(
      {required this.pink900,
        required this.pink800,
        required this.pink700,
        required this.pink600,
        required this.pink500,
        required this.pink400,
        required this.pink300,
        required this.pink200,
        required this.pink100,
        required this.pink50});

  final Color? pink900;
  final Color? pink800;
  final Color? pink700;
  final Color? pink600;
  final Color? pink500;
  final Color? pink400;
  final Color? pink300;
  final Color? pink200;
  final Color? pink100;
  final Color? pink50;

  @override
  VioletPallet copyWith(
      {Color? pink900,
        Color? pink800,
        Color? pink700,
        Color? pink600,
        Color? pink500,
        Color? pink400,
        Color? pink300,
        Color? pink200,
        Color? pink100,
        Color? pink50}) {
    return VioletPallet(
      pink900: pink900 ?? this.pink900,
      pink800: pink800 ?? this.pink800,
      pink700: pink700 ?? this.pink700,
      pink600: pink600 ?? this.pink600,
      pink500: pink500 ?? this.pink500,
      pink400: pink400 ?? this.pink400,
      pink300: pink300 ?? this.pink300,
      pink200: pink200 ?? this.pink200,
      pink100: pink100 ?? this.pink100,
      pink50: pink50 ?? this.pink50,
    );
  }

  // Controls how the properties change on theme changes
  @override
  VioletPallet lerp(ThemeExtension<VioletPallet>? other, double t) {
    if (other is! VioletPallet) {
      return this;
    }
    return VioletPallet(
      pink900: Color.lerp(pink900, other.pink900, t),
      pink800: Color.lerp(pink800, other.pink800, t),
      pink700: Color.lerp(pink700, other.pink700, t),
      pink600: Color.lerp(pink600, other.pink600, t),
      pink500: Color.lerp(pink500, other.pink500, t),
      pink400: Color.lerp(pink400, other.pink400, t),
      pink300: Color.lerp(pink300, other.pink300, t),
      pink200: Color.lerp(pink200, other.pink200, t),
      pink100: Color.lerp(pink100, other.pink100, t),
      pink50: Color.lerp(pink50, other.pink50, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'VioletPallet('
      'pink900:$pink900, '
      'pink800: $pink800, '
      'pink700: $pink700, '
      'pink600: $pink600, '
      'pink500: $pink500, '
      'pink400: $pink400, '
      'pink300: $pink300, '
      'pink200: $pink200, '
      'pink100: $pink100, '
      'pink50: $pink50, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 10:
        return pink900;
      case 9:
        return pink800;
      case 8:
        return pink700;
      case 7:
        return pink600;
      case 6:
        return pink500;
      case 5:
        return pink400;
      case 4:
        return pink300;
      case 3:
        return pink200;
      case 2:
        return pink100;
      case 1:
        return pink50;
      default:
        throw Exception('Invalid VioletPallet color index');
    }
  }

  // the light theme
  static const light = VioletPallet(
    pink900: Color(0xFF230D44),
    pink800: Color(0xFF36146C),
    pink700: Color(0xFF6022C3),
    pink600: Color(0xFF7127F1),
    pink500: Color(0xFF8E4DFF),
    pink400: Color(0xFF9876F9),
    pink300: Color(0xFFB7A6FD),
    pink200: Color(0xFFDAD2FE),
    pink100: Color(0xFFE2DDFE),
    pink50: Color(0xFFF7F6FF),
  );

  // the dark theme
  static const dark = VioletPallet(
    pink900: Color(0xFFF6F5FF),
    pink800: Color(0xFFEBE7FE),
    pink700: Color(0xFFDED7FE),
    pink600: Color(0xFFC3B4FD),
    pink500: Color(0xFFA689FA),
    pink400: Color(0xFF895AF6),
    pink300: Color(0xFF7C3BED),
    pink200: Color(0xFF473493),
    pink100: Color(0xFF331362),
    pink50: Color(0xFF171330),
  );
}
