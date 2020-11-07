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
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        'Filme',
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
                        FilmDetailsController.to.filmModel.title,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Episódio'),
                      subtitle: Text(
                        FilmDetailsController.to.filmModel.episodeId.toString(),
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Abertura'),
                      subtitle: Text(
                        FilmDetailsController.to.filmModel.openingCrawl,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Diretor'),
                      subtitle: Text(
                        FilmDetailsController.to.filmModel.director,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text('Produtor'),
                      subtitle: Text(
                        FilmDetailsController.to.filmModel.producer,
                      ),
                    ),
                    Divider(thickness: 1),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
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
