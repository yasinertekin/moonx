part of '../../../onboarding_view.dart';

final class _SelectBirthPlaceButton extends StatefulWidget {
  const _SelectBirthPlaceButton();

  @override
  State<_SelectBirthPlaceButton> createState() =>
      _SelectBirthPlaceButtonState();
}

final class _SelectBirthPlaceButtonState extends State<_SelectBirthPlaceButton>
    with _SelectBirthPlaceMixin, HoroscopeMixin {
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
    final usersBloc = BlocProvider.of<UsersBloc>(context);
    return BlocSelector<UsersBloc, UsersState, Users>(
      selector: (state) => state.users,
      builder: (context, state) {
        return ProjectButton(
          backgroundColor: ColorName.colorKon,
          onPressed: () async {
            _setHoroscope(state, usersBloc);
            _showCityPicker(context);
          },
          title: state.placeOfBirth.isEmpty
              ? 'Select Birth Place'
              : state.placeOfBirth,
          titleColor: ColorName.colorDhusarGrey,
        );
      },
    );
  }

  void _setHoroscope(Users state, UsersBloc usersBloc) {
    final date = DateFormat('yyyy-MM-dd').parse(state.birthDate);
    final month = Month.values[date.month - 1];
    final day = date.day;

    final horoscope = findHoroscope(day, month);
    usersBloc.add(
      UpdateUsersEvent(
        state.copyWith(
          horoscope: horoscope,
        ),
      ),
    );
  }
}
