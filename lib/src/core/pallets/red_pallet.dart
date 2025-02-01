import 'package:fluent_ui/fluent_ui.dart';

@immutable
class RedPallet extends ThemeExtension<RedPallet> {
  const RedPallet(
      {required this.red900,
        required this.red800,
        required this.red700,
        required this.red600,
        required this.red500,
        required this.red400,
        required this.red300,
        required this.red200,
        required this.red100,
        required this.red50});

  final Color? red900;
  final Color? red800;
  final Color? red700;
  final Color? red600;
  final Color? red500;
  final Color? red400;
  final Color? red300;
  final Color? red200;
  final Color? red100;
  final Color? red50;

  @override
  RedPallet copyWith(
      {Color? red900,
        Color? red800,
        Color? red700,
        Color? red600,
        Color? red500,
        Color? red400,
        Color? red300,
        Color? red200,
        Color? red100,
        Color? red50}) {
    return RedPallet(
      red900: red900 ?? this.red900,
      red800: red800 ?? this.red800,
      red700: red700 ?? this.red700,
      red600: red600 ?? this.red600,
      red500: red500 ?? this.red500,
      red400: red400 ?? this.red400,
      red300: red300 ?? this.red300,
      red200: red200 ?? this.red200,
      red100: red100 ?? this.red100,
      red50: red50 ?? this.red50,
    );
  }

  // Controls how the properties change on theme changes
  @override
  RedPallet lerp(ThemeExtension<RedPallet>? other, double t) {
    if (other is! RedPallet) {
      return this;
    }
    return RedPallet(
      red900: Color.lerp(red900, other.red900, t),
      red800: Color.lerp(red800, other.red800, t),
      red700: Color.lerp(red700, other.red700, t),
      red600: Color.lerp(red600, other.red600, t),
      red500: Color.lerp(red500, other.red500, t),
      red400: Color.lerp(red400, other.red400, t),
      red300: Color.lerp(red300, other.red300, t),
      red200: Color.lerp(red200, other.red200, t),
      red100: Color.lerp(red100, other.red100, t),
      red50: Color.lerp(red50, other.red50, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'RedPallet('
      'red900:$red900, '
      'red800: $red800, '
      'red700: $red700, '
      'red600: $red600, '
      'red500: $red500, '
      'red400: $red400, '
      'red300: $red300, '
      'red200: $red200, '
      'red100: $red100, '
      'red50: $red50, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 10:
        return red900;
      case 9:
        return red800;
      case 8:
        return red700;
      case 7:
        return red600;
      case 6:
        return red500;
      case 5:
        return red400;
      case 4:
        return red300;
      case 3:
        return red200;
      case 2:
        return red100;
      case 1:
        return red50;
      default:
        throw Exception('Invalid RedPallet color index');
    }
  }

  // the light theme
  static const light = RedPallet(
    red900: Color(0xFF531313),
    red800: Color(0xFF821717),
    red700: Color(0xFFB11B1B),
    red600: Color(0xFFDC2828),
    red500: Color(0xFFEF4343),
    red400: Color(0xFFFF6565),
    red300: Color(0xFFFFA0A0),
    red200: Color(0xFFFFC9C9),
    red100: Color(0xFFFFDCDC),
    red50: Color(0xFFFEF1F1),
  );

  // the dark theme
  static const dark = RedPallet(
    red900: Color(0xFFFED0D0),
    red800: Color(0xFFFFBBBB),
    red700: Color(0xFFFFA7A7),
    red600: Color(0xFFFF9393),
    red500: Color(0xFFFF6262),
    red400: Color(0xFFFA4D4D),
    red300: Color(0xFFDC3D3D),
    red200: Color(0xFFA42828),
    red100: Color(0xFF6B1919),
    red50: Color(0xFF461A1A),
  );
}
