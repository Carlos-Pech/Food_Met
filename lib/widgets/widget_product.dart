import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Dtos/providers/product_providers.dart';

class ItemsS extends StatelessWidget {
  // final Products products;
  const ItemsS({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.isLoading ? 'Loading..' : 'Dips',
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        // title: const Text('My App'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ProductProvider>(
            builder: (context, usersProvider, child) => usersProvider.isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Flexible(
                    child: SingleChildScrollView(
                      child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: controller.products.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.70,
                        ),
                        itemBuilder: (context, index) {
                          final product = controller.products[index];
                          var isVegan = true;
                          return Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  blurRadius: 5,
                                  // offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/entradas');
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: const Alignment(0.9, -0.9),
                                    child: isVegan
                                        ? Image.asset(
                                            'assets/icons/vegano.png',
                                            width: 28,
                                            height: 28,
                                          )
                                        : Image.asset(
                                            'assets/icons/veg.png',
                                            width: 28,
                                            height: 28,
                                          ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    child: ClipRRect(
                                      // borderRadius:  BorderRadius.circular(10.0), // radio del borde,
                                      child: Image.network(
                                        // 'assets/images/dips.png',
                                        product!.image,
                                        width: 200.0,
                                        height: 100.0,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  Text(
                                    // 'DIPS',
                                    product.name,
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    height: 2,
                                    width: double.infinity,
                                    color: Colors.grey[200],
                                  ),
                                  const SizedBox(height: 8.0),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      // Column(
                                      //   children: const [
                                      //   //     Image.asset(
                                      //   //       'assets/icons/vegano.png',
                                      //   //       // ruta de la imagen
                                      //   //       width:
                                      //   //           28, // ancho deseado del icono
                                      //   //       height:
                                      //   //           28, // altura deseada del icono
                                      //   //       // color: Colors
                                      //   //       //     .green, // color deseado de la imagen
                                      //   //     ),
                                      //     Icon(
                                      //       Icons.star,
                                      //       color: Colors.amber,
                                      //     ),
                                      //     SizedBox(height: 2),
                                      //     Text(
                                      //       '515151',
                                      //       style: TextStyle(
                                      //         fontSize: 14.0,
                                      //         fontWeight: FontWeight.bold,
                                      //         color: Colors.black,
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),
                                      Column(
                                        children: const [
                                          Icon(
                                            Icons.timer,
                                            color: Colors.green,
                                          ),
                                          SizedBox(height: 2),
                                          Text(
                                            '20 min',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: const [
                                          Icon(
                                            Icons.local_fire_department,
                                            color: Colors.red,
                                          ),
                                          SizedBox(height: 2),
                                          Text(
                                            '350Kcal',
                                            style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
