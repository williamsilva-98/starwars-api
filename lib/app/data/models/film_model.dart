class FilmModel {
  String title;
  int episodeId;
  String openingCrawl;
  String director;
  String producer;
  String releaseDate;
  List<String> characters;
  List<String> planets;
  List<String> starships;
  List<String> vehicles;
  List<String> species;

  FilmModel({
    this.title,
    this.episodeId,
    this.openingCrawl,
    this.director,
    this.producer,
    this.releaseDate,
    this.characters,
    this.planets,
    this.starships,
    this.vehicles,
    this.species,
  });

  FilmModel.fromJson(Map<String, dynamic> json) {
    this.title = json['title'];
    this.episodeId = json['episode_id'];
    this.openingCrawl = json['opening_crawl'];
    this.director = json['director'];
    this.producer = json['producer'];
    this.releaseDate = json['release_date'];
    this.characters = List<String>.from(json['characters']);
    this.planets = List<String>.from(json['planets']);
    this.starships = List<String>.from(json['starships']);
    this.vehicles = List<String>.from(json['vehicles']);
    this.species = List<String>.from(json['species']);
  }
}
