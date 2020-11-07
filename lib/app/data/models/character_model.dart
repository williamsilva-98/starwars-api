import 'dart:convert';

class CharacterModel {
  final String name;
  final String height;
  final String mass;
  final String hairColor;
  final String skinColor;
  final String eyeColor;
  final String birthYear;
  final String gender;
  final String homeworld;
  final List<String> films;
  final List<String> vehicles;
  final List<String> starships;

  CharacterModel({
    this.name,
    this.height,
    this.mass,
    this.hairColor,
    this.skinColor,
    this.eyeColor,
    this.birthYear,
    this.gender,
    this.homeworld,
    this.films,
    this.vehicles,
    this.starships,
  });

  factory CharacterModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return CharacterModel(
      name: map['name'],
      height: map['height'],
      mass: map['mass'],
      hairColor: map['hair_color'],
      skinColor: map['skin_color'],
      eyeColor: map['eye_color'],
      birthYear: map['birth_year'],
      gender: map['gender'],
      homeworld: map['homeworld'],
      films: List<String>.from(map['films']),
      vehicles: List<String>.from(map['vehicles']),
      starships: List<String>.from(map['starships']),
    );
  }

  factory CharacterModel.fromJson(String source) =>
      CharacterModel.fromMap(json.decode(source));
}
