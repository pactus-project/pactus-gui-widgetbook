import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/padding_size_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/text_styles/inter_text_styles.dart';

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