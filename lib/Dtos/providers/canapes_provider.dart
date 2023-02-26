// import 'package:food_met/Dtos/Models/product_response_dto.dart';
// import 'package:http/http.dart' as http;

import 'package:food_met/Dtos/Models/product_response_dto.dart';
import 'package:food_met/Dtos/services/remote_services.dart';
// import 'package:food_met/Dtos/services/remote_services.dart';

import '../../Screens/index.dart';

// import 'package:logger/logger.dart';

class CanapesProvider extends ChangeNotifier {
  bool isLoading = false;
  List<Products> products = [];

  CanapesProvider() {
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    isLoading = true;
    notifyListeners();
    products = await RemoteServices.fetchProductsCanapes();
    debugPrint('Total products: ${products.length}');
    isLoading = false;
    notifyListeners();
  }

  
}
