part of '../../../onboarding_view.dart';

final class _SelectBirthDateButton extends StatefulWidget {
  const _SelectBirthDateButton();

  @override
  State<_SelectBirthDateButton> createState() => _SelectBirthDateButtonState();
}

final class _SelectBirthDateButtonState extends State<_SelectBirthDateButton>
    with _SelectBirthDateButtonMixin {
  @override
  void showCustomCupertinoModal(BuildContext context) {
    showCupertinoModalPopup<void>(
      semanticsDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: context.dynamicHeight(0.5),
          width: double.infinity,
          color: CupertinoColors.darkBackgroundGray,
          child: const Column(
            children: <Expanded>[
              Expanded(
                child: _ActionRow(),
              ),
              Expanded(
                flex: 5,
                child: _DateSelector(),
              ),
            ],
          ),
        );
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
          onPressed: () => showCustomCupertinoModal(context),
          title: state.birthDate.isEmpty ? _formattedDate : state.birthDate,
        );
      },
    );
  }
}
