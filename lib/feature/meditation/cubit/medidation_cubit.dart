enum MedidationTabs {
  /// Represents the meditation tab.

  meditation('Meditation'),

  /// Represents the sleep tab.

  sleep('Sleep'),

  /// Represents the music tab.

  music('Music');

  /// Title of the tab.
  final String title;

  /// Constructs a [MedidationTabs] with the given [title].
  // ignore: sort_constructors_first
  const MedidationTabs(this.title);
}
