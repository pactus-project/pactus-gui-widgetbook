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
/// - **[captionMedium]**:
///   - Font: `Inter-Medium`
///   - Font Size: `12px`
///   - Font Weight: `Medium (500)`
///   - Line Height: `22px`
///
/// - **[smallRegular]**:
///   - Font: `Inter-Regular`
///   - Font Size: `14px`
///   - Font Weight: `Regular (400)`
///   - Line Height: `22px`
///
/// - **[bodyBold]**:
///   - Font: `Inter-Bold`
///   - Font Size: `16px`
///   - Font Weight: `Bold (700)`
///   - Line Height: `24px`
///
/// - **[bodyRegular]**:
///   - Font: `Inter-Regular`
///   - Font Size: `16px`
///   - Font Weight: `Regular (400)`
///   - Line Height: `22px`
///
/// - **[subtitleRegular]**:
///   - Font: `Inter-Regular`
///   - Font Size: `20px`
///   - Font Weight: `Regular (400)`
///   - Line Height: `22px`
///
/// - **[titleMedium]**:
///   - Font: `Inter-Medium`
///   - Font Size: `24px`
///   - Font Weight: `Medium (500)`
///   - Line Height: `36px`
///
/// - **[titleBold]**:
///   - Font: `Inter-Bold`
///   - Font Size: `28px`
///   - Font Weight: `Bold (700)`
///   - Line Height: `28px`
///
/// - **[headerBold]**:
///   - Font: `Inter-Bold`
///   - Font Size: `42px`
///   - Font Weight: `Bold (700)`
///   - Line Height: `52px`
///
/// ### Example:
///
/// ```dart
/// Text(
///   'Hello, world!',
///   style: InterTextStyles.bodyBold,
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
  static const TextStyle captionMedium = TextStyle(
    fontFamily: interMedium, // font-family: Inter-Medium;
    fontSize: 12, // font-size: 12px;
    fontWeight: FontWeight.w500, // font-weight: 500 (Medium);
    height: 1.83, // line-height: 22px (22px line-height / 12px font-size);
  );

  // Small/regular
  static const TextStyle smallRegular = TextStyle(
    fontFamily: interRegular, // font-family: Inter-Regular;
    fontSize: 14, // font-size: 14px;
    fontWeight: FontWeight.w400, // font-weight: 400 (Regular);
    height: 1.57, // line-height: 22px (22px line-height / 14px font-size);
  );

  // Body/bold
  static const TextStyle bodyBold = TextStyle(
    fontFamily: interBold, // font-family: Inter-Bold;
    fontSize: 16, // font-size: 16px;
    fontWeight: FontWeight.w700, // font-weight: 700 (Bold);
    height: 1.5, // line-height: 24px (24px line-height / 16px font-size);
  );

  // Body/regular
  static const TextStyle bodyRegular = TextStyle(
    fontFamily: interRegular, // font-family: Inter-Regular;
    fontSize: 16, // font-size: 16px;
    fontWeight: FontWeight.w400, // font-weight: 400 (Regular);
    height: 1.375, // line-height: 22px (22px line-height / 16px font-size);
  );

  // Subtitle/regular
  static const TextStyle subtitleRegular = TextStyle(
    fontFamily: interRegular, // font-family: Inter-Regular;
    fontSize: 20, // font-size: 20px;
    fontWeight: FontWeight.w400, // font-weight: 400 (Regular);
    height: 1.1, // line-height: 22px (22px line-height / 20px font-size);
  );

  // Title/medium
  static const TextStyle titleMedium = TextStyle(
    fontFamily: interMedium, // font-family: Inter-Medium;
    fontSize: 24, // font-size: 24px;
    fontWeight: FontWeight.w500, // font-weight: 500 (Medium);
    height: 1.5, // line-height: 36px (36px line-height / 24px font-size);
  );

  // Title/bold
  static const TextStyle titleBold = TextStyle(
    fontFamily: interBold, // font-family: Inter-Bold;
    fontSize: 28, // font-size: 28px;
    fontWeight: FontWeight.w700, // font-weight: 700 (Bold);
    height: 1.0, // line-height: 28px (28px line-height / 28px font-size);
  );

  // Header/bold
  static const TextStyle headerBold = TextStyle(
    fontFamily: interBold, // font-family: Inter-Bold;
    fontSize: 42, // font-size: 42px;
    fontWeight: FontWeight.w700, // font-weight: 700 (Bold);
    height: 1.24, // line-height: 52px (52px line-height / 42px font-size);
  );
}
