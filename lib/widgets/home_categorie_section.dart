import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      childAspectRatio: 0.80,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        // for (int i = 1; i <= 4; i++)
        //   Container(
        //     padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        //     margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10.0),
        //       color: Colors.white,
        //       boxShadow: [
        //         BoxShadow(
        //           color: Colors.grey.withOpacity(0.5),
        //           spreadRadius: 2,
        //           blurRadius: 5,
        //           offset: const Offset(0, 3),
        //         ),
        //       ],
        //     ),
        //     child:InkWell(
        //       onTap: () {
        //         Navigator.pushNamed(context, '/entradas');
        //       },
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           Image.asset(
        //             'assets/images/sopa.png',
        //             width: 64.0,
        //             height: 64.0,
        //           ),
        //           const SizedBox(height: 8.0),
        //           const Text(
        //             'Entrada',
        //             style: TextStyle(
        //               fontSize: 18.0,
        //               fontWeight: FontWeight.bold,
        //               color: Colors.black,
        //             ),
        //           ),
        //           const SizedBox(height: 8.0),
        //           Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: const [
        //               // Aquí se pueden agregar widgets adicionales en la fila
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [],
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const EntradasPage()));
                  Navigator.pushNamed(context, '/entradas');
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/images/filete.png",
                    height: 100,
                    width: 150,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                child: const Text(
                  "Plato fuerte",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Spacer()],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const[],
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const EntradasPage()));
                  Navigator.pushNamed(context, '/resultados');
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/images/bebida10.png",
                    height: 100,
                    width: 150,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                child: const Text(
                  "Bebidas",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[Spacer()],
                ),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:const [],
              ),
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => const EntradasPage()));
                  Navigator.pushNamed(context, '/entradas');
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    "assets/images/postre.png",
                    height: 100,
                    width: 150,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                alignment: Alignment.topCenter,
                child: const Text(
                  "Postres",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Spacer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
