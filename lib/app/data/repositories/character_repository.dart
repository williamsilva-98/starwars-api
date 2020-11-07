import 'package:meta/meta.dart';
import 'package:swapi_app/app/data/providers/character_provider.dart';

class CharacterRepository {
  final CharacterProvider provider;

  CharacterRepository({@required this.provider});

  Future getCharacter(String name) async {
    return await provider.getCharacter(name);
  }
}
