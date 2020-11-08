import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:swapi_app/app/pages/home/home_controller.dart';
import 'package:swapi_app/app/pages/widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, 32, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'Olá, Bem-vindo!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.8),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    'Fique por dentro das principais informações sobre os personagens de StarWars.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.5),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32),
            Form(
              key: formKey,
              child: TextFormField(
                onChanged: (v) => HomeController.to.characterName = v,
                validator: (v) {
                  if (v.isEmpty) {
                    return 'Informe o nome do personagem';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: 'Nome do personagem',
                ),
              ),
            ),
            SizedBox(height: 32),
            GestureDetector(
              onTap: () {
                if (formKey.currentState.validate()) {
                  HomeController.to.getCharacter();
                }
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Get.theme.accentColor,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 1),
                      blurRadius: 1,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ],
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'BUSCAR',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.search),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
