import 'package:gen/gen.dart';

enum Month {
  january,
  february,
  march,
  april,
  may,
  june,
  july,
  august,
  september,
  october,
  november,
  december;
}

base mixin HoroscopeMixin {
  Horoscope findHoroscope(int day, Month month) {
    switch (month) {
      case Month.january:
        return day < 20 ? Horoscope.capricorn : Horoscope.aquarius;
      case Month.february:
        return day < 19 ? Horoscope.aquarius : Horoscope.pisces;
      case Month.march:
        return day < 21 ? Horoscope.pisces : Horoscope.aries;
      case Month.april:
        return day < 20 ? Horoscope.aries : Horoscope.taurus;
      case Month.may:
        return day < 21 ? Horoscope.taurus : Horoscope.gemini;
      case Month.june:
        return day < 21 ? Horoscope.gemini : Horoscope.cancer;
      case Month.july:
        return day < 23 ? Horoscope.cancer : Horoscope.leo;
      case Month.august:
        return day < 23 ? Horoscope.leo : Horoscope.virgo;
      case Month.september:
        return day < 23 ? Horoscope.virgo : Horoscope.libra;
      case Month.october:
        return day < 23 ? Horoscope.libra : Horoscope.scorpio;
      case Month.november:
        return day < 22 ? Horoscope.scorpio : Horoscope.sagittarius;
      case Month.december:
        return day < 22 ? Horoscope.sagittarius : Horoscope.capricorn;
    }
  }
}
