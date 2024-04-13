part of '../home_view.dart';

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
            'What is for Today?',
            style: context.theme.textTheme.titleLarge?.copyWith(
              color: ColorName.colorEmptiness,
              fontSize: 16,
            ),
          ),
          const EmptySizedBox(),
          Stack(
            alignment: Alignment.center,
            children: [
              Assets.images.imgHomeBanner.image(
                package: 'gen',
              ),
              ListTile(
                leading: const _UserHoroscopeIcon(),
                title: BlocSelector<UsersBloc, UsersState, Horoscope>(
                  selector: (state) => state.users.horoscope,
                  builder: (context, horoscope) => Text(
                    horoscope.value,
                    style: context.theme.textTheme.titleLarge?.copyWith(
                      color: ColorName.colorEmptiness,
                      fontSize: 16,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Your Daily Horoscope',
                  style: context.theme.textTheme.bodyLarge?.copyWith(
                    color: ColorName.colorEmptiness,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ],
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
    with UserHoroscopeIconMixin {
  @override
  Widget build(BuildContext context) {
    return BlocSelector<UsersBloc, UsersState, Horoscope>(
      selector: (state) => state.users.horoscope,
      builder: (context, state) => _buildUserHoroscopeIcon(state),
    );
  }
}
