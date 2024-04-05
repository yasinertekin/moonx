part of '../onboarding_view.dart';

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
    return Column(
      children: <Widget>[
        const Spacer(
          flex: 4,
        ),
        _WelcomeTitle(onboarding: onboarding),
        _WelcomeDescription(onboarding: onboarding),
        const Spacer(),
      ],
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
      style: Theme.of(context).textTheme.bodyLarge,
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
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
