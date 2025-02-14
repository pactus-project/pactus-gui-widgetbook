import 'package:pactus_gui_widgetbook/src/core/enum/pallet_colors_enum.dart';

enum ChipTextMode {
  normal(PalletColors.blue400, PalletColors.blue700),
  inCorrect(PalletColors.red400, PalletColors.red700),
  correct(PalletColors.green400, PalletColors.green700);

  const ChipTextMode(this.background, this.textColor);

  final PalletColors background;
  final PalletColors textColor;
}
