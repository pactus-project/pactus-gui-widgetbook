import 'package:flutter/material.dart';
import 'package:pactus_gui_widgetbook/src/core/text_styles/inter_text_styles.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
import 'custom_text_widget.dart';

/// ## [customTextWidgetUseCase] Function Documentation
///
/// The `customTextWidgetUseCase` function defines a Widgetbook
/// use case for displaying a customizable `CustomTextWidget`.
/// This function allows users to interactively change the text,
/// text style, font weight, and font style of the widget.
///
/// ### Parameters:
///
/// - **[context]** (`BuildContext`):
///   - The context of the widget that provides access to knobs for interaction.
///
/// ### Usage:
///
/// This function is designed to be used within Widgetbook to
/// demonstrate the customization of the `CustomTextWidget`.
/// Users can adjust the following options:
///
/// - **Text**: A string value that specifies the text to display
/// in the widget.
/// - **Text Style**: A list of predefined text styles, such as
/// 'Caption', 'Body', 'Title', etc.
/// - **Font Weight**: Allows the user to choose between normal
/// and bold font weight.
/// - **Font Style**: Allows the user to choose between normal
/// and italic font style.
///
@UseCase(name: 'Custom Text with Knobs', type: CustomTextWidget)
Widget customTextWidgetUseCase(BuildContext context) {
  final text = context.knobs.string(
    label: 'Text',
    initialValue: 'Hello, Widgetbook!',
    description: 'Set the text to display.',
  );

  final selectedStyleName = context.knobs.list<String>(
    label: 'Text Style',
    initialOption: 'Body',
    options: [
      'Caption',
      'Body',
      'Subtitle',
      'Title',
      'Title Large',
      'Display',
      'Body Large',
      'Body Strong',
    ],
    description: 'Choose a predefined text style from the list.',
  );

  final fontWeight = context.knobs.list<String>(
    label: 'Font Weight',
    initialOption: 'Normal',
    options: ['Normal', 'Bold'],
    description: 'Choose the font weight.',
  );

  final fontStyle = context.knobs.list<String>(
    label: 'Font Style',
    initialOption: 'Normal',
    options: ['Normal', 'Italic'],
    description: 'Choose the font style.',
  );

  final textStyleMap = {
    'Caption': InterTextStyles.caption,
    'Body': InterTextStyles.body,
    'Subtitle': InterTextStyles.subtitle,
    'Title': InterTextStyles.title,
    'Title Large': InterTextStyles.titleLarge,
    'Display': InterTextStyles.display,
    'Body Large': InterTextStyles.bodyLarge,
    'Body Strong': InterTextStyles.bodyStrong,
  };

  final selectedTextStyle =
      textStyleMap[selectedStyleName] ?? InterTextStyles.body;

  final textStyle = selectedTextStyle.copyWith(
    fontWeight: fontWeight == 'Bold' ? FontWeight.bold : FontWeight.normal,
    fontStyle: fontStyle == 'Italic' ? FontStyle.italic : FontStyle.normal,
  );

  return CustomTextWidget(
    text: text,
    textStyle: textStyle,
  );
}
