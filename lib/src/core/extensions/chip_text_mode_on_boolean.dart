import 'package:pactus_gui_widgetbook/src/core/enum/chip_text_mode.dart';

extension ChipTextModeExtension on bool? {
  ChipTextMode detectChipTextModeOnBoolean() {
    return this == true ? ChipTextMode.correct : ChipTextMode.inCorrect;
  }
}
