import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemsS extends StatelessWidget {
  const ItemsS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dips"),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: 0.70,
              children: [
                for (int i = 1; i <= 12; i++)
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    margin:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF232227),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  // color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              // child: SvgPicture.asset(
                              //   "assets/icons/drink.svg",
                              //   width: 10,
                              //   height: 20,
                              // ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, "/products");
                          },
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Image.asset(
                              "assets/images/dips.png",
                              width: 120,
                              height: 100,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 0),
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Dips",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Mayor proteina",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "\$150",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const Icon(
                                CupertinoIcons.cart_badge_plus,
                                size: 27,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
              ]),
        ),
      ),
    );
  }
}
