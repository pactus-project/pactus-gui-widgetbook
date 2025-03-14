import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pactus_gui_widgetbook/app_styles.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/adaptive_primary_button/adaptive_primary_button.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/padding_size_enum.dart';

void main() {
  group('AdaptivePrimaryButton', () {
    late bool wasPressed;

    setUp(() {
      wasPressed = false;
    });

    Widget createTestableWidget({
      required String title,
      required RequestStateEnum requestState,
      required VoidCallback? onPressed,
      required FluentThemeData themeWithAccent,
      required bool isSmall,
      required ButtonTypeEnum buttonType,
      required PaddingSizeEnum paddingSize,
    }) {
      return FluentApp(
        debugShowCheckedModeBanner: false,
        theme: themeWithAccent,
        home: AppTheme(
          themeData: themeWithAccent,
          child: ScaffoldPage(
            content: Center(
              child: AdaptivePrimaryButton(
                title: title,
                requestState: requestState,
                onPressed: onPressed,
                buttonType: buttonType,
                paddingSize: paddingSize, // پاس دادن paddingSize به ویجت
              ),
            ),
          ),
        ),
      );
    }

    testWidgets('renders correctly and is clickable when loaded',
            (WidgetTester tester) async {
          const testTitle = 'Test Button';
          final themeWithAccent = AppThemeData.lightTheme(const Color(0xFF0A4D7E));

          await tester.pumpWidget(createTestableWidget(
            title: testTitle,
            requestState: RequestStateEnum.loaded,
            onPressed: () {
              wasPressed = true;
            },
            themeWithAccent: themeWithAccent,
            isSmall: false,
            buttonType: ButtonTypeEnum.iconAndTitle, // Example button type
            paddingSize: PaddingSizeEnum.medium, // تنظیم paddingSize به medium
          ));

          expect(find.text(testTitle), findsOneWidget);

          final button = find.byType(Button);
          expect(tester.widget<Button>(button).onPressed, isNotNull);

          await tester.tap(button);
          await tester.pumpAndSettle();

          expect(wasPressed, isTrue);
        });

    testWidgets('renders correctly with titleAndIcon button type',
            (WidgetTester tester) async {
          const testTitle = 'Title and Icon Button';
          final themeWithAccent = AppThemeData.lightTheme(const Color(0xFF0A4D7E));

          await tester.pumpWidget(createTestableWidget(
            title: testTitle,
            requestState: RequestStateEnum.loaded,
            onPressed: () {
              wasPressed = true;
            },
            themeWithAccent: themeWithAccent,
            isSmall: false,
            buttonType: ButtonTypeEnum.titleAndIcon, // Testing titleAndIcon type
            paddingSize: PaddingSizeEnum.large, // تنظیم paddingSize به large
          ));

          // Ensure that the correct Text widget is rendered with the expected title
          expect(find.text(testTitle), findsOneWidget);

          final button = find.byType(Button);
          expect(tester.widget<Button>(button).onPressed, isNotNull);

          await tester.tap(button);
          await tester.pumpAndSettle();

          expect(wasPressed, isTrue);
        });

    testWidgets('renders correctly with iconTitleAndIcon button type',
            (WidgetTester tester) async {
          const testTitle = 'Icon Title and Icon Button';
          final themeWithAccent = AppThemeData.lightTheme(const Color(0xFF0A4D7E));

          await tester.pumpWidget(createTestableWidget(
            title: testTitle,
            requestState: RequestStateEnum.loaded,
            onPressed: () {
              wasPressed = true;
            },
            themeWithAccent: themeWithAccent,
            isSmall: true,
            buttonType: ButtonTypeEnum.iconTitleAndIcon, // Testing iconTitleAndIcon type
            paddingSize: PaddingSizeEnum.min, // تنظیم paddingSize به min
          ));

          // Ensure that the correct Text widget is rendered with the expected title
          expect(find.text(testTitle), findsOneWidget);

          final button = find.byType(Button);
          expect(tester.widget<Button>(button).onPressed, isNotNull);

          await tester.tap(button);
          await tester.pumpAndSettle();

          expect(wasPressed, isTrue);
        });
  });
}
