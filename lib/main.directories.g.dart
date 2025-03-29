// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/adaptive_primary_button/adaptive_primary_button_usecase.dart'
    as _i2;
import 'package:pactus_gui_widgetbook/src/features/widgets/chip_text_box/chip_text_box_use_case.dart'
    as _i3;
import 'package:pactus_gui_widgetbook/src/features/widgets/counter/counter_usecase.dart'
    as _i4;
import 'package:pactus_gui_widgetbook/src/features/widgets/custom_button/custom_button_usecase.dart'
    as _i5;
import 'package:pactus_gui_widgetbook/src/features/widgets/custom_text/custom_text_usecase.dart'
    as _i6;
import 'package:widgetbook/widgetbook.dart' as _i1;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'features',
    children: [
      _i1.WidgetbookFolder(
        name: 'widgets',
        children: [
          _i1.WidgetbookFolder(
            name: 'buttons',
            children: [
              _i1.WidgetbookFolder(
                name: 'adaptive_primary_button',
                children: [
                  _i1.WidgetbookLeafComponent(
                    name: 'AdaptivePrimaryButton',
                    useCase: _i1.WidgetbookUseCase(
                      name: 'Adaptive Primary Button with Knobs',
                      builder: _i2.adaptivePrimaryButtonUseCase,
                    ),
                  )
                ],
              )
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'chip_text_box',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'ChipTextBox',
                useCase: _i1.WidgetbookUseCase(
                  name: 'ChipTextBox Customization',
                  builder: _i3.chipTextBoxUseCase,
                ),
              )
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'counter',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'CounterWidget',
                useCase: _i1.WidgetbookUseCase(
                  name: 'Counter with Knobs',
                  builder: _i4.counterWidgetUseCase,
                ),
              )
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'custom_button',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'CustomButtonWidget',
                useCase: _i1.WidgetbookUseCase(
                  name: 'Custom Button with Knobs',
                  builder: _i5.customButtonWidgetUseCase,
                ),
              )
            ],
          ),
          _i1.WidgetbookFolder(
            name: 'custom_text',
            children: [
              _i1.WidgetbookLeafComponent(
                name: 'CustomTextWidget',
                useCase: _i1.WidgetbookUseCase(
                  name: 'Select the text to display from the dropdown',
                  builder: _i6.customTextWidgetUseCase,
                ),
              )
            ],
          ),
        ],
      )
    ],
  )
];
