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
      top: context.dynamicHeight(0.5),
      child: Column(
        children: [
          _EnterBirthPlaceText(
            onboarding,
          ),
          const EmptySizedBox(),
          _BirthPlaceDescription(
            onboarding,
          ),
          EmptySizedBox(
            height: context.dynamicHeight(0.03),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _EnterPlaceBirthText(),
              EmptySizedBox(
                height: context.dynamicHeight(0.01),
              ),
              const _SelectBirthPlaceButton(),
            ],
          ),
        ],
      ),
    );
  }
}

final class _EnterPlaceBirthText extends StatelessWidget {
  const _EnterPlaceBirthText();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Enter Your Place of Birth',
      style: context.theme.textTheme.bodyLarge?.copyWith(
        color: ColorName.colorMercury,
        fontSize: 16,
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
        fontSize: 16,
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
        color: ColorName.colorMercury,
        fontSize: 24,
      ),
    );
  }
}
