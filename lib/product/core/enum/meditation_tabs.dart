/// Represents the tabs in the meditation screen.
enum MeditationTabs {
  /// Represents the meditation tab.

  meditation('Meditation'),

  /// Represents the sleep tab.

  sleep('Sleep'),

  /// Represents the music tab.

  music('Music');

  /// Title of the tab.
  final String title;

  /// Constructs a [MeditationTabs] with the given [title].
  // ignore: sort_constructors_first
  const MeditationTabs(this.title);
}
