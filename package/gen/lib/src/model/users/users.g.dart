// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      name: json['name'] as String,
      email: json['email'] as String,
      birthDate: json['birthDate'] as String,
      birthTime: json['birthTime'] as String,
      placeOfBirth: json['placeOfBirth'] as String,
      horoscope: $enumDecode(_$HoroscopeEnumMap, json['horoscope']),
      isPremium: json['isPremium'] as bool? ?? false,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'birthDate': instance.birthDate,
      'birthTime': instance.birthTime,
      'placeOfBirth': instance.placeOfBirth,
      'horoscope': _$HoroscopeEnumMap[instance.horoscope]!,
      'isPremium': instance.isPremium,
    };

const _$HoroscopeEnumMap = {
  Horoscope.aries: 'aries',
  Horoscope.taurus: 'taurus',
  Horoscope.gemini: 'gemini',
  Horoscope.cancer: 'cancer',
  Horoscope.leo: 'leo',
  Horoscope.virgo: 'virgo',
  Horoscope.libra: 'libra',
  Horoscope.scorpio: 'scorpio',
  Horoscope.sagittarius: 'sagittarius',
  Horoscope.capricorn: 'capricorn',
  Horoscope.aquarius: 'aquarius',
  Horoscope.pisces: 'pisces',
};
