import 'package:flutter/material.dart' show FontWeight, TextStyle;

/// ## [InterTextStyles] Class Documentation
///
/// The `InterTextStyles` class defines a set of predefined text styles using the "Inter" font family.
/// It provides various text styles that can be used throughout the application to ensure consistency in typography.
///
/// ### Usage:
///
/// This class contains multiple predefined text styles categorized by font weight and size.
///
/// ### Font Families:
///
/// - **[interThin]**: `"Inter-Thin"`
/// - **[interExtraLight]**: `"Inter-ExtraLight"`
/// - **[interLight]**: `"Inter-Light"`
/// - **[interRegular]**: `"Inter-Regular"`
/// - **[interMedium]**: `"Inter-Medium"`
/// - **[interSemiBold]**: `"Inter-SemiBold"`
/// - **[interBold]**: `"Inter-Bold"`
/// - **[interExtraBold]**: `"Inter-ExtraBold"`
///
/// ### Predefined Text Styles:
///
/// - **[caption]**:
///   - Font: `Inter-Medium`
///   - Font Size: `12px`
///   - Font Weight: `Medium (500)`
///
/// - **[body]**:
///   - Font: `Inter-Regular`
///   - Font Size: `14px`
///   - Font Weight: `Regular (400)`
///
/// - **[bodyStrong]**:
///   - Font: `Inter-Bold`
///   - Font Size: `16px`
///   - Font Weight: `Bold (700)`
///
/// - **[bodyLarge]**:
///   - Font: `Inter-Regular`
///   - Font Size: `16px`
///   - Font Weight: `Regular (400)`
///
/// - **[subtitle]**:
///   - Font: `Inter-Regular`
///   - Font Size: `20px`
///   - Font Weight: `Regular (400)`
///
/// - **[title]**:
///   - Font: `Inter-Medium`
///   - Font Size: `24px`
///   - Font Weight: `Medium (500)`
///
/// - **[titleLarge]**:
///   - Font: `Inter-Bold`
///   - Font Size: `28px`
///   - Font Weight: `Bold (700)`
///
/// - **[display]**:
///   - Font: `Inter-Bold`
///   - Font Size: `42px`
///   - Font Weight: `Bold (700)`
///
/// ### Example:
///
/// ```dart
/// Text(
///   'Hello, world!',
///   style: InterTextStyles.display,
/// );
/// ```
///
/// This example demonstrates how to apply a predefined text style from `InterTextStyles` in a Flutter widget.

class InterTextStyles {
  InterTextStyles._();

  // Font family constants based on the specified weights
  static const interThin = 'Inter-Thin';
  static const interExtraLight = 'Inter-ExtraLight';
  static const interLight = 'Inter-Light';
  static const interRegular = 'Inter-Regular';
  static const interMedium = 'Inter-Medium';
  static const interSemiBold = 'Inter-SemiBold';
  static const interBold = 'Inter-Bold';
  static const interExtraBold = 'Inter-ExtraBold';

  // Caption/medium
  static const TextStyle caption = TextStyle(
    fontFamily: interMedium, // font-family: Inter-Medium;
    fontSize: 12, // font-size: 12px;
    height: 1.83, // line-height: 22px (22px line-height / 12px font-size);
    fontWeight: FontWeight.w500, // font-weight: 500 (Medium);
  );

  // Small/regular
  static const TextStyle body = TextStyle(
    fontFamily: interRegular, // font-family: Inter-Regular;
    fontSize: 14, // font-size: 14px;
    height: 1.57, // line-height: 22px (22px line-height / 14px font-size);
    fontWeight: FontWeight.w400, // font-weight: 400 (Regular);
  );

  // Body/bold
  static const TextStyle bodyStrong = TextStyle(
    fontFamily: interBold, // font-family: Inter-Bold;
    fontSize: 16, // font-size: 16px;
    height: 1.5, // line-height: 24px (24px line-height / 16px font-size);
    fontWeight: FontWeight.w700, // font-weight: 700 (Bold);
  );

  // Body/regular
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: interRegular, // font-family: Inter-Regular;
    fontSize: 16, // font-size: 16px;
    height: 1.375, // line-height: 22px (22px line-height / 16px font-size);
    fontWeight: FontWeight.w400, // font-weight: 400 (Regular);
  );

  // Subtitle/regular
  static const TextStyle subtitle = TextStyle(
    fontFamily: interRegular, // font-family: Inter-Regular;
    fontSize: 20, // font-size: 20px;
    height: 1.1, // line-height: 22px (22px line-height / 20px font-size);
    fontWeight: FontWeight.w400, // font-weight: 400 (Regular);
  );

  // Title/medium
  static const TextStyle title = TextStyle(
    fontFamily: interMedium, // font-family: Inter-Medium;
    fontSize: 24, // font-size: 24px;
    height: 1.5, // line-height: 36px (36px line-height / 24px font-size);
    fontWeight: FontWeight.w500, // font-weight: 500 (Medium);
  );

  // Title/bold
  static const TextStyle titleLarge = TextStyle(
    fontFamily: interBold, // font-family: Inter-Bold;
    fontSize: 28, // font-size: 28px;
    height: 1.0, // line-height: 28px (28px line-height / 28px font-size);
    fontWeight: FontWeight.w700, // font-weight: 700 (Bold);
  );

  // Header/bold
  static const TextStyle display = TextStyle(
    fontFamily: interBold, // font-family: Inter-Bold;
    fontSize: 42, // font-size: 42px;
    height: 1.24, // line-height: 52px (52px line-height / 42px font-size);
    fontWeight: FontWeight.w700, // font-weight: 700 (Bold);
  );
}
