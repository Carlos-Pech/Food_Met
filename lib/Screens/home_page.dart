import 'package:flutter/material.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/home_carrousel_section.dart';
import '../widgets/home_categorie_section.dart';
import '../widgets/home_search_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // const Color miColor = Color(0xFF9C634E);
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const HomeAppBar(),
          const Search_Section(),
          CarrouselSection(),
          // const ItemsS(),
          const Categories(),
        ],
      ),
    );
  }
}






// crossAxisCount: 2,
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       childAspectRatio: 0.80,
//       children: [
//         for (int i = 1; i < 5; i++)
//           Container(
//             padding: EdgeInsets.symmetric(vertical: 8, horizontal: 88),
//             margin: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
//             decoration: BoxDecoration(
            
//               borderRadius: BorderRadius.circular(20),
//               color: Color(0xFF232227),
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.black.withOpacity(0.4),
//                     spreadRadius: 1,
//                     blurRadius: 8)
//               ],
//             ),
//           )
//       ],