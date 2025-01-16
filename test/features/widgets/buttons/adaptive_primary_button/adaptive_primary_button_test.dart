import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pactus_gui_widgetbook/app_styles.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/adaptive_primary_button/adaptive_primary_button.dart';

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
              ),
            ),
          ),
        ),
      );
    }

    testWidgets('renders correctly and is clickable when loaded', (WidgetTester tester) async {
      const testTitle = 'Test Button';
      final themeWithAccent = AppThemeData.lightTheme(const Color(0xFF0A4D7E));

      await tester.pumpWidget(createTestableWidget(
        title: testTitle,
        requestState: RequestStateEnum.loaded,
        onPressed: () {
          wasPressed = true;
        },
        themeWithAccent: themeWithAccent,
      ));

      expect(find.text(testTitle), findsOneWidget);

      final button = find.byType(FilledButton);
      expect(tester.widget<FilledButton>(button).onPressed, isNotNull);

      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(wasPressed, isTrue);
    });

    testWidgets('renders correctly and is disabled when loading', (WidgetTester tester) async {
      const testTitle = 'Loading Button';
      final themeWithAccent = AppThemeData.lightTheme(const Color(0xFF0A4D7E));

      await tester.pumpWidget(createTestableWidget(
        title: testTitle,
        requestState: RequestStateEnum.loading,
        onPressed: () {
          wasPressed = true;
        },
        themeWithAccent: themeWithAccent,
      ));

      expect(find.text(testTitle), findsNothing);

      expect(find.byType(SizedBox), findsWidgets);

      final button = find.byType(FilledButton);
      expect(tester.widget<FilledButton>(button).onPressed, isNull);

      await tester.tap(button);
      await tester.pumpAndSettle();
      expect(wasPressed, isFalse);
    });


    testWidgets('renders correctly with dark theme', (WidgetTester tester) async {
      const testTitle = 'Dark Theme Button';
      final themeWithAccent = AppThemeData.darkTheme(const Color(0xFF0F6CBD));

      await tester.pumpWidget(createTestableWidget(
        title: testTitle,
        requestState: RequestStateEnum.loaded,
        onPressed: () {
          wasPressed = true;
        },
        themeWithAccent: themeWithAccent,
      ));

      expect(find.text(testTitle), findsOneWidget);

      final button = find.byType(FilledButton);
      expect(tester.widget<FilledButton>(button).onPressed, isNotNull);

      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(wasPressed, isTrue);
    });
  });
}
