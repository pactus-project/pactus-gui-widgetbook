import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/padding_size_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/adaptive_primary_button/adaptive_primary_button.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(
  name: 'Adaptive Primary Button with Knobs',
  type: AdaptivePrimaryButton,
)
Widget adaptivePrimaryButtonUseCase(BuildContext context) {
  final requestState = context.knobs.list<RequestStateEnum>(
    label: 'Request State',
    options: RequestStateEnum.values,
    initialOption: RequestStateEnum.loaded,
  );
  final isOutlined = context.knobs.boolean(
    label: 'Is Outlined',
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


  return SizedBox(
    height: 40,
    child: AdaptivePrimaryButton(
      isOutlined: isOutlined,
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
      onPressed: requestState == RequestStateEnum.loading
          ? null
          : () {
        debugPrint('Adaptive Primary Button Pressed');
      },
      paddingSize: paddingSize,
    ),
  );
}
