import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/app_styles.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/padding_size_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/common/widgets/adaptive_button_content_widget.dart';

/// ## [AdaptiveTextButton] Class Documentation
///
/// The `AdaptiveTextButton` class is a customizable button widget that adapts its appearance based on different states and configurations.
/// It allows you to create buttons with different combinations of text, icons, and states.
///
/// ### Properties:
///
/// - **[requestState]** (RequestStateEnum):
///   - Defines the current state of the button (e.g., loading, normal).
///
/// - **[onPressed]** (Function()?):
///   - A callback function that gets triggered when the button is pressed.
///
/// - **[suffixIcon]** (IconData?):
///   - The icon to be displayed at the end of the button, if any.
///
/// - **[prefixIcon]** (IconData?):
///   - The icon to be displayed at the beginning of the button, if any.
///
/// - **[title]** (String?):
///   - The text to be displayed on the button.
///
/// - **[buttonType]** (ButtonTypeEnum):
///   - Specifies the type of button, influencing the layout of the button content (e.g., title only, icon and title, etc.).
///
/// - **[baseIcon]** (IconData?):
///   - The icon to be used if the button is an icon-only button.
///
/// - **[paddingSize]** (PaddingSizeEnum):
///   - Specifies the padding size to be applied around the button content.
///
/// ### Factory Methods:
///
/// - **[AdaptiveTextButton.createTitleOnly]**:
///   - Creates a button with only a title and no icons.
///
/// - **[AdaptiveTextButton.createIconAndTitle]**:
///   - Creates a button with a prefix icon and a title.
///
/// - **[AdaptiveTextButton.createTitleAndIcon]**:
///   - Creates a button with a title and a suffix icon.
///
/// - **[AdaptiveTextButton.createIconTitleAndIcon]**:
///   - Creates a button with both a prefix icon, a title, and a suffix icon.
///
/// - **[AdaptiveTextButton.createIconOnly]**:
///   - Creates a button with only an icon and no text.
///
class AdaptiveTextButton extends StatelessWidget {
  const AdaptiveTextButton({
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
  factory AdaptiveTextButton.createTitleOnly({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
  }) {
    return AdaptiveTextButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.titleOnly,
    );
  }

  factory AdaptiveTextButton.createIconAndTitle({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? prefixIcon,
  }) {
    return AdaptiveTextButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconAndTitle,
      prefixIcon: prefixIcon,
    );
  }

  factory AdaptiveTextButton.createTitleAndIcon({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? suffixIcon,
  }) {
    return AdaptiveTextButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.titleAndIcon,
      suffixIcon: suffixIcon,
    );
  }

  factory AdaptiveTextButton.createIconTitleAndIcon({
    required RequestStateEnum requestState,
    Function()? onPressed,
    String? title,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? prefixIcon,
    IconData? suffixIcon,
  }) {
    return AdaptiveTextButton(
      requestState: requestState,
      onPressed: onPressed,
      title: title,
      paddingSize: paddingSize,
      buttonType: ButtonTypeEnum.iconTitleAndIcon,
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
    );
  }

  factory AdaptiveTextButton.createIconOnly({
    required RequestStateEnum requestState,
    Function()? onPressed,
    PaddingSizeEnum paddingSize = PaddingSizeEnum.medium,
    IconData? baseIcon,
  }) {
    return AdaptiveTextButton(
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
      child: Button(
        style: ButtonStyle(
          padding: WidgetStateProperty.all(
              EdgeInsets.symmetric(horizontal: paddingSize.horizontalSize)),
          backgroundColor: WidgetStateProperty.all(Colors.transparent),
          foregroundColor: WidgetStateProperty.resolveWith((states) {
            if (states.isPressed) {
              return AppTheme.of(context).accentColor.darkest;
            }
            if (states.isHovered) {
              return AppTheme.of(context).accentColor.darker;
            }
            if (states.isDisabled) {
              return AppTheme.of(context).inactiveColor;
            }
            return AppTheme.of(context).accentColor;
          }),
          elevation: WidgetStateProperty.all(0),
          shape: WidgetStateProperty.all(const RoundedRectangleBorder(
            side: BorderSide.none,
          )),
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
