part of '../../../onboarding_view.dart';

final class _SelectBirthTimeButton extends StatelessWidget {
  const _SelectBirthTimeButton();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<UsersBloc, UsersState, Users>(
      selector: (state) => state.users,
      builder: (context, state) {
        return ProjectButton(
          backgroundColor: ColorName.colorKon,
          onPressed: () {
            showCupertinoModalPopup<void>(
              context: context,
              builder: (context) {
                return const _SelectBirthTimePicker();
              },
            );
          },
          title:
              state.birthTime.isEmpty ? 'Select Birth Time' : state.birthTime,
        );
      },
    );
  }
}

final class _SelectBirthTimePicker extends StatelessWidget {
  const _SelectBirthTimePicker();

  @override
  Widget build(BuildContext context) {
    final usersBloc = BlocProvider.of<UsersBloc>(context);
    return BlocSelector<UsersBloc, UsersState, Users>(
      selector: (state) => state.users,
      builder: (context, state) => Container(
        color: CupertinoColors.darkBackgroundGray,
        height: context.dynamicHeight(0.3),
        child: CupertinoDatePicker(
          backgroundColor: CupertinoColors.darkBackgroundGray,
          mode: CupertinoDatePickerMode.time,
          onDateTimeChanged: (dateTime) {
            usersBloc.add(
              UpdateUsersEvent(
                state.copyWith(
                  birthTime: DateFormat('HH:mm').format(dateTime),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
