import 'package:flutter/material.dart';

class EntradasPage extends StatelessWidget {
  const EntradasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(239, 245, 237, 237),
      appBar: AppBar(
        title: const Text("Entradas"),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: GridView.count(
            childAspectRatio: 0.90,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            shrinkWrap: true,
            children: [
              // for (int i = 1; i <= 6; i++)
              Container(
                padding: const EdgeInsets.only(left: 15, right: 10, top: 8),
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [],
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const ItemsS()));
                        // Navigator.pushNamed(context, '/items');
                      },
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.all(1),
                        child: Image.asset(
                          "assets/images/dips.png",
                          height: 120,
                          width: 150,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 18, top: 20),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Dips",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Spacer(),
                          // Icon(Icons.calculate),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 10, top: 8),
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [],
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const ItemsS()));
                      },
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.all(1),
                        child: Image.asset(
                          "assets/images/canapes.png",
                          height: 120,
                          width: 150,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 18, top: 20),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Canapes",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Spacer(),
                          // Icon(Icons.calculate),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 10, top: 8),
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const ItemsS()));
                      },
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.all(1),
                        child: Image.asset(
                          "assets/images/ensalada.jpg",
                          height: 120,
                          width: 150,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 18, top: 20),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Ensaladas",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Spacer(),
                          // Icon(Icons.calculate),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15, right: 10, top: 8),
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [],
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => const ItemsS()));
                      },
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.all(1),
                        child: Image.asset(
                          "assets/images/dips.png",
                          height: 120,
                          width: 150,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 18, top: 20),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Sopas",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Spacer(),
                          // Icon(Icons.calculate),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
