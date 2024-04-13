part of '../home_view.dart';

final class _DailyHoroscope extends StatefulWidget {
  const _DailyHoroscope();

  @override
  State<_DailyHoroscope> createState() => _DailyHoroscopeState();
}

final class _DailyHoroscopeState extends State<_DailyHoroscope> {
  @override
  void initState() {
    super.initState();
    context.read<GeminiCubit>().generateDailyHoroscope(
          users: context.read<UsersBloc>().state.users,
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeminiCubit, GeminiState>(
      builder: (context, state) {
        switch (state.status) {
          case GeminiStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case GeminiStatus.success:
            return Text(
              state.promptResponse?.promptResponse ?? '',
              style: context.theme.textTheme.bodyLarge?.copyWith(
                color: ColorName.colorEmptiness,
                fontSize: 14,
              ),
            );
          case GeminiStatus.failure:
            return Text(
              state.errorMessage,
            );
          case GeminiStatus.initial:
            return const SizedBox();
        }
      },
    );
  }
}
