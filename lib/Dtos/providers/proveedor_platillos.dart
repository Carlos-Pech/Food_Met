// import 'package:food_met/Dtos/Models/product_response_dto.dart';
// import 'package:http/http.dart' as http;

import 'package:food_met/Dtos/Models/platillo.dart';
import 'package:food_met/Dtos/services/servicio_remoto.dart';
// import 'package:food_met/Dtos/services/remote_services.dart';

import '../../pages/index.dart';

// import 'package:logger/logger.dart';

class PlatilloProvider extends ChangeNotifier {
  bool isLoading = false;
  List<Platillo> products = [];

  PlatilloProvider() {
    fetchPlatillos();
  }

  Future<void> fetchPlatillos() async {
    isLoading = true;
    notifyListeners();
    products = await ServicioRemoto.fetchPlatillos();
    debugPrint('Total products: ${products.length}');
    isLoading = false;
    notifyListeners();
  }
}
