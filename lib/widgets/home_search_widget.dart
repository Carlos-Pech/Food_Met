import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Search_Section extends StatefulWidget {
  const Search_Section({Key? key}) : super(key: key);

  @override
  State<Search_Section> createState() => _Search_SectionState();
}

class Product {
  final int id;
  final String name;
  final double price;

  Product({required this.id, required this.name, required this.price});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,
      name: json['name'],
      price: json['price'].toDouble(),
    );
  }
}

class _Search_SectionState extends State<Search_Section> {
  final TextEditingController _controller = TextEditingController();
  List<Product>? _searchResults;

  Future<void> _makeSearchRequest(String name) async {
    
    final response = await http.get(
      Uri.parse('https://apifoodmet.up.railway.app/api/product/buscar/$name'),
    );
    if (response.statusCode == 200) {
      final productJson = jsonDecode(response.body) as Map<String, dynamic>;
      final id = productJson['id'] ?? 0;
      final name = productJson['name'] ?? '';
      final price = productJson['price'] != null ? productJson['price'].toDouble() : 0.0;
      final product = Product(id: id, name: name, price: price);

      setState(() {
        _searchResults = [product];
      });
    } else {
      throw Exception('Error al hacer la solicitud: ${response.statusCode}');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xFFEEEEEE),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 5),
                height: 50,
                width: 300,
                child: TextFormField(
                  controller: _controller,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search here",
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  _makeSearchRequest(_controller.text);
                },
                child: const Icon(Icons.search),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';

// class Search_Section extends StatelessWidget {
//   const Search_Section({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(

//       child: Column(
//         children: [
//           Container(
//             margin: const EdgeInsets.symmetric(horizontal: 15),
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             height: 50,
//             decoration: BoxDecoration(
//               color: const Color(0xFFEEEEEE),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Row(
//               children: [
//                 Container(
//                   margin:const EdgeInsets.only(left: 5),
//                   height: 50,
//                   width: 300,
//                   child: TextFormField(
//                     decoration: const InputDecoration(
//                         border: InputBorder.none, hintText: "Search here"),
//                   ),
//                 ),
//                 const Spacer(),
//                 const Icon(
//                   Icons.search,
//                   size: 27,
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
