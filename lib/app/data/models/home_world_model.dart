class HomeWorldModel {
  String name;
  String rotationPeriod;
  String orbitalPeriod;
  String diameter;
  String climate;
  String gravity;
  String terrain;
  String surfaceWater;
  String population;
  List<String> residents;
  List<String> films;

  HomeWorldModel({
    this.name,
    this.rotationPeriod,
    this.orbitalPeriod,
    this.diameter,
    this.climate,
    this.gravity,
    this.terrain,
    this.surfaceWater,
    this.population,
    this.residents,
    this.films,
  });

  HomeWorldModel.fromJson(Map<String, dynamic> json) {
    this.name = json['name'];
    this.rotationPeriod = json['rotation_period'];
    this.orbitalPeriod = json['orbital_period'];
    this.diameter = json['diameter'];
    this.climate = json['climate'];
    this.gravity = json['gravity'];
    this.terrain = json['terrain'];
    this.surfaceWater = json['surface_water'];
    this.population = json['population'];
    this.residents = List<String>.from(json['residents']);
    this.films = List<String>.from(json['films']);
  }
}
