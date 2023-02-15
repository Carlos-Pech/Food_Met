// import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarrouselSection extends StatelessWidget {
  List<String> imgList = [
    "assets/images/cocina.jpg",
    "assets/images/proteinas.jpg",
    "assets/images/dos.jpg"
    // "https://www.deliciosi.com/images/2500/2504/cocina-gourmet.jpg",
    // "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/food-met-cx71bw/assets/k6gwt44mrdh8/1667923332922.jpg",
    // "https://img.freepik.com/fotos-premium/comida-carne-carne-comida-gourmet-plato-comida-alitas-hamburguesa_6241-119.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 10.0,
        ),
        CarouselSlider(
            items: imgList
                .map((e) => ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            e,
                            height: 200,
                            width: 200,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              autoPlay: true,
              enableInfiniteScroll: false,
              enlargeCenterPage: true,
              height: 180,
            ))
      ],
    );
  }
}
