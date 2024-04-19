/// Represents the different horoscope signs.
enum Horoscope {
  /// Represents the Aries horoscope sign.
  aries('Aries'),

  /// Represents the Taurus horoscope sign.
  taurus('Taurus'),

  /// Represents the Gemini horoscope sign.
  gemini('Gemini'),

  /// Represents the Cancer horoscope sign.
  cancer('Cancer'),

  /// Represents the Leo horoscope sign.
  leo('Leo'),

  /// Represents the Virgo horoscope sign.
  virgo('Virgo'),

  /// Represents the Libra horoscope sign.
  libra('Libra'),

  /// Represents the Scorpio horoscope sign.
  scorpio('Scorpio'),

  /// Represents the Sagittarius horoscope sign.
  sagittarius('Sagittarius'),

  /// Represents the Capricorn horoscope sign.
  capricorn('Capricorn'),

  /// Represents the Aquarius horoscope sign.
  aquarius('Aquarius'),

  /// Represents the Pisces horoscope sign.
  pisces('Pisces');

  const Horoscope(this.value);

  /// The string value of the horoscope sign.
  final String value;
}
