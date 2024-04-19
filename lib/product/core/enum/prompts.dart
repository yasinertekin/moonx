/// Enum representing different prompts.
enum Prompts {
  /// Represents the lunar tips prompt.
  lunarTips,

  /// Represents the daily horoscope prompt.
  dailyHoroscope;

  /// Returns the prompt value based on the given
  /// user's horoscope and lunar tips.
  String getPromptValue(String usersHoroscope, String usersLunarTips) {
    switch (this) {
      case Prompts.dailyHoroscope:
        return 'Your Daily Horoscope for $usersHoroscope is $usersLunarTips';
      case Prompts.lunarTips:
        return 'What are $usersLunarTips for today?';
    }
  }
}
