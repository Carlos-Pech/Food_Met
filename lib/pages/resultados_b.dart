import 'package:flutter/material.dart';
import 'package:food_met/Dtos/Models/platillo.dart';
//import 'package:food_met/Dtos/Models/product_response_dto.dart';
import 'package:food_met/Dtos/providers/proveedor_platillos.dart';
//import 'package:food_met/Dtos/services/remote_services.dart';
import 'package:food_met/Dtos/services/servicio_remoto.dart';
// import 'package:food_met/widgets/product_Section.dart';
// import 'dart:convert';
// import '../Dtos/services/api_url.dart';
import '../../pages/index.dart';
import 'package:provider/provider.dart';
//import '../Dtos/providers/product_providers.dart';

class Sumatoria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<PlatilloProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Calorias en los platillos",
          style: TextStyle(color: Colors.black),
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
      body: FutureBuilder<List<Platillo>>(
        future: ServicioRemoto.fetchPlatillos(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          return DataTable(
            columns: [
              DataColumn(label: Text('Nombre')),
              DataColumn(label: Text('Descripción')),
              DataColumn(label: Text('Calorias')),
            ],
            rows: controller.products.map((product) {
              return DataRow(
                cells: [
                  DataCell(Text(product.name ?? 'Unknown')),
                  DataCell(Text(product.description ?? 'N/A')),
                  DataCell(
                    Row(
                      children: [
                        Expanded(
                          child:
                              Text(product.totalCalories?.toString() ?? 'N/A'),
                        ),
                        PopupMenuButton(
                          itemBuilder: (context) {
                            return product.ingredients
                                    ?.map((ingredient) => PopupMenuItem(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(ingredient.name ?? 'Name'),
                                              Text(
                                                  '${ingredient.calories} calorias',
                                                  style: TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      color: Colors.grey)),
                                            ],
                                          ),
                                          value: ingredient,
                                        ))
                                    .toList() ??
                                [];
                          },
                          onSelected: (selectedValue) {
                            // Do something with the selected ingredient value
                          },
                          icon: Icon(Icons.arrow_drop_down),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
