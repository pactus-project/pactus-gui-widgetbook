import 'package:fluent_ui/fluent_ui.dart';

@immutable
class OnAccentPallet extends ThemeExtension<OnAccentPallet> {
  final Color onAccentColor;

  const OnAccentPallet({required this.onAccentColor});

  @override
  OnAccentPallet copyWith({Color? onAccentColor}) {
    return OnAccentPallet(
      onAccentColor: onAccentColor ?? this.onAccentColor,
    );
  }

  @override
  OnAccentPallet lerp(ThemeExtension<OnAccentPallet>? other, double t) {
    if (other is! OnAccentPallet) {
      return this;
    }
    return OnAccentPallet(
      onAccentColor: Color.lerp(onAccentColor, other.onAccentColor, t)!,
    );
  }

  static OnAccentPallet lightPallet(Color backgroundColor) {
    final luminance = backgroundColor.computeLuminance();
    final onAccentColor = luminance < 0.5 ? Colors.white : const Color(0xFF121212);
    return OnAccentPallet(onAccentColor: onAccentColor);
  }

  static const light = OnAccentPallet(onAccentColor: Color(0xFF121212));
  static const dark = OnAccentPallet(onAccentColor: Colors.white);

  static OnAccentPallet darkPallet(Color accentColor) {
    final luminance = accentColor.computeLuminance();
    final onAccentColor = luminance < 0.5 ? Colors.white : const Color(0xFF121212);
    return OnAccentPallet(onAccentColor: onAccentColor);
  }
}
