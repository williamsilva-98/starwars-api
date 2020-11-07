import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/pages/character_details/character_details_controller.dart';
import 'package:swapi_app/app/routes/app_routes.dart';

class CharacterDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/star_wars_logo.png',
          height: 50,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Personagem',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Nome'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.name,
              ),
            ),
            Divider(thickness: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Detalhes físicos',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Altura'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.height,
              ),
            ),
            Divider(thickness: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Massa'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.mass,
              ),
            ),
            Divider(thickness: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Cor do cabelo'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.hairColor,
              ),
            ),
            Divider(thickness: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Cor da pele'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.skinColor,
              ),
            ),
            Divider(thickness: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Cor dos olhos'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.eyeColor,
              ),
            ),
            Divider(thickness: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Ano de nascimento'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.birthYear,
              ),
            ),
            Divider(thickness: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Gênero'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.gender,
              ),
            ),
            Divider(thickness: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Naturalidade',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Planeta natal'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.homeworld,
              ),
              trailing: Text(
                'Ver detalhes',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              onTap: () {
                Get.toNamed(
                  AppRoutes.HOMEWORLD_DETAILS,
                  arguments:
                      CharacterDetailsController.to.characterModel.homeworld,
                );
              },
            ),
            Divider(thickness: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Filmes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (_, __) => Divider(thickness: 1),
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  CharacterDetailsController.to.characterModel.films.length,
              itemBuilder: (_, index) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Filme ${index + 1}'),
                  subtitle: Text(
                    CharacterDetailsController.to.characterModel.films[index],
                  ),
                  trailing: Text(
                    'Ver detalhes',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onTap: () {
                    Get.toNamed(
                      AppRoutes.FILM_DETAILS,
                      arguments: CharacterDetailsController
                          .to.characterModel.films[index],
                    );
                  },
                );
              },
            ),
            Divider(thickness: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Veículos',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (_, __) => Divider(thickness: 1),
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  CharacterDetailsController.to.characterModel.vehicles.length,
              itemBuilder: (_, index) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Veículo ${index + 1}'),
                  subtitle: Text(
                    CharacterDetailsController
                        .to.characterModel.vehicles[index],
                  ),
                  trailing: Text(
                    'Ver detalhes',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onTap: () {
                    Get.toNamed(
                      AppRoutes.VEHICLE_DETAILS,
                      arguments: CharacterDetailsController
                          .to.characterModel.vehicles[index],
                    );
                  },
                );
              },
            ),
            Divider(thickness: 1),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Naves Estelares',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (_, __) => Divider(thickness: 1),
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  CharacterDetailsController.to.characterModel.starships.length,
              itemBuilder: (_, index) {
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text('Nave Estelar ${index + 1}'),
                  subtitle: Text(
                    CharacterDetailsController
                        .to.characterModel.starships[index],
                  ),
                  trailing: Text(
                    'Ver detalhes',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onTap: () {
                    Get.toNamed(
                      AppRoutes.STARSHIP_DETAILS,
                      arguments: CharacterDetailsController
                          .to.characterModel.starships[index],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
