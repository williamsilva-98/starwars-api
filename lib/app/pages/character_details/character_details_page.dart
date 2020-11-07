import 'package:flutter/material.dart';

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
        padding: EdgeInsets.fromLTRB(16, 32, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Conheça os principais detalhes dos personagens de StarWars.',
              style: TextStyle(
                fontSize: 22,
                color: Colors.black.withOpacity(0.8),
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
