import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/pages/starship_details/starship_details_controller.dart';

class StarshipDetailsPage extends StatelessWidget {
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
      body: Obx(
        () => StarshipDetailsController.to.isLoading
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(height: 16),
                    Text('Buscando informações...'),
                  ],
                ),
              )
            : SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        'Nave Estelar',
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
                        StarshipDetailsController.to.starshipModel.name,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Modelo'),
                      subtitle: Text(
                        StarshipDetailsController.to.starshipModel.model,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Fabricante'),
                      subtitle: Text(
                        StarshipDetailsController.to.starshipModel.manufacturer,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Custo em créditos'),
                      subtitle: Text(
                        StarshipDetailsController
                            .to.starshipModel.costInCredits,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Comprimento'),
                      subtitle: Text(
                        StarshipDetailsController.to.starshipModel.length,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Velocidade Máxima'),
                      subtitle: Text(
                        StarshipDetailsController
                            .to.starshipModel.maxAtmospheringSpeed,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Tripulação'),
                      subtitle: Text(
                        StarshipDetailsController.to.starshipModel.crew,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Passageiros'),
                      subtitle: Text(
                        StarshipDetailsController.to.starshipModel.passengers,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Consumíveis'),
                      subtitle: Text(
                        StarshipDetailsController.to.starshipModel.consumables,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Avaliação hiperdrive'),
                      subtitle: Text(
                        StarshipDetailsController
                            .to.starshipModel.hyperdriveRating,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Classe da nave'),
                      subtitle: Text(
                        StarshipDetailsController
                            .to.starshipModel.starshipClass,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('MGLT'),
                      subtitle: Text(
                        StarshipDetailsController.to.starshipModel.mGLT,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
