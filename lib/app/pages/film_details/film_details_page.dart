import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/pages/film_details/film_details_controller.dart';

class FilmDetailsPage extends StatelessWidget {
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
        () => FilmDetailsController.to.isLoading
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
                        'Filme',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text('Nome'),
                      subtitle: Text(
                        FilmDetailsController.to.filmModel.title,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      title: Text('Episódio'),
                      subtitle: Text(
                        FilmDetailsController.to.filmModel.episodeId.toString(),
                      ),
                    ),
                    ListTile(
                      title: Text('Abertura'),
                      subtitle: Text(
                        FilmDetailsController.to.filmModel.openingCrawl,
                      ),
                    ),
                    ListTile(
                      title: Text('Diretor'),
                      subtitle: Text(
                        FilmDetailsController.to.filmModel.director,
                      ),
                    ),
                    ListTile(
                      title: Text('Produtor'),
                      subtitle: Text(
                        FilmDetailsController.to.filmModel.producer,
                      ),
                    ),
                    ListTile(
                      title: Text('Data de lançamento'),
                      subtitle: Text(
                        FilmDetailsController.to.filmModel.releaseDate,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
