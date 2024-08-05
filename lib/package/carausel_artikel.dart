import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselArtikel extends StatelessWidget {
  final List<String> imgList = [
    'assets/penyebab.png',
    'assets/diagnosa.png',
    'assets/serupa.png',
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
      items: imgList.asMap().entries.map((entry) {
        int index = entry.key;
        String item = entry.value;
        return Builder(
          builder: (BuildContext context) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: InkWell(
                onTap: () {
                  // Navigasi ke halaman berbeda berdasarkan index gambar
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => getPage(index)),
                  );
                },
                child: Center(
                  child: Image.asset(item, fit: BoxFit.cover, width: 1000),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  // Fungsi untuk mendapatkan halaman yang sesuai dengan index
  Widget getPage(int index) {
    switch (index) {
      case 0:
        return CegahPage();
      case 1:
        return PenuhiPage();
      case 2:
        return DampakPage();
      default:
        return Scaffold(
          body: Center(
            child: Text('Page not found'),
          ),
        );
    }
  }
}

// Halaman pertama
class CegahPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cegah Page'),
      ),
      body: Center(
        child: Text('This is the Cegah Page'),
      ),
    );
  }
}

// Halaman kedua
class PenuhiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Penuhi Page'),
      ),
      body: Center(
        child: Text('This is the Penuhi Page'),
      ),
    );
  }
}

// Halaman ketiga
class DampakPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dampak Page'),
      ),
      body: Center(
        child: Text('This is the Dampak Page'),
      ),
    );
  }
}
