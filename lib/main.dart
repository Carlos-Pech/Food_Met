import 'package:flutter/material.dart';
import 'package:food_met/pages/404_page.dart';
import 'package:food_met/pages/entradas_page.dart';
import 'package:food_met/pages/home_page.dart';
import 'package:food_met/pages/product_page.dart';
import 'package:food_met/pages/splash.dart';
import 'package:food_met/widgets/items.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: SplashScreen(),
      title: 'FoodMet',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => const HomePage1(),
        '/entradas': (context) => const EntradasPage(),
        '/items': (context) => const ItemsS(),
        // '/platofuerte': ((context) => const PlatoFuertePage()),
        // '/postres': ((context) => const PostresPage()),
        // '/bebidas': ((context) => const BebidasPage()),
        // '/listaProductos': ((context) => const ListProductsPage()),
        // '/calculadora': ((context) => const CalculadoraPage()),
        '/products': (context) => const ProductPage(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const Page404(),
        );
      },
    );
  }
}
