import 'package:meta/meta.dart';
import 'package:swapi_app/app/data/providers/details_provider.dart';

class DetailsRepository {
  final DetailsProvider provider;

  DetailsRepository({@required this.provider});

  Future getData(String url) async {
    return await provider.getData(url);
  }
}
