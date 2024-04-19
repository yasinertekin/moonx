part of '../meditation_detail_view.dart';

final class _BackToMeditation extends StatelessWidget {
  const _BackToMeditation();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          top: context.dynamicHeight(0.1),
          left: context.dynamicWidth(0.05),
        ),
        child: AutoLeadingButton(
          builder: (context, leadingType, action) {
            return GestureDetector(
              onTap: () {
                // ignore: deprecated_member_use
                Locator.appRouter.pop();
              },
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Center(
                  child: Assets.images.imgBtnDropDown.image(
                    package: 'gen',
                  ),
                ),
              ).asGlass(
                clipBorderRadius: ProjectRadius.medium.borderRadius,
              ),
            );
          },
        ),
      ),
    );
  }
}
