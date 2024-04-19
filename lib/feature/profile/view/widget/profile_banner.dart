part of '../profile_view.dart';

final class _ProfileBanner extends StatelessWidget {
  const _ProfileBanner();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const _ProfileBannerImage(),
        Positioned(
          left: context.dynamicWidth(0.03),
          top: context.dynamicHeight(0.03),
          child: const _BannerHeader(),
        ),
        Positioned(
          left: context.dynamicWidth(0.03),
          bottom: context.dynamicHeight(0.03),
          child: const _BannerDescription(),
        ),
      ],
    );
  }
}

final class _BannerDescription extends StatelessWidget {
  const _BannerDescription();

  @override
  Widget build(BuildContext context) {
    return Text(
      StringConstants.bannerDescription,
      style: context.theme.textTheme.bodyLarge?.copyWith(
        fontSize: 14,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

final class _BannerHeader extends StatelessWidget {
  const _BannerHeader();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: ColorName.colorDepthsOfNight,
      shape: RoundedRectangleBorder(
        borderRadius: ProjectRadius.small.borderRadius,
      ),
      child: Padding(
        padding: ProjectPadding.low.paddingAll,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  StringConstants.getPremium,
                  style: context.theme.textTheme.titleLarge?.copyWith(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const EmptySizedBox(
                  width: 5,
                ),
                Assets.images.imgPremiumIcon.image(
                  package: 'gen',
                ),
              ],
            ),
            Text(
              StringConstants.toAccessAllContents,
              style: context.theme.textTheme.bodyLarge?.copyWith(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final class _ProfileBannerImage extends StatelessWidget {
  const _ProfileBannerImage();

  @override
  Widget build(BuildContext context) {
    return Assets.images.imgPremiumBanner.image(
      package: 'gen',
    );
  }
}
