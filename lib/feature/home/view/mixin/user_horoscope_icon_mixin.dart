part of '../home_view.dart';

base mixin UserHoroscopeIconMixin on State<_UserHoroscopeIcon> {
  Widget _buildUserHoroscopeIcon(Horoscope state) {
    switch (state) {
      case Horoscope.aries:
        return Assets.icons.icPisces.svg(
          package: 'gen',
        );
      case Horoscope.taurus:
        return Assets.icons.icTaurus.svg(
          package: 'gen',
        );
      case Horoscope.gemini:
        return Assets.icons.icGemini.svg(
          package: 'gen',
        );
      case Horoscope.cancer:
        return Assets.icons.icCancer.svg(
          package: 'gen',
        );
      case Horoscope.leo:
        return Assets.icons.icLeo.svg(
          package: 'gen',
        );
      case Horoscope.virgo:
        return Assets.icons.icVirgo.svg(
          package: 'gen',
        );
      case Horoscope.libra:
        return Assets.icons.icLibra.svg(
          package: 'gen',
        );
      case Horoscope.scorpio:
        return Assets.icons.icCancer.svg(
          package: 'gen',
        );
      case Horoscope.sagittarius:
        return Assets.icons.icSagittarius.svg(
          package: 'gen',
        );
      case Horoscope.capricorn:
        return Assets.icons.icLibra.svg(
          package: 'gen',
        );
      case Horoscope.aquarius:
        return Assets.icons.icAquarius.svg(
          package: 'gen',
        );
      case Horoscope.pisces:
        return Assets.icons.icPisces.svg(
          package: 'gen',
        );
    }
  }
}
