part of '../../onboarding_view.dart';

final class _WelcomeView extends StatelessWidget {
  const _WelcomeView();

  @override
  Widget build(BuildContext context) {
    final onboarding = OnBoardingEnum.welcome.onboarding;
    return Stack(
      alignment: Alignment.center,
      children: [
        _WelcomeViewBackgroundImage(onboarding: onboarding),
        _WelcomeViewBody(onboarding: onboarding),
      ],
    );
  }
}

final class _WelcomeViewBody extends StatelessWidget {
  const _WelcomeViewBody({
    required this.onboarding,
  });

  final Onboarding onboarding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.low.paddingAll,
      child: Column(
        children: <Widget>[
          const Spacer(
            flex: 9,
          ),
          _WelcomeTitle(onboarding: onboarding),
          EmptySizedBox(
            height: context.dynamicHeight(0.02),
          ),
          _WelcomeDescription(onboarding: onboarding),
          const Spacer(),
        ],
      ),
    );
  }
}

final class _WelcomeViewBackgroundImage extends StatelessWidget {
  const _WelcomeViewBackgroundImage({
    required this.onboarding,
  });

  final Onboarding onboarding;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: onboarding.image,
    );
  }
}

final class _WelcomeDescription extends StatelessWidget {
  const _WelcomeDescription({
    required this.onboarding,
  });

  final Onboarding onboarding;

  @override
  Widget build(BuildContext context) {
    return Text(
      onboarding.description,
      style: context.theme.textTheme.labelLarge?.copyWith(
        color: context.theme.colorScheme.onPrimary,
      ),
      textAlign: TextAlign.center,
    );
  }
}

final class _WelcomeTitle extends StatelessWidget {
  const _WelcomeTitle({
    required this.onboarding,
  });

  final Onboarding onboarding;

  @override
  Widget build(BuildContext context) {
    return Text(
      onboarding.title ?? '',
      style: context.theme.textTheme.titleLarge?.copyWith(
        color: context.theme.colorScheme.secondary,
      ),
    );
  }
}
