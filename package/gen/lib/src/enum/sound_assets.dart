/// Enum representing voice assets.
enum SoundAssets {
  /// Represents the voice asset "mustafa_sandal_aya_benzer".
  mustafaSandalAyaBenzer('mustafa_sandal_aya_benzer'),

  /// Represents the voice asset "omer_balikci_coffe_blues".
  omerbalikciCoffeBlues('omer_balikci_coffe_blues'),

  /// Represents the voice asset "adimi_kalbine_yaz".
  adimiKalbineYaz('adimi_kalbine_yaz'),

  /// Represents the voice asset "bir_zamanlar_firtinalar_estirirdim".
  birZamanlrFirtinalarEstirirdim('bir_zamanlar_firtinalar_estirirdim'),

  /// Represents the voice asset 'capoeira_paranaue'.
  copoeirParnue('capoeira_paranaue'),

  /// Represents the voice asset "tarkan_kuzu_kuzu".
  ladiesOfTheWood('ladies_of_the_wood'),

  /// Represents the voice asset "holding_out_for_a_hero".
  holdingOutForAHero('holding_out_for_a_hero'),

  /// Represents the voice asset "tarkan_arada_bir".
  tarkanAradaBir('tarkan_arada_bir'),

  /// Represents the voice asset "english_man_in_new_york".
  englishManInNewYork('english_man_in_new_york'),

  /// Represents the voice asset "serdar_ortaç_şeytan".
  serdarOrtacSeytan('serdar_ortaç_seytan');

  final String value;

  /// Constructs a [SoundAssets] with the given [value].
  const SoundAssets(this.value);

  /// Returns the asset path for the voice asset.
  String get asset => '$value.mp3';
}
