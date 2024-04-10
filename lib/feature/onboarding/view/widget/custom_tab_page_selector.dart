part of '../onboarding_view.dart';

final class _CustomTabPageSelector extends StatelessWidget {
  const _CustomTabPageSelector({
    required TabController controller,
  }) : _controller = controller;

  final TabController _controller;

  @override
  Widget build(BuildContext context) {
    return TabPageSelector(
      controller: _controller,
      indicatorSize: 8,
      color: ColorName.colorKon,
      selectedColor: ColorName.colorThickBlue,
      borderStyle: BorderStyle.none,
    );
  }
}
