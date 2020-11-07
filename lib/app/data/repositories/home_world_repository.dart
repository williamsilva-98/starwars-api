import 'package:meta/meta.dart';
import 'package:swapi_app/app/data/providers/home_world_provider.dart';

class HomeWorldRepository {
  final HomeWorldProvider provider;

  HomeWorldRepository({@required this.provider});

  Future getHomeWorld(String url) async {
    return await provider.getHomeWorld(url);
  }
}
