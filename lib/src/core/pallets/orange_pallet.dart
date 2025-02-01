import 'package:fluent_ui/fluent_ui.dart';

@immutable
class OrangePallet extends ThemeExtension<OrangePallet> {
  const OrangePallet(
      {required this.orange900,
        required this.orange800,
        required this.orange700,
        required this.orange600,
        required this.orange500,
        required this.orange400,
        required this.orange300,
        required this.orange200,
        required this.orange100,
        required this.orange50});

  final Color? orange900;
  final Color? orange800;
  final Color? orange700;
  final Color? orange600;
  final Color? orange500;
  final Color? orange400;
  final Color? orange300;
  final Color? orange200;
  final Color? orange100;
  final Color? orange50;

  @override
  OrangePallet copyWith(
      {Color? orange900,
        Color? orange800,
        Color? orange700,
        Color? orange600,
        Color? orange500,
        Color? orange400,
        Color? orange300,
        Color? orange200,
        Color? orange100,
        Color? orange50}) {
    return OrangePallet(
      orange900: orange900 ?? this.orange900,
      orange800: orange800 ?? this.orange800,
      orange700: orange700 ?? this.orange700,
      orange600: orange600 ?? this.orange600,
      orange500: orange500 ?? this.orange500,
      orange400: orange400 ?? this.orange400,
      orange300: orange300 ?? this.orange300,
      orange200: orange200 ?? this.orange200,
      orange100: orange100 ?? this.orange100,
      orange50: orange50 ?? this.orange50,
    );
  }

  // Controls how the properties change on theme changes
  @override
  OrangePallet lerp(ThemeExtension<OrangePallet>? other, double t) {
    if (other is! OrangePallet) {
      return this;
    }
    return OrangePallet(
      orange900: Color.lerp(orange900, other.orange900, t),
      orange800: Color.lerp(orange800, other.orange800, t),
      orange700: Color.lerp(orange700, other.orange700, t),
      orange600: Color.lerp(orange600, other.orange600, t),
      orange500: Color.lerp(orange500, other.orange500, t),
      orange400: Color.lerp(orange400, other.orange400, t),
      orange300: Color.lerp(orange300, other.orange300, t),
      orange200: Color.lerp(orange200, other.orange200, t),
      orange100: Color.lerp(orange100, other.orange100, t),
      orange50: Color.lerp(orange50, other.orange50, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'OrangePallet('
      'orange900:$orange900, '
      'orange800: $orange800, '
      'orange700: $orange700, '
      'orange600: $orange600, '
      'orange500: $orange500, '
      'orange400: $orange400, '
      'orange300: $orange300, '
      'orange200: $orange200, '
      'orange100: $orange100, '
      'orange50: $orange50, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 10:
        return orange900;
      case 9:
        return orange800;
      case 8:
        return orange700;
      case 7:
        return orange600;
      case 6:
        return orange500;
      case 5:
        return orange400;
      case 4:
        return orange300;
      case 3:
        return orange200;
      case 2:
        return orange100;
      case 1:
        return orange50;
      default:
        throw Exception('Invalid OrangePallet color index');
    }
  }

  // the light theme
  static const light = OrangePallet(
    orange900: Color(0xFF471A0A),
    orange800: Color(0xFF80310F),
    orange700: Color(0xFFB63C0B),
    orange600: Color(0xFFE4570C),
    orange500: Color(0xFFF67416),
    orange400: Color(0xFFFB923C),
    orange300: Color(0xFFFDBA72),
    orange200: Color(0xFFFED6A9),
    orange100: Color(0xFFFFEDD6),
    orange50: Color(0xFFFFF6EB),
  );

  // the dark theme
  static const dark = OrangePallet(
    orange900: Color(0xFFFFF6EB),
    orange800: Color(0xFFFFEDD6),
    orange700: Color(0xFFFED6A9),
    orange600: Color(0xFFFDBA72),
    orange500: Color(0xFFFB923C),
    orange400: Color(0xFFFB923C),
    orange300: Color(0xFFCE5A07),
    orange200: Color(0xFFAB4827),
    orange100: Color(0xFF852C0F),
    orange50: Color(0xFF31160D),
  );
}
