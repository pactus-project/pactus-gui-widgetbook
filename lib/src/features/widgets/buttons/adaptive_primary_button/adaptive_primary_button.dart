import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/padding_size_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/common/widgets/adaptive_button_content_widget.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/utils/methods/get_fluent_button_style_method.dart';

/// ## [AdaptivePrimaryButton] Widget Documentation
///
/// The `AdaptivePrimaryButton` is a customizable button widget designed to handle various button types based on the content (text, icons, or both). It adapts its layout and style based on different states such as loading, success, or failure. This button is particularly useful for situations where the button needs to display dynamic content, including text and icons, with adaptive behavior for different states and interactions.
///
/// ### Constructor Parameters:
/// - **[requestState]** (`RequestStateEnum`): Represents the current state of the request. It controls the button's loading state and whether the button can be pressed.
/// - **[onPressed]** (`Function()?`): The callback function to be invoked when the button is pressed.
/// - **[suffixIcon]** (`IconData?`): The icon to be displayed at the end of the button (after the title).
/// - **[prefixIcon]** (`IconData?`): The icon to be displayed at the beginning of the button (before the title).
/// - **[title]** (`String?`): The text displayed on the button.
/// - **[buttonType]** (`ButtonTypeEnum`): Specifies the type of button layout, including options like title-only, icon-and-title, and others.
/// - **[baseIcon]** (`IconData?`): The main icon to be displayed when only the icon is needed (used in the `iconOnly` button type).
/// - **[paddingSize]** (`PaddingSizeEnum`): Defines the horizontal padding size for the button content. It determines the spacing inside the button around the text and icons.
/// - **[isOutlined]** (`bool`): If `true`, the button will have an outline, otherwise, it will have a solid fill.
///
/// ### Factory Constructors:
/// These factory methods create `AdaptivePrimaryButton` instances with different button types:
/// - **[createTitleOnly]**: A button with only text (title).
/// - **[createIconAndTitle]**: A button with an icon before the text.
/// - **[createTitleAndIcon]**: A button with the text followed by an icon.
/// - **[createIconTitleAndIcon]**: A button with an icon before and after the text.
/// - **[createIconOnly]**: A button that only shows an icon.
///

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
    return Button(
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
    );
  }
}
