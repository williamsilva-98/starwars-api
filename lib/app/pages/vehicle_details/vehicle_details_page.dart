import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/pages/film_details/film_details_controller.dart';
import 'package:swapi_app/app/pages/vehicle_details/vehicle_details_controller.dart';

class VehicleDetailsPage extends StatelessWidget {
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
        () => VehicleDetailsController.to.isLoading
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
                        'Veículo',
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
                        VehicleDetailsController.to.vehicleModel.name,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Modelo'),
                      subtitle: Text(
                        VehicleDetailsController.to.vehicleModel.model,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Fabricante'),
                      subtitle: Text(
                        VehicleDetailsController.to.vehicleModel.manufacturer,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Custo em créditos'),
                      subtitle: Text(
                        VehicleDetailsController.to.vehicleModel.costInCredits,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Comprimento'),
                      subtitle: Text(
                        VehicleDetailsController.to.vehicleModel.length,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Velocidade Máxima'),
                      subtitle: Text(
                        VehicleDetailsController
                            .to.vehicleModel.maxAtmospheringSpeed,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Tripulação'),
                      subtitle: Text(
                        VehicleDetailsController.to.vehicleModel.crew,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Passageiros'),
                      subtitle: Text(
                        VehicleDetailsController.to.vehicleModel.passengers,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Consumíveis'),
                      subtitle: Text(
                        VehicleDetailsController.to.vehicleModel.consumables,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Classe do veículo'),
                      subtitle: Text(
                        VehicleDetailsController.to.vehicleModel.vehicleClass,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
