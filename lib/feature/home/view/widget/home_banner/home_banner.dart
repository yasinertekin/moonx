part of '../../home_view.dart';

final class _HomeBanner extends StatelessWidget {
  const _HomeBanner();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.low.paddingAll,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StringConstants.whatIsForToday,
            style: context.theme.textTheme.titleLarge?.copyWith(
              color: ColorName.colorEmptiness,
              fontSize: 16,
            ),
          ),
          const EmptySizedBox(),
          const _HomeBannerStackView(),
        ],
      ),
    );
  }
}

final class _HomeBannerStackView extends StatelessWidget {
  const _HomeBannerStackView();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Assets.images.imgHomeBanner.image(
          package: 'gen',
        ),
        ListTile(
          leading: const _UserHoroscopeIcon(),
          title: const _HomeBannerHoroscopeTitle(),
          subtitle: Text(
            StringConstants.yourDailyHoroscope,
            style: context.theme.textTheme.bodyLarge?.copyWith(
              color: ColorName.colorEmptiness,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}

final class _HomeBannerHoroscopeTitle extends StatelessWidget {
  const _HomeBannerHoroscopeTitle();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<UsersBloc, UsersState, Horoscope>(
      selector: (state) => state.users.horoscope,
      builder: (context, horoscope) => Text(
        horoscope.value,
        style: context.theme.textTheme.titleLarge?.copyWith(
          color: ColorName.colorEmptiness,
          fontSize: 16,
        ),
      ),
    );
  }
}

final class _UserHoroscopeIcon extends StatefulWidget {
  const _UserHoroscopeIcon();

  @override
  State<_UserHoroscopeIcon> createState() => _UserHoroscopeIconState();
}

final class _UserHoroscopeIconState extends State<_UserHoroscopeIcon>
    with _UserHoroscopeIconMixin {
  @override
  Widget build(BuildContext context) {
    return BlocSelector<UsersBloc, UsersState, Horoscope>(
      selector: (state) => state.users.horoscope,
      builder: (context, state) => _buildUserHoroscopeIcon(state),
    );
  }
}
