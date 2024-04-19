part of '../../home_view.dart';

final class _DailyHoroscope extends StatefulWidget {
  const _DailyHoroscope();

  @override
  State<_DailyHoroscope> createState() => _DailyHoroscopeState();
}

final class _DailyHoroscopeState extends State<_DailyHoroscope>
    with _DailyHoroscopeMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DailyHoroscopeCubit, DailyHoroscopeState>(
      builder: (context, state) {
        switch (state.status) {
          case GeminiStatus.loading:
            return const CustomProgressIndicator();
          case GeminiStatus.success:
            return _DailyHoroscopeResult(
              promptResponse: state.promptResponse!,
            );
          case GeminiStatus.failure:
            return Text(
              state.errorMessage,
            );
          case GeminiStatus.initial:
            return const SizedBox.shrink();
        }
      },
    );
  }
}

final class _DailyHoroscopeResult extends StatelessWidget {
  const _DailyHoroscopeResult({
    required this.promptResponse,
  });

  final PromptResponse promptResponse;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.low.paddingAll,
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: ProjectRadius.medium.borderRadius,
        ),
        child: Padding(
          padding: ProjectPadding.medium.paddingAll,
          child: _HoroscopeResultText(promptResponse: promptResponse),
        ),
      ),
    );
  }
}

final class _HoroscopeResultText extends StatelessWidget {
  const _HoroscopeResultText({
    required this.promptResponse,
  });

  final PromptResponse promptResponse;

  @override
  Widget build(BuildContext context) {
    return Text(
      promptResponse.text ?? '',
      style: context.theme.textTheme.bodyLarge?.copyWith(
        color: ColorName.colorEmptiness,
        fontSize: 14,
      ),
    );
  }
}
