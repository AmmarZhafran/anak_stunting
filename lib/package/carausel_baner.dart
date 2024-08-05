import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselDemo extends StatelessWidget {
  final List<String> imgList = [
    'assets/cegah.png',
    'assets/penuhi.png',
    'assets/dampak.png',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 210.0,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        aspectRatio: 2.0,
        onPageChanged: (index, reason) {
          print('Current index: $index');
        },
      ),
      items: imgList
          .map((item) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                    child: Image.asset(item, fit: BoxFit.cover, width: 1000)),
              ))
          .toList(),
    );
  }
}
