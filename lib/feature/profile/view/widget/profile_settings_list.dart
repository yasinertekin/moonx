part of '../profile_view.dart';

final class _ProfileSettingsList extends StatelessWidget {
  const _ProfileSettingsList();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.dynamicWidth(0.06),
        ),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: SettingsList.settings.length,
          itemBuilder: (BuildContext context, int index) {
            final settings = SettingsList.settings[index];
            return _SettingsListTile(settings: settings);
          },
        ),
      ),
    );
  }
}

final class _SettingsListTile extends StatelessWidget {
  const _SettingsListTile({
    required this.settings,
  });

  final Settings settings;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPadding.low.paddingAll,
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: ProjectRadius.small.borderRadius,
        ),
        tileColor: ColorName.colorDarkNight,
        onTap: () async {
          await Locator.appRouter.push(const WebRoute());
        },
        title: _SettingsListTileTitle(settings: settings),
        leading: settings.image,
      ),
    );
  }
}

final class _SettingsListTileTitle extends StatelessWidget {
  const _SettingsListTileTitle({
    required this.settings,
  });

  final Settings settings;

  @override
  Widget build(BuildContext context) {
    return Text(
      settings.title,
      style: context.theme.textTheme.bodyLarge?.copyWith(
        color: ColorName.colorEmptiness,
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}
