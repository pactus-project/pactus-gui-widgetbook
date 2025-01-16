import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/app_styles.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';

class AdaptiveButtonContentWidget extends StatelessWidget {
  const AdaptiveButtonContentWidget({
    super.key,
    required this.title,
    required this.requestState,
  });

  final String title;
  final RequestStateEnum requestState;

  @override
  Widget build(BuildContext context) {
    switch (requestState) {
      /// TODO (by Pouria): add loading & error state after defining by UI team
      case RequestStateEnum.loading:
        return const SizedBox();
      case RequestStateEnum.initial:
      case RequestStateEnum.loaded:
        return SizedBox(
          height: 32,
          child: Center(
            child: Text(
              title,
              style: InterTextStyles.body.copyWith(
                color:
                    AppTheme.of(context).extension<SurfacePallet>()!.surface3!,
              ),
            ),
          ),
        );
      case RequestStateEnum.error:
        return const SizedBox();
    }
  }
}
