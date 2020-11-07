class StarshipModel {
  String name;
  String model;
  String manufacturer;
  String costInCredits;
  String length;
  String maxAtmospheringSpeed;
  String crew;
  String passengers;
  String cargoCapacity;
  String consumables;
  String hyperdriveRating;
  String mGLT;
  String starshipClass;
  List<String> pilots;
  List<String> films;

  StarshipModel({
    this.name,
    this.model,
    this.manufacturer,
    this.costInCredits,
    this.length,
    this.maxAtmospheringSpeed,
    this.crew,
    this.passengers,
    this.cargoCapacity,
    this.consumables,
    this.hyperdriveRating,
    this.mGLT,
    this.starshipClass,
    this.pilots,
    this.films,
  });

  StarshipModel.fromJson(Map<String, dynamic> json) {
    this.name = json['name'];
    this.model = json['model'];
    this.manufacturer = json['manufacturer'];
    this.costInCredits = json['cost_in_credits'];
    this.length = json['length'];
    this.maxAtmospheringSpeed = json['max_atmosphering_speed'];
    this.crew = json['crew'];
    this.passengers = json['passengers'];
    this.cargoCapacity = json['cargo_capacity'];
    this.consumables = json['consumables'];
    this.hyperdriveRating = json['hyperdrive_rating'];
    this.mGLT = json['MGLT'];
    this.starshipClass = json['starship_class'];
    this.pilots = List<String>.from(json['pilots']);
    this.films = List<String>.from(json['films']);
  }
}
