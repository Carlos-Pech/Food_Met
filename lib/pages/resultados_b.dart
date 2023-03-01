import 'package:flutter/material.dart';

class Resultados_b extends StatefulWidget {
  @override
  _Resultados_bState createState() => _Resultados_bState();
}

class _Resultados_bState extends State<Resultados_b> {
  List<Map<String, dynamic>> _filas = [
    {"comida": "Manzana", "calorias": 95},
    {"comida": "Yogur", "calorias": 62},
    {"comida": "Ensalada", "calorias": 120},
    {"comida": "Pollo a la parrilla", "calorias": 220},
  ];

  num _totalCalorias = 0;

  void _sumarCalorias() {
    num total = 0;
    _filas.forEach((fila) => total += fila["calorias"]);
    setState(() {
      _totalCalorias = total;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suma de calorías'),
      ),
      body: Column(
        children: [
          Table(
            border: TableBorder.all(),
            children: [
              TableRow(children: [
                TableCell(child: Text('Comida')),
                TableCell(child: Text('Calorías')),
              ]),
              for (var fila in _filas)
                TableRow(children: [
                  TableCell(child: Text(fila['comida'])),
                  TableCell(child: Text(fila['calorias'].toString())),
                ]),
            ],
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _sumarCalorias,
            child: Text('Sumar calorías'),
          ),
          SizedBox(height: 20),
          Text('Total de calorías: $_totalCalorias'),
        ],
      ),
    );
  }
}
