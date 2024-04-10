part of '../../../onboarding_view.dart';

final class _DateSelector extends StatelessWidget {
  const _DateSelector();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<UsersBloc, UsersState, Users>(
      selector: (state) => state.users,
      builder: (context, state) {
        final usersBloc = BlocProvider.of<UsersBloc>(context);

        return CupertinoDatePicker(
          backgroundColor: CupertinoColors.darkBackgroundGray,
          mode: CupertinoDatePickerMode.date,
          initialDateTime: DateTime.now(),
          onDateTimeChanged: (DateTime newDateTime) async {
            usersBloc.add(
              UpdateUsersEvent(
                state.copyWith(
                  birthDate: DateFormat('yyyy/MM/dd').format(newDateTime),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
