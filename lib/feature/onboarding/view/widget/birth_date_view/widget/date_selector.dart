part of '../../../onboarding_view.dart';

final class _DateSelector extends StatefulWidget {
  const _DateSelector();

  @override
  State<_DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<_DateSelector> {
  @override
  Widget build(BuildContext context) {
    final usersBloc = BlocProvider.of<UsersBloc>(context);

    return BlocSelector<UsersBloc, UsersState, Users>(
      selector: (state) => state.users,
      builder: (context, state) {
        return CupertinoDatePicker(
          backgroundColor: CupertinoColors.darkBackgroundGray,
          mode: CupertinoDatePickerMode.date,
          initialDateTime: DateTime.now(),
          onDateTimeChanged: (DateTime newDateTime) async {
            if (!mounted) return;
            usersBloc.add(
              UpdateUsersEvent(
                state.copyWith(
                  birthDate: DateFormat('yyyy-MM-dd').format(newDateTime),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
