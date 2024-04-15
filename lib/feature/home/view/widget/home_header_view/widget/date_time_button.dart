part of '../../../home_view.dart';

final class _DateTimeButton extends StatelessWidget {
  const _DateTimeButton();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: ProjectPadding.medium.paddingOnlyRight,
        child: BlocBuilder<HomeHeaderCubit, HomeHeaderState>(
          builder: (context, state) {
            return ProjectButton(
              backgroundColor: ColorName.colorKon,
              width: context.dynamicWidth(0.3),
              height: context.dynamicHeight(0.05),
              borderRadiusGeometry: ProjectRadius.small.borderRadius,
              onPressed: () {
                if (state.index == HomeHeader.location) {
                  context.read<HomeHeaderCubit>().changePage(1);
                } else {
                  context.read<HomeHeaderCubit>().changePage(0);
                }
              },
              title: '2 Aug 2023',
              titleColor: ColorName.colorThickBlue,
            );
          },
        ),
      ),
    );
  }
}
