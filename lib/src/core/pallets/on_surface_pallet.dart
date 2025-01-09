import 'package:fluent_ui/fluent_ui.dart';

/// ## [OnSurfacePallet] Class Documentation
///
/// The `OnSurfacePallet` class is a `ThemeExtension` that defines a palette of
/// colors used for surface-related
/// elements in both light and dark themes. It allows for dynamic theming and
/// seamless transitions
/// between themes using `lerp` for interpolation.
///
/// ### Usage:
///
/// The `OnSurfacePallet` class provides a structured way to define multiple
/// color shades for on-surface elements,
/// making it easy to customize and switch between light and dark themes.
///
/// ### Properties:
///
/// - **[onSurface4]** (Color?):
///   - Represents the darkest shade of the on-surface palette.
///   - Typically used for the most prominent text or UI elements.
///
/// - **[onSurface3]** (Color?):
///   - A slightly lighter shade compared to `onSurface4`.
///   - Suitable for secondary text or less prominent elements.
///
/// - **[onSurface2]** (Color?):
///   - A mid-tone shade for on-surface elements.
///   - Useful for borders, icons, or supporting text.
///
/// - **[onSurface1]** (Color?):
///   - A lighter shade compared to `onSurface2`.
///   - Commonly used for subtle UI elements or backgrounds.
///
/// - **[onSurface0]** (Color?):
///   - The lightest shade of the palette.
///   - Typically used for backgrounds or less emphasized elements.
///
/// ### Methods:
///
/// - **[copyWith]**:
///   - Creates a new `OnSurfacePallet` instance with updated properties while
///   preserving the existing values for non-specified fields.
///
/// - **[lerp]**:
///   - Interpolates between two `OnSurfacePallet` instances.
///   - Useful for animating theme transitions.
///
/// - **[getByIndex(int index)]**:
///   - Retrieves a color from the palette based on its index.
///   - Index range: 0 (lightest) to 4 (darkest).
///   - Throws an exception if an invalid index is provided.
///
/// - **[toString]**:
///   - Returns a string representation of the `OnSurfacePallet`
///   instance for debugging purposes.
///
/// ### Static Properties:
///
/// - **[light]**:
///   - Predefined `OnSurfacePallet` for the light theme.
///   - Colors are configured based on Figma specifications,
///   starting from black at 100% to 3% opacity.
///
/// - **[dark]**:
///   - Predefined `OnSurfacePallet` for the dark theme.
///   - Inverts the shades of the light theme to accommodate dark mode.
///

class OnSurfacePallet extends ThemeExtension<OnSurfacePallet> {
  const OnSurfacePallet({
    required this.onSurface4,
    required this.onSurface3,
    required this.onSurface2,
    required this.onSurface1,
    required this.onSurface0,
  });

  final Color? onSurface4;
  final Color? onSurface3;
  final Color? onSurface2;
  final Color? onSurface1;
  final Color? onSurface0;

  @override
  OnSurfacePallet copyWith({
    Color? onSurface4,
    Color? onSurface3,
    Color? onSurface2,
    Color? onSurface1,
    Color? onSurface0,
  }) {
    return OnSurfacePallet(
      onSurface4: onSurface4 ?? this.onSurface4,
      onSurface3: onSurface3 ?? this.onSurface3,
      onSurface2: onSurface2 ?? this.onSurface2,
      onSurface1: onSurface1 ?? this.onSurface1,
      onSurface0: onSurface0 ?? this.onSurface0,
    );
  }

  // Controls how the properties change on theme changes
  @override
  OnSurfacePallet lerp(ThemeExtension<OnSurfacePallet>? other, double t) {
    if (other is! OnSurfacePallet) {
      return this;
    }
    return OnSurfacePallet(
      onSurface4: Color.lerp(onSurface4, other.onSurface4, t),
      onSurface3: Color.lerp(onSurface3, other.onSurface3, t),
      onSurface2: Color.lerp(onSurface2, other.onSurface2, t),
      onSurface1: Color.lerp(onSurface1, other.onSurface1, t),
      onSurface0: Color.lerp(onSurface0, other.onSurface0, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'OnSurfacePallet('
      'onSurface4: $onSurface4, '
      'onSurface3: $onSurface3, '
      'onSurface2: $onSurface2, '
      'onSurface1: $onSurface1, '
      'onSurface0: $onSurface0, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 4:
        return onSurface4;
      case 3:
        return onSurface3;
      case 2:
        return onSurface2;
      case 1:
        return onSurface1;
      case 0:
        return onSurface0;
      default:
        throw Exception('Invalid OnSurfacePallet color index');
    }
  }

  // the light theme
  static const light = OnSurfacePallet(
    onSurface4: Color(0xff222222),
    //FIGMA: Black 100
    onSurface3: Color(0xff7A7A7A),
    //FIGMA: Black 60
    onSurface2: Color(0xffBDBDBD),
    //FIGMA: Black 30
    onSurface1: Color(0xffE9E9E9),
    //FIGMA: Black 10
    onSurface0: Color(0xffF8F8F8), //FIGMA: Black 03
  );

  // the dark theme
  static const dark = OnSurfacePallet(
    onSurface4: Color(0xffF8F8F8),
    onSurface3: Color(0xffE9E9E9),
    onSurface2: Color(0xffBDBDBD),
    onSurface1: Color(0xff7A7A7A),
    onSurface0: Color(0xff222222),
  );
}
