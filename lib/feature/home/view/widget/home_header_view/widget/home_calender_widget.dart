part of '../../../home_view.dart';

final class _HomeCalenderWidget extends StatelessWidget {
  const _HomeCalenderWidget();

  @override
  Widget build(BuildContext context) {
    return TableCalendar<DateTime>(
      firstDay: DateTime.utc(2022, 10, 16),
      lastDay: DateTime.utc(2030, 3, 14),
      focusedDay: DateTime.now(),
      headerStyle: const HeaderStyle(
        titleCentered: true,
        formatButtonVisible: false,
      ),
    );
  }
}
