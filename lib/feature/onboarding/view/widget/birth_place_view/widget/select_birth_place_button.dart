part of '../../../onboarding_view.dart';

final class _SelectBirthPlaceButton extends StatefulWidget {
  const _SelectBirthPlaceButton();

  @override
  State<_SelectBirthPlaceButton> createState() =>
      _SelectBirthPlaceButtonState();
}

final class _SelectBirthPlaceButtonState extends State<_SelectBirthPlaceButton>
    with _SelectBirthPlaceMixin {
  @override
  void _showCityPicker(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (context) {
        return _CustomCityPicker(cityList: _cityList);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<UsersBloc, UsersState, Users>(
      selector: (state) => state.users,
      builder: (context, state) {
        return ProjectButton(
          backgroundColor: ColorName.colorKon,
          onPressed: () => _showCityPicker(context),
          title: state.placeOfBirth.isEmpty
              ? 'Select Birth Place'
              : state.placeOfBirth,
        );
      },
    );
  }
}
