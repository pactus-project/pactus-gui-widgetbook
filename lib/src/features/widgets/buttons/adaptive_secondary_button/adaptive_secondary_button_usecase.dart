import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/padding_size_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/adaptive_secondary_button/adaptive_secondary_button.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// ## [adaptiveSecondaryButtonUseCase] Use Case Documentation
///
/// This use case demonstrates the `AdaptiveSecondaryButton` with various configurable knobs using `Widgetbook`.
///
/// ### Knobs:
///
/// - **`Request State`** (`RequestStateEnum`):
///   - Selects the button's state (e.g., `loading`, `loaded`, `error`).
///
/// - **`Default Outlined Style`** (`bool`):
///   - Toggles whether the button should use the default outlined style.
///
/// - **`Disable Button`** (`bool`):
///   - Disables the button when enabled.
///
/// - **`Button Text`** (`String`):
///   - Sets the displayed text for the button.
///
/// - **`Padding Size`** (`PaddingSizeEnum`):
///   - Configures the button’s padding size.
///
/// - **`Button Type`** (`ButtonTypeEnum`):
///   - Defines the type of button (e.g., `titleOnly`, `iconOnly`, `iconAndTitle`).
///
/// - **`Prefix Icon`** (`IconData?`):
///   - Selects an optional leading icon for the button.
///
/// - **`Suffix Icon`** (`IconData?`):
///   - Selects an optional trailing icon for the button.
///
/// - **`Base Icon`** (`IconData?`):
///   - Defines the primary icon when `iconOnly` is selected.
///
/// ### Behavior:
///
/// - Displays an `AdaptiveSecondaryButton` with user-defined configurations.
/// - Disables the button when in `loading` state or explicitly set to `disabled`.
/// - Uses `debugPrint` to log button press interactions.
/// - Adjusts icons dynamically based on the selected `buttonType`.
///
@UseCase(
  name: 'Adaptive Secondary Button with Knobs',
  type: AdaptiveSecondaryButton,
)
Widget adaptiveSecondaryButtonUseCase(BuildContext context) {
  final requestState = context.knobs.list<RequestStateEnum>(
    label: 'Request State',
    options: RequestStateEnum.values,
    initialOption: RequestStateEnum.loaded,
  );

  final isDefaultOutlinedButton = context.knobs.boolean(
    label: 'Default Outlined Style',
    initialValue: false,
  );
  final isDisabled = context.knobs.boolean(
    label: 'Disable Button',
    initialValue: false,
  );

  final text = context.knobs.string(
    label: 'Button Text',
    initialValue: 'Click Me',
  );
  final paddingSize = context.knobs.list<PaddingSizeEnum>(
    label: 'Padding Size',
    options: PaddingSizeEnum.values,
    initialOption: PaddingSizeEnum.min,
  );
  final buttonType = context.knobs.list<ButtonTypeEnum>(
    label: 'Button Type',
    options: ButtonTypeEnum.values,
    initialOption: ButtonTypeEnum.titleOnly,
  );

  final prefixIcon = context.knobs.listOrNull<IconData?>(
    label: 'Prefix Icon',
    options: [FluentIcons.add, FluentIcons.settings],
    initialOption: FluentIcons.add,
  );

  final suffixIcon = context.knobs.listOrNull<IconData?>(
    label: 'Suffix Icon',
    options: [FluentIcons.chevron_right, FluentIcons.search],
    initialOption: FluentIcons.chevron_right,
  );

  final baseIcon = context.knobs.listOrNull<IconData?>(
    label: 'Base Icon',
    options: [FluentIcons.search, FluentIcons.add],
    initialOption: FluentIcons.search,
  );

  return IntrinsicWidth(
    child: SizedBox(
      height: 40,
      child: AdaptiveSecondaryButton(
        title: buttonType == ButtonTypeEnum.titleOnly ||
                buttonType == ButtonTypeEnum.iconAndTitle ||
                buttonType == ButtonTypeEnum.titleAndIcon ||
                buttonType == ButtonTypeEnum.iconTitleAndIcon
            ? text
            : null,
        requestState: requestState,
        buttonType: buttonType,
        prefixIcon: buttonType == ButtonTypeEnum.iconAndTitle ||
                buttonType == ButtonTypeEnum.iconTitleAndIcon
            ? prefixIcon
            : null,
        suffixIcon: buttonType == ButtonTypeEnum.titleAndIcon ||
                buttonType == ButtonTypeEnum.iconTitleAndIcon
            ? suffixIcon
            : null,
        baseIcon: buttonType == ButtonTypeEnum.iconOnly ? baseIcon : null,
        onPressed: (requestState == RequestStateEnum.loading || isDisabled)
            ? null
            : () {
                debugPrint('Adaptive Primary Button Pressed');
              },
        paddingSize: paddingSize,
        isDefaultOutlinedButton: isDefaultOutlinedButton,
      ),
    ),
  );
}
