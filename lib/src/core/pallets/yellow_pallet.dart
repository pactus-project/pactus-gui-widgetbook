import 'package:fluent_ui/fluent_ui.dart';

@immutable
class YellowPallet extends ThemeExtension<YellowPallet> {
  const YellowPallet(
      {required this.yellow900,
        required this.yellow800,
        required this.yellow700,
        required this.yellow600,
        required this.yellow500,
        required this.yellow400,
        required this.yellow300,
        required this.yellow200,
        required this.yellow100,
        required this.yellow50});

  final Color? yellow900;
  final Color? yellow800;
  final Color? yellow700;
  final Color? yellow600;
  final Color? yellow500;
  final Color? yellow400;
  final Color? yellow300;
  final Color? yellow200;
  final Color? yellow100;
  final Color? yellow50;

  @override
  YellowPallet copyWith(
      {Color? yellow900,
        Color? yellow800,
        Color? yellow700,
        Color? yellow600,
        Color? yellow500,
        Color? yellow400,
        Color? yellow300,
        Color? yellow200,
        Color? yellow100,
        Color? yellow50}) {
    return YellowPallet(
      yellow900: yellow900 ?? this.yellow900,
      yellow800: yellow800 ?? this.yellow800,
      yellow700: yellow700 ?? this.yellow700,
      yellow600: yellow600 ?? this.yellow600,
      yellow500: yellow500 ?? this.yellow500,
      yellow400: yellow400 ?? this.yellow400,
      yellow300: yellow300 ?? this.yellow300,
      yellow200: yellow200 ?? this.yellow200,
      yellow100: yellow100 ?? this.yellow100,
      yellow50: yellow50 ?? this.yellow50,
    );
  }

  // Controls how the properties change on theme changes
  @override
  YellowPallet lerp(ThemeExtension<YellowPallet>? other, double t) {
    if (other is! YellowPallet) {
      return this;
    }
    return YellowPallet(
      yellow900: Color.lerp(yellow900, other.yellow900, t),
      yellow800: Color.lerp(yellow800, other.yellow800, t),
      yellow700: Color.lerp(yellow700, other.yellow700, t),
      yellow600: Color.lerp(yellow600, other.yellow600, t),
      yellow500: Color.lerp(yellow500, other.yellow500, t),
      yellow400: Color.lerp(yellow400, other.yellow400, t),
      yellow300: Color.lerp(yellow300, other.yellow300, t),
      yellow200: Color.lerp(yellow200, other.yellow200, t),
      yellow100: Color.lerp(yellow100, other.yellow100, t),
      yellow50: Color.lerp(yellow50, other.yellow50, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'YellowPallet('
      'yellow900:$yellow900, '
      'yellow800: $yellow800, '
      'yellow700: $yellow700, '
      'yellow600: $yellow600, '
      'yellow500: $yellow500, '
      'yellow400: $yellow400, '
      'yellow300: $yellow300, '
      'yellow200: $yellow200, '
      'yellow100: $yellow100, '
      'yellow50: $yellow50, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 10:
        return yellow900;
      case 9:
        return yellow800;
      case 8:
        return yellow700;
      case 7:
        return yellow600;
      case 6:
        return yellow500;
      case 5:
        return yellow400;
      case 4:
        return yellow300;
      case 3:
        return yellow200;
      case 2:
        return yellow100;
      case 1:
        return yellow50;
      default:
        throw Exception('Invalid YellowPallet color index');
    }
  }

  // the light theme
  static const light = YellowPallet(
    yellow900: Color(0xFF4F2B0C),
    yellow800: Color(0xFF73430C),
    yellow700: Color(0xFF935806),
    yellow600: Color(0xFFBC7C10),
    yellow500: Color(0xFFD9A508),
    yellow400: Color(0xFFFAC905),
    yellow300: Color(0xFFFFE561),
    yellow200: Color(0xFFFEF08B),
    yellow100: Color(0xFFFEF9C3),
    yellow50: Color(0xFFFEFCE7),
  );

  // the dark theme
  static const dark = YellowPallet(
    yellow900: Color(0xFFFEFCE6),
    yellow800: Color(0xFFFEFACB),
    yellow700: Color(0xFFFEF08B),
    yellow600: Color(0xFFFDDF49),
    yellow500: Color(0xFFFACC14),
    yellow400: Color(0xFFE7B008),
    yellow300: Color(0xFFC88A04),
    yellow200: Color(0xFFA26107),
    yellow100: Color(0xFF663A08),
    yellow50: Color(0xFF322910),
  );
}
