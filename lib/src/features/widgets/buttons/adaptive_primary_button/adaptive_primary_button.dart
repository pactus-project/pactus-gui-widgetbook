import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/padding_size_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/common/widgets/adaptive_button_content_widget.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/utils/methods/get_fluent_button_style_method.dart';

class AdaptivePrimaryButton extends StatelessWidget {
  const AdaptivePrimaryButton({
    super.key,
    required this.requestState,
    this.onPressed,
    this.suffixIcon,
    this.prefixIcon,
    this.title,
    required this.buttonType,
    this.baseIcon,
    required this.paddingSize,
    this.isOutlined = false,
  });

  final RequestStateEnum requestState;
  final Function()? onPressed;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final String? title;
  final ButtonTypeEnum buttonType;
  final IconData? baseIcon;
  final PaddingSizeEnum paddingSize;
  final bool isOutlined;

  // Factory methods to create buttons with specific button types
  factory AdaptivePrimaryButton.createTitleOnly({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    bool isOutlined = false,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      isOutlined: isOutlined,
      buttonType: ButtonTypeEnum.titleOnly,
    );
  }

  factory AdaptivePrimaryButton.createIconAndTitle({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    bool isOutlined = false,
    IconData? prefixIcon,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      isOutlined: isOutlined,
      buttonType: ButtonTypeEnum.iconAndTitle,
      prefixIcon: prefixIcon,
    );
  }

  factory AdaptivePrimaryButton.createTitleAndIcon({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    bool isOutlined = false,
    IconData? suffixIcon,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      isOutlined: isOutlined,
      buttonType: ButtonTypeEnum.titleAndIcon,
      suffixIcon: suffixIcon,
    );
  }

  factory AdaptivePrimaryButton.createIconTitleAndIcon({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    bool isOutlined = false,
    IconData? prefixIcon,
    IconData? suffixIcon,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      isOutlined: isOutlined,
      buttonType: ButtonTypeEnum.iconTitleAndIcon,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }

  factory AdaptivePrimaryButton.createIconOnly({
    required RequestStateEnum requestState,
    Function()? onPressed,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    bool isOutlined = false,
    IconData? baseIcon,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState,
      onPressed: onPressed,
      paddingSize: paddingSize,
      isOutlined: isOutlined,
      buttonType: ButtonTypeEnum.iconOnly,
      baseIcon: baseIcon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Button(
        style: getFluentButtonStyleMethod(
          context: context,
          paddingSize: paddingSize,
          isOutlined: isOutlined,
        ),
        onPressed: (requestState == RequestStateEnum.loading) ? null : onPressed,
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
          ),
        ),
      ),
    );
  }
}