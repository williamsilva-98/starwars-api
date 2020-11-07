import 'package:flutter/material.dart';
import 'package:swapi_app/app/pages/character_details/character_details_controller.dart';

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
        padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              title: Text(
                'Personagem',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text('Nome'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.name,
              ),
            ),
            Divider(thickness: 1),
            ListTile(
              title: Text(
                'Detalhes físicos',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text('Altura'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.height,
              ),
            ),
            ListTile(
              title: Text('Massa'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.mass,
              ),
            ),
            ListTile(
              title: Text('Cor do cabelo'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.hairColor,
              ),
            ),
            ListTile(
              title: Text('Cor da pele'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.skinColor,
              ),
            ),
            ListTile(
              title: Text('Cor dos olhos'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.eyeColor,
              ),
            ),
            ListTile(
              title: Text('Ano de nascimento'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.birthYear,
              ),
            ),
            ListTile(
              title: Text('Gênero'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.gender,
              ),
            ),
            Divider(thickness: 1),
            ListTile(
              title: Text(
                'Naturalidade',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text('Planeta natal'),
              subtitle: Text(
                CharacterDetailsController.to.characterModel.homeworld,
              ),
            ),
            Divider(thickness: 1),
            ListTile(
              title: Text(
                'Filmes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  CharacterDetailsController.to.characterModel.films.length,
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text('Filme ${index + 1}'),
                  subtitle: Text(
                    CharacterDetailsController.to.characterModel.films[index],
                  ),
                );
              },
            ),
            Divider(thickness: 1),
            ListTile(
              title: Text(
                'Veículos',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  CharacterDetailsController.to.characterModel.vehicles.length,
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text('Veículo ${index + 1}'),
                  subtitle: Text(
                    CharacterDetailsController
                        .to.characterModel.vehicles[index],
                  ),
                );
              },
            ),
            Divider(thickness: 1),
            ListTile(
              title: Text(
                'Naves Estelares',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount:
                  CharacterDetailsController.to.characterModel.starships.length,
              itemBuilder: (_, index) {
                return ListTile(
                  title: Text('Nave Estelar ${index + 1}'),
                  subtitle: Text(
                    CharacterDetailsController
                        .to.characterModel.starships[index],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
