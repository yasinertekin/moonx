part of '../../onboarding_view.dart';

final class _BirthDateView extends StatelessWidget {
  const _BirthDateView(
    this.onboarding,
  );

  final Onboarding onboarding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _BirthDateViewBackgroundImage(onboarding: onboarding),
        _BirthDateBody(
          onboarding: onboarding,
        ),
      ],
    );
  }
}

final class _BirthDateBody extends StatelessWidget {
  const _BirthDateBody({
    required this.onboarding,
  });

  final Onboarding onboarding;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: context.dynamicHeight(0.4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _BirthDateDescription(
            onboarding.description,
          ),
          EmptySizedBox(
            height: context.dynamicHeight(0.03),
          ),
          const _EnterBirthDateText(),
          const EmptySizedBox(),
          const _SelectBirthDateButton(),
          EmptySizedBox(height: context.dynamicHeight(0.02)),
          const _BirtTimeText(),
          const EmptySizedBox(),
          const _SelectBirthTimeButton(),
        ],
      ),
    );
  }
}

final class _ActionRow extends StatelessWidget {
  const _ActionRow();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CancelButton(),
        DoneButton(),
      ],
    );
  }
}
