import 'package:flutter/material.dart';
import 'package:food_met/widgets/AppBar.dart';
import 'package:food_met/widgets/widget_products.dart';

class ListsProductPage extends StatelessWidget {
  const ListsProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          CustomAppBar(),
          ItemsS(),
          // (const) ItemsS ItemsS({Key? key, required Products products})
          
        ],
      ),
    );
  }
}
