import 'package:fluent_ui/fluent_ui.dart';

@immutable
class BlueGrayPallet extends ThemeExtension<BlueGrayPallet> {
  const BlueGrayPallet(
      {required this.blueGray900,
        required this.blueGray800,
        required this.blueGray700,
        required this.blueGray600,
        required this.blueGray500,
        required this.blueGray400,
        required this.blueGray300,
        required this.blueGray200,
        required this.blueGray100,
        required this.blueGray50});

  final Color? blueGray900;
  final Color? blueGray800;
  final Color? blueGray700;
  final Color? blueGray600;
  final Color? blueGray500;
  final Color? blueGray400;
  final Color? blueGray300;
  final Color? blueGray200;
  final Color? blueGray100;
  final Color? blueGray50;

  @override
  BlueGrayPallet copyWith(
      {Color? blueGray900,
        Color? blueGray800,
        Color? blueGray700,
        Color? blueGray600,
        Color? blueGray500,
        Color? blueGray400,
        Color? blueGray300,
        Color? blueGray200,
        Color? blueGray100,
        Color? blueGray50}) {
    return BlueGrayPallet(
      blueGray900: blueGray900 ?? this.blueGray900,
      blueGray800: blueGray800 ?? this.blueGray800,
      blueGray700: blueGray700 ?? this.blueGray700,
      blueGray600: blueGray600 ?? this.blueGray600,
      blueGray500: blueGray500 ?? this.blueGray500,
      blueGray400: blueGray400 ?? this.blueGray400,
      blueGray300: blueGray300 ?? this.blueGray300,
      blueGray200: blueGray200 ?? this.blueGray200,
      blueGray100: blueGray100 ?? this.blueGray100,
      blueGray50: blueGray50 ?? this.blueGray50,
    );
  }

  // Controls how the properties change on theme changes
  @override
  BlueGrayPallet lerp(ThemeExtension<BlueGrayPallet>? other, double t) {
    if (other is! BlueGrayPallet) {
      return this;
    }
    return BlueGrayPallet(
      blueGray900: Color.lerp(blueGray900, other.blueGray900, t),
      blueGray800: Color.lerp(blueGray800, other.blueGray800, t),
      blueGray700: Color.lerp(blueGray700, other.blueGray700, t),
      blueGray600: Color.lerp(blueGray600, other.blueGray600, t),
      blueGray500: Color.lerp(blueGray500, other.blueGray500, t),
      blueGray400: Color.lerp(blueGray400, other.blueGray400, t),
      blueGray300: Color.lerp(blueGray300, other.blueGray300, t),
      blueGray200: Color.lerp(blueGray200, other.blueGray200, t),
      blueGray100: Color.lerp(blueGray100, other.blueGray100, t),
      blueGray50: Color.lerp(blueGray50, other.blueGray50, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'BlueGrayPallet('
      'blueGray900:$blueGray900, '
      'blueGray800: $blueGray800, '
      'blueGray700: $blueGray700, '
      'blueGray600: $blueGray600, '
      'blueGray500: $blueGray500, '
      'blueGray400: $blueGray400, '
      'blueGray300: $blueGray300, '
      'blueGray200: $blueGray200, '
      'blueGray100: $blueGray100, '
      'blueGray50: $blueGray50, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 10:
        return blueGray900;
      case 9:
        return blueGray800;
      case 8:
        return blueGray700;
      case 7:
        return blueGray600;
      case 6:
        return blueGray500;
      case 5:
        return blueGray400;
      case 4:
        return blueGray300;
      case 3:
        return blueGray200;
      case 2:
        return blueGray100;
      case 1:
        return blueGray50;
      default:
        throw Exception('Invalid BlueGrayPallet color index');
    }
  }

  // the light theme
  static const light = BlueGrayPallet(
    blueGray900: Color(0xFF0F1729),
    blueGray800: Color(0xFF1D283A),
    blueGray700: Color(0xFF344256),
    blueGray600: Color(0xFF48566A),
    blueGray500: Color(0xFF65758B),
    blueGray400: Color(0xFF9EACC0),
    blueGray300: Color(0xFFC8D6E5),
    blueGray200: Color(0xFFE1E7EF),
    blueGray100: Color(0xFFF1F5F9),
    blueGray50: Color(0xFFF8FAFC),
  );

  // the dark theme
  static const dark = BlueGrayPallet(
    blueGray900: Color(0xFFF8FAFC),
    blueGray800: Color(0xFFE2EBF3),
    blueGray700: Color(0xFFD4DCE8),
    blueGray600: Color(0xFFB1C0D2),
    blueGray500: Color(0xFF8B9BB2),
    blueGray400: Color(0xFF5E6D82),
    blueGray300: Color(0xFF323B49),
    blueGray200: Color(0xFF252E3C),
    blueGray100: Color(0xFF1A2332),
    blueGray50: Color(0xFF0C101C),
  );
}
