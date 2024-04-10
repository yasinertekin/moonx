part of '../../onboarding_view.dart';

final class _BirthPlaceView extends StatelessWidget {
  const _BirthPlaceView(
    this.onboarding,
  );

  final Onboarding onboarding;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _BirthPlaceBackgroundImage(
          onboarding,
        ),
        _BirthPlaceBody(
          onboarding,
        ),
      ],
    );
  }
}

final class _BirthPlaceBody extends StatelessWidget {
  const _BirthPlaceBody(this.onboarding);

  final Onboarding onboarding;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: context.dynamicHeight(0.55),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _EnterBirthPlaceText(
            onboarding,
          ),
          _BirthPlaceDescription(
            onboarding,
          ),
          const EmptySizedBox(),
          const _SelectBirthPlaceButton(),
          const EmptySizedBox(),
        ],
      ),
    );
  }
}

final class _BirthPlaceDescription extends StatelessWidget {
  const _BirthPlaceDescription(
    this.onboarding,
  );

  final Onboarding onboarding;

  @override
  Widget build(BuildContext context) {
    return Text(
      onboarding.description,
      style: context.theme.textTheme.bodyLarge?.copyWith(
        color: ColorName.colorDhusarGrey,
      ),
      textAlign: TextAlign.center,
    );
  }
}

final class _EnterBirthPlaceText extends StatelessWidget {
  const _EnterBirthPlaceText(
    this.onboarding,
  );

  final Onboarding onboarding;

  @override
  Widget build(BuildContext context) {
    return Text(
      onboarding.title!,
      style: context.theme.textTheme.bodyLarge?.copyWith(
        color: Colors.white,
      ),
    );
  }
}
