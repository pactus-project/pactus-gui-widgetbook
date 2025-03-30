import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/padding_size_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/utils/methods/get_fluent_outlined_button_style_method.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/common/widgets/adaptive_button_content_widget.dart';

class AdaptiveSecondaryButton extends StatelessWidget {
  const AdaptiveSecondaryButton({
    super.key,
    required this.requestState,
    this.onPressed,
    this.suffixIcon,
    this.prefixIcon,
    this.title,
    required this.buttonType,
    this.baseIcon,
    required this.paddingSize,
    this.isDefaultOutlinedButton = false,
  });

  final RequestStateEnum requestState;
  final Function()? onPressed;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final String? title;
  final ButtonTypeEnum buttonType;
  final IconData? baseIcon;
  final PaddingSizeEnum paddingSize;
  final bool isDefaultOutlinedButton;

  // Factory methods to create buttons with specific button types
  factory AdaptiveSecondaryButton.createTitleOnly({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    bool isDefaultOutlinedButton = false,
  }) {
    return AdaptiveSecondaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.titleOnly,
      isDefaultOutlinedButton: isDefaultOutlinedButton,
    );
  }

  factory AdaptiveSecondaryButton.createIconAndTitle({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? prefixIcon,
    bool isDefaultOutlinedButton = false,
  }) {
    return AdaptiveSecondaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconAndTitle,
      prefixIcon: prefixIcon,
      isDefaultOutlinedButton: isDefaultOutlinedButton,
    );
  }

  factory AdaptiveSecondaryButton.createTitleAndIcon({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? suffixIcon,
    bool isDefaultOutlinedButton = false,
  }) {
    return AdaptiveSecondaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.titleAndIcon,
      suffixIcon: suffixIcon,
      isDefaultOutlinedButton: isDefaultOutlinedButton,
    );
  }

  factory AdaptiveSecondaryButton.createIconTitleAndIcon({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? prefixIcon,
    IconData? suffixIcon,
    bool isDefaultOutlinedButton = false,
  }) {
    return AdaptiveSecondaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconTitleAndIcon,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      isDefaultOutlinedButton: isDefaultOutlinedButton,
    );
  }

  factory AdaptiveSecondaryButton.createIconOnly({
    required RequestStateEnum requestState,
    Function()? onPressed,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? baseIcon,
    bool isDefaultOutlinedButton = false,
  }) {
    return AdaptiveSecondaryButton(
      requestState: requestState,
      onPressed: onPressed,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconOnly,
      baseIcon: baseIcon,
      isDefaultOutlinedButton: isDefaultOutlinedButton,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: OutlinedButton(
        style: getFluentOutlinedButtonStyleMethod(
          context: context,
          paddingSize: paddingSize,
          isDefaultOutlinedButton: isDefaultOutlinedButton,
        ),
        onPressed:
        (requestState == RequestStateEnum.loading) ? null : onPressed,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingSize.horizontalSize),
          child: AdaptiveButtonContent(
            requestState: requestState,
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            title: title,
            loadingDotColor: FluentTheme.of(context).accentColor.lightest,
            buttonType: buttonType,
            icon: baseIcon,
            paddingSize: paddingSize,
          ),
        ),
      ),
    );
  }
}
