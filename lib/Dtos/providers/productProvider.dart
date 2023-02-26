// import 'dart:convert';
// import 'package:flutter/cupertino.dart';
// import 'package:food_met/Dtos/Models/product_response_dto.dart';


// import 'package:http/http.dart' as http;
// import 'package:logger/logger.dart';

// class UsersProvider extends ChangeNotifier {
//   bool isLoading = true;

//   final logger = Logger();
//   List<Products>? _users;

//   List<Products>? get users => _users;

//   Future fetchUsers() async {
//     final response = await http.get(Uri.parse('https://reqres.in/api/users'));

//     if (response.statusCode == 200) {
//       final json = jsonDecode(response.body);
//       final List<dynamic> data = json['data'];

//       _users = data.map((e) => Products.fromMap(e)).toList();
//       isLoading = false;
//       logger.d('Total:${json['data']}');
//       notifyListeners();
//     } else {
//       // If the server did not return a 200 OK response,
//       // then throw an exception.
//       throw Exception('Failed to load album');
//     }
//   }
// }
