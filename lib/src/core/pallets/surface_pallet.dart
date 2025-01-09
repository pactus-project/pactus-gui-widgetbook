import 'package:fluent_ui/fluent_ui.dart';

/// ## [SurfacePallet] Class Documentation
///
/// The `SurfacePallet` class is a `ThemeExtension` that defines a palette of
/// colors used for surface-related
/// elements in both light and dark themes. It allows for dynamic theming and
/// seamless transitions
/// between themes using `lerp` for interpolation.
///
/// ### Usage:
///
/// The `SurfacePallet` class provides a structured way to define multiple
/// color shades for surfaces,
/// making it easy to customize and switch between light and dark themes.
///
/// ### Properties:
///
/// - **[surface3]** (Color?):
///   - Represents the brightest or most prominent surface color.
///   - Typically used for primary backgrounds or containers.
///
/// - **[surface2]** (Color?):
///   - A slightly dimmer surface color compared to `surface3`.
///   - Suitable for secondary containers or less prominent surfaces.
///
/// - **[surface1]** (Color?):
///   - The dimmest surface color in the palette.
///   - Commonly used for overlays or subtle background accents.
///
/// ### Methods:
///
/// - **[copyWith]**:
///   - Creates a new `SurfacePallet` instance with updated properties
///   while preserving the existing values for non-specified fields.
///
/// - **[lerp]**:
///   - Interpolates between two `SurfacePallet` instances.
///   - Useful for animating theme transitions.
///
/// - **[getByIndex(int index)]**:
///   - Retrieves a color from the palette based on its index.
///   - Index range: 1 (dimmest) to 3 (brightest).
///   - Throws an exception if an invalid index is provided.
///
/// - **[toString]**:
///   - Returns a string representation of the `SurfacePallet` instance for
///   debugging purposes.
///
/// ### Static Properties:
///
/// - **[light]**:
///   - Predefined `SurfacePallet` for the light theme.
///   - Colors are configured based on Figma specifications, starting from
///   fully opaque white to 30% opacity.
///
/// - **[dark]**:
///   - Predefined `SurfacePallet` for the dark theme.
///   - Inverts the shades of the light theme to accommodate dark mode.
///

class SurfacePallet extends ThemeExtension<SurfacePallet> {
  const SurfacePallet({
    required this.surface3,
    required this.surface2,
    required this.surface1,
  });

  final Color? surface3;
  final Color? surface2;
  final Color? surface1;

  @override
  SurfacePallet copyWith({Color? surface3, Color? surface2, Color? surface1}) {
    return SurfacePallet(
      surface3: surface3 ?? this.surface3,
      surface2: surface2 ?? this.surface2,
      surface1: surface1 ?? this.surface1,
    );
  }

  // Controls how the properties change on theme changes
  @override
  SurfacePallet lerp(ThemeExtension<SurfacePallet>? other, double t) {
    if (other is! SurfacePallet) {
      return this;
    }
    return SurfacePallet(
      surface3: Color.lerp(surface3, other.surface3, t),
      surface2: Color.lerp(surface2, other.surface2, t),
      surface1: Color.lerp(surface1, other.surface1, t),
    );
  }

  // Controls how it displays when the instance is being passed
  // to the `print()` method.
  @override
  String toString() => 'SurfacePallet('
      'surface3: $surface3, '
      'surface2: $surface2, '
      'surface1: $surface1, '
      ')';

  Color? getByIndex(int index) {
    switch (index) {
      case 3:
        return surface3;
      case 2:
        return surface2;
      case 1:
        return surface1;
      default:
        throw Exception('Invalid SurfacePallet color index');
    }
  }

  // the light theme
  static const light = SurfacePallet(
    surface3: Color(0xffffffff), // FIGMA: White 100
    surface2: Color.fromRGBO(255, 255, 255, 0.7), // FIGMA: White 70
    surface1: Color.fromRGBO(255, 255, 255, 0.3), // FIGMA: White 30
  );

  // the dark theme
  static const dark = SurfacePallet(
    surface3: Color(0xff222222),
    surface2: Color.fromRGBO(35, 35, 35, 0.7),
    surface1: Color.fromRGBO(35, 35, 35, 0.3),
  );
}
