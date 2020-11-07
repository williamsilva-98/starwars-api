class CharacterModel {
  String name;
  String height;
  String mass;
  String hairColor;
  String skinColor;
  String eyeColor;
  String birthYear;
  String gender;
  String homeworld;
  List<String> films;
  List<String> vehicles;
  List<String> starships;

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

  CharacterModel.fromJson(Map<String, dynamic> json) {
    this.name = json['name'];
    this.height = json['height'];
    this.mass = json['mass'];
    this.hairColor = json['hair_color'];
    this.skinColor = json['skin_color'];
    this.eyeColor = json['eye_color'];
    this.birthYear = json['birth_year'];
    this.gender = json['gender'];
    this.homeworld = json['homeworld'];
    this.films = List<String>.from(json['films']);
    this.vehicles = List<String>.from(json['vehicles']);
    this.starships = List<String>.from(json['starships']);
  }
}
