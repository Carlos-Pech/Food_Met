import 'package:food_met/Dtos/Models/platillo.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'dart:convert';

import '../../pages/index.dart';
import 'api_url.dart';

class ServicioRemoto {
  static Future<List<Platillo>> fetchPlatillos() async {
    var endpoint = "api/product/";
    var response = await http.get(Uri.parse(baseUrl + endpoint));
    if (response.statusCode == 200) {
      dynamic responseData = json.decode(response.body);
      if (responseData is Map<String, dynamic>) {
        final List<dynamic> data = responseData['docs'] ?? [];
        debugPrint(response.body);

        //Para mostrar los datos con logger
        // Crear una instancia de Logger
        // var logger = Logger();
        // Imprimir los datos de respuesta usando el logger
        // logger.d(responseData);

        return data.map((item) => Platillo.fromJson(item)).toList();
      } else {
        throw Exception('Invalid response data type');
      }
    } else {
      throw Exception('Failed to load products');
    }
  }
}