import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/pages/character_details/character_details_controller.dart';
import 'package:swapi_app/app/pages/home_world_details/home_world_details_controller.dart';

class HomeWorldDetailsPage extends StatelessWidget {
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
        () => HomeWorldDetailsController.to.isLoading
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
                padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListTile(
                      title: Text(
                        'Planeta natal',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text('Nome'),
                      subtitle: Text(
                        HomeWorldDetailsController.to.homeWorldModel.name,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      title: Text(
                        'Detalhes físicos planetário',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text('Período de rotação'),
                      subtitle: Text(
                        HomeWorldDetailsController
                            .to.homeWorldModel.rotationPeriod,
                      ),
                    ),
                    ListTile(
                      title: Text('Período orbital'),
                      subtitle: Text(
                        HomeWorldDetailsController
                            .to.homeWorldModel.orbitalPeriod,
                      ),
                    ),
                    ListTile(
                      title: Text('Diâmetro'),
                      subtitle: Text(
                        HomeWorldDetailsController.to.homeWorldModel.diameter,
                      ),
                    ),
                    ListTile(
                      title: Text('Clima'),
                      subtitle: Text(
                        HomeWorldDetailsController.to.homeWorldModel.climate,
                      ),
                    ),
                    ListTile(
                      title: Text('Gravidade'),
                      subtitle: Text(
                        HomeWorldDetailsController.to.homeWorldModel.gravity,
                      ),
                    ),
                    ListTile(
                      title: Text('Terreno'),
                      subtitle: Text(
                        HomeWorldDetailsController.to.homeWorldModel.terrain,
                      ),
                    ),
                    ListTile(
                      title: Text('Superfície da água'),
                      subtitle: Text(
                        HomeWorldDetailsController
                            .to.homeWorldModel.surfaceWater,
                      ),
                    ),
                    ListTile(
                      title: Text('População'),
                      subtitle: Text(
                        HomeWorldDetailsController.to.homeWorldModel.population,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
