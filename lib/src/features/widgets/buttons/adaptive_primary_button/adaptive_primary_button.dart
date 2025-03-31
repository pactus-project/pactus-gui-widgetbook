import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/padding_size_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/common/widgets/adaptive_button_content_widget.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/utils/methods/get_fluent_button_style_method.dart';

/// ## [AdaptivePrimaryButton] Class Documentation
///
/// The `AdaptivePrimaryButton` class is a customizable primary button designed to adapt to different UI requirements.
/// It supports various configurations, including text-only, icon-only, and combinations of text and icons.
///
/// ### Properties:
///
/// - **[requestState]** (`RequestStateEnum`):
///   - Defines the state of the button (e.g., loading, success, failure).
///   - Determines if the button should be disabled.
///
/// - **[onPressed]** (`Function()?`):
///   - Callback function triggered when the button is pressed.
///   - Disabled if `requestState` is `loading`.
///
/// - **[suffixIcon]** (`IconData?`):
///   - An optional suffix icon displayed at the end of the button.
///
/// - **[prefixIcon]** (`IconData?`):
///   - An optional prefix icon displayed at the start of the button.
///
/// - **[title]** (`String?`):
///   - The text label of the button.
///   - Optional and used in applicable button configurations.
///
/// - **[buttonType]** (`ButtonTypeEnum`):
///   - Specifies the type of button (e.g., title-only, icon-only, both).
///
/// - **[baseIcon]** (`IconData?`):
///   - The primary icon used when the button is of type `iconOnly`.
///
/// - **[paddingSize]** (`PaddingSizeEnum`):
///   - Determines the padding size of the button.
///
/// ### Factory Methods:
///
/// - **[AdaptivePrimaryButton.createTitleOnly]**:
///   - Creates a button with only a title.
///
/// - **[AdaptivePrimaryButton.createIconAndTitle]**:
///   - Creates a button with a title and a leading icon.
///
/// - **[AdaptivePrimaryButton.createTitleAndIcon]**:
///   - Creates a button with a title and a trailing icon.
///
/// - **[AdaptivePrimaryButton.createIconTitleAndIcon]**:
///   - Creates a button with both leading and trailing icons along with a title.
///
/// - **[AdaptivePrimaryButton.createIconOnly]**:
///   - Creates a button that contains only an icon.
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
  });

  final RequestStateEnum requestState;
  final Function()? onPressed;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final String? title;
  final ButtonTypeEnum buttonType;
  final IconData? baseIcon;
  final PaddingSizeEnum paddingSize;

  // Factory methods to create buttons with specific button types
  factory AdaptivePrimaryButton.createTitleOnly({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.titleOnly,
    );
  }

  factory AdaptivePrimaryButton.createIconAndTitle({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? prefixIcon,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconAndTitle,
      prefixIcon: prefixIcon,
    );
  }

  factory AdaptivePrimaryButton.createTitleAndIcon({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? suffixIcon,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.titleAndIcon,
      suffixIcon: suffixIcon,
    );
  }

  factory AdaptivePrimaryButton.createIconTitleAndIcon({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? prefixIcon,
    IconData? suffixIcon,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconTitleAndIcon,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }

  factory AdaptivePrimaryButton.createIconOnly({
    required RequestStateEnum requestState,
    Function()? onPressed,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? baseIcon,
  }) {
    return AdaptivePrimaryButton(
      requestState: requestState,
      onPressed: onPressed,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconOnly,
      baseIcon: baseIcon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: FilledButton(
        style: getFluentButtonStyleMethod(
          context: context,
          paddingSize: paddingSize,
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
            buttonType: buttonType,
            icon: baseIcon,
            paddingSize: paddingSize,
          ),
        ),
      ),
    );
  }
}
