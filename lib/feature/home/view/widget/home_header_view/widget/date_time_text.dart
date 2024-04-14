part of '../../../home_view.dart';

final class _DateTimeText extends StatelessWidget {
  const _DateTimeText();

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    final dateTimeFormat = DateFormat('d MMM HH.mm', 'en_US');

    final formattedDateTime = dateTimeFormat.format(now);
    return Text(
      formattedDateTime,
      style: context.theme.textTheme.bodyLarge?.copyWith(
        color: ColorName.colorColdWind,
        fontSize: 15,
      ),
    );
  }
}
