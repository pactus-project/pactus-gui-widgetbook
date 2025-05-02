import 'package:fluent_ui/fluent_ui.dart';

@immutable
class AccentPallet extends ThemeExtension<AccentPallet> {
  const AccentPallet({
    required this.blue,
    required this.orange,
    required this.red,
    required this.purple,
    required this.teal,
    required this.lightGreen,
    required this.darkBlue,
  });

  final Color blue;
  final Color orange;
  final Color red;
  final Color purple;
  final Color teal;
  final Color lightGreen;
  final Color darkBlue;

  List<Color> get colors => [
        blue, // 0
        orange, // 1
        red, // 2
        purple, // 3
        teal, // 4
        lightGreen, // 5
        darkBlue, // 6
      ];

  Color getByIndex(int index) {
    if (index < 0 || index >= colors.length) {
      throw Exception('Invalid color index');
    }
    return colors[index];
  }

  @override
  AccentPallet copyWith({
    Color? blue,
    Color? orange,
    Color? red,
    Color? purple,
    Color? teal,
    Color? lightGreen,
    Color? darkBlue,
  }) {
    return AccentPallet(
      blue: blue ?? this.blue,
      orange: orange ?? this.orange,
      red: red ?? this.red,
      purple: purple ?? this.purple,
      teal: teal ?? this.teal,
      lightGreen: lightGreen ?? this.lightGreen,
      darkBlue: darkBlue ?? this.darkBlue,
    );
  }

  @override
  AccentPallet lerp(ThemeExtension<AccentPallet>? other, double t) {
    if (other is! AccentPallet) {
      return this;
    }
    return AccentPallet(
      blue: Color.lerp(blue, other.blue, t)!,
      orange: Color.lerp(orange, other.orange, t)!,
      red: Color.lerp(red, other.red, t)!,
      purple: Color.lerp(purple, other.purple, t)!,
      teal: Color.lerp(teal, other.teal, t)!,
      lightGreen: Color.lerp(lightGreen, other.lightGreen, t)!,
      darkBlue: Color.lerp(darkBlue, other.darkBlue, t)!,
    );
  }

  @override
  String toString() => 'AccentPallet(${colors.join(", ")})';

  static const light = AccentPallet(
    blue: Color(0xFF0078D4),
    orange: Color(0xFFF7630C),
    red: Color(0xFFE81123),
    purple: Color(0xFF5C2D91),
    teal: Color(0xFF00B294),
    lightGreen: Color(0xFF107C10),
    darkBlue: Color(0xFF1B1A49),
  );

  static const dark = AccentPallet(
    blue: Color(0xFF0078D4),
    orange: Color(0xFFF7630C),
    red: Color(0xFFE81123),
    purple: Color(0xFF5C2D91),
    teal: Color(0xFF00B294),
    lightGreen: Color(0xFF107C10),
    darkBlue: Color(0xFF1B1A49),
  );
}
