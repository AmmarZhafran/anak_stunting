import 'package:anak_stunting/package/artikel_data.dart';
import 'package:anak_stunting/package/carausel_artikel.dart';
import 'package:anak_stunting/pages/bottom_bar.dart';
import 'package:flutter/material.dart';

class ArtikelPage extends StatelessWidget {
  const ArtikelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.all(5),
                height: 50,
                width: 350,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 146, 206, 255),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Search Artikel ...',
                          hintStyle: const TextStyle(color: Colors.white),
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CarouselArtikel(),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(padding: EdgeInsets.all(15), children: [
                  ArtikelData(),
                ]),
              ),
            ],
          ),
          const Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: BottomBar(),
          ),
        ],
      ),
    );
  }
}
