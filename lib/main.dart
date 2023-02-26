import 'package:flutter/material.dart';
import 'package:food_met/Screens/404_page.dart';
import 'package:food_met/Screens/entradas_page.dart';
import 'package:food_met/Screens/home_page.dart';
import 'package:food_met/Screens/Lists_Product_Page_.dart';
import 'package:food_met/Screens/splash.dart';
import 'package:food_met/widgets/widget_products.dart';
import 'package:provider/provider.dart';

import 'Dtos/providers/product_providers.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,

        // home: SplashScreen(),
        title: 'FoodMet',
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/home': (context) => const HomePage1(),
          '/entradas': (context) => const EntradasPage(),
          '/items': (context) => const ItemsS(),
          '/products': (context) => const ListsProductPage(),
        },
        onGenerateRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => const Page404(),
          );
        },
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// import 'dart:convert';
// import 'package:http/http.dart' as http;

// void main() {
//   fetchData();
// }

// Future<void> fetchData() async {
//   final response = await http.get(Uri.parse('http://localhost:3050/api/product'));
//   if (response.statusCode == 200) {
//     final data = jsonDecode(response.body);
//     print(data);
//   } else {
//     print('Request failed with status: ${response.statusCode}.');
//   }
// }
