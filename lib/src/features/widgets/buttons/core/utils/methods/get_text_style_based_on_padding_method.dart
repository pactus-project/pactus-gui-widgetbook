import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/padding_size_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/text_styles/inter_text_styles.dart';

/// The [getTextStyleBasedOnPadding] function determines the appropriate text style
/// based on the given padding size.
///
/// This function returns different `TextStyle` objects based on the provided
/// padding size, ensuring that the text style adapts to the button's padding
/// for consistent and visually balanced design.
///
/// ### Parameters:
/// - [paddingSize] (`PaddingSizeEnum`): The enum representing the padding size
///   of the button. It decides which text style should be applied.
///
/// ### Logic:
/// - When the padding size is `PaddingSizeEnum.min`, the text style is `smallRegular`
///   from `InterTextStyles`, applying a smaller text style for minimal padding.
/// - When the padding size is `PaddingSizeEnum.medium`, the text style is `bodyRegular`
///   from `InterTextStyles`, providing a standard, regular font weight.
/// - When the padding size is `PaddingSizeEnum.large`, the text style is `bodyBold`
///   from `InterTextStyles`, applying a bolder font for larger padding.
///
TextStyle getTextStyleBasedOnPadding(PaddingSizeEnum paddingSize) {
  switch (paddingSize) {
    case PaddingSizeEnum.min:
      return InterTextStyles.smallRegular;
    case PaddingSizeEnum.medium:
      return InterTextStyles.bodyRegular;
    case PaddingSizeEnum.large:
      return InterTextStyles.bodyBold;
  }
}
