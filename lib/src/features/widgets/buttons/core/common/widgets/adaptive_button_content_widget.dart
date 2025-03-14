import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/padding_size_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/text_styles/inter_text_styles.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/enums/button_type_enum.dart';

class AdaptiveButtonContent extends StatelessWidget {
  const AdaptiveButtonContent({
    super.key,
    required this.requestState,
    required this.suffixIcon,
    required this.prefixIcon,
    this.title,
    this.loadingDotColor,
    required this.buttonType,
    this.icon,
    this.paddingSize = PaddingSizeEnum.medium,
  });

  final RequestStateEnum requestState;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final String? title;
  final Color? loadingDotColor;
  final ButtonTypeEnum buttonType;
  final IconData? icon;
  final PaddingSizeEnum paddingSize;

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    final TextStyle buttonInformation = _getTextStyleBasedOnPadding(paddingSize);

    return Center(
      child: switch (requestState) {
        RequestStateEnum.loading => ProgressRing(
          activeColor: loadingDotColor ?? theme.accentColor.lightest,
          strokeWidth: 1,
        ),
        RequestStateEnum.initial || RequestStateEnum.loaded => switch (buttonType) {
          ButtonTypeEnum.titleOnly => Text(
            title!,
            style: buttonInformation,
          ),
          ButtonTypeEnum.iconAndTitle => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(prefixIcon),
              const SizedBox(width: 8),
              Text(
                title!,
                style: buttonInformation,
              ),
            ],
          ),
          ButtonTypeEnum.titleAndIcon => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title!,
                style: buttonInformation,
              ),
              const SizedBox(width: 8),
              Icon(suffixIcon),
            ],
          ),
          ButtonTypeEnum.iconTitleAndIcon => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(prefixIcon),
              const SizedBox(width: 8),
              Text(
                title!,
                style: buttonInformation,
              ),
              const SizedBox(width: 8),
              Icon(suffixIcon),
            ],
          ),
          ButtonTypeEnum.iconOnly => Icon(icon),
        },
        RequestStateEnum.error => const Icon(FluentIcons.sync),
      },
    );
  }

  TextStyle _getTextStyleBasedOnPadding(PaddingSizeEnum paddingSize) {
    switch (paddingSize) {
      case PaddingSizeEnum.min:
        return InterTextStyles.smallRegular;
      case PaddingSizeEnum.medium:
        return InterTextStyles.bodyRegular;
      case PaddingSizeEnum.large:
        return InterTextStyles.bodyBold;
    }
  }
}
