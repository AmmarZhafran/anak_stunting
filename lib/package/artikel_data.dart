import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArtikelData extends StatelessWidget {
  ArtikelData({super.key});
  final List<String> urls = [
    'https://upk.kemkes.go.id/new/4-cara-mencegah-stunting',
    'https://example.com/another-link',
    // Tambahkan URL lainnya di sini
  ];

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => _launchURL(urls[0]),
          child: Container(
            padding: EdgeInsets.all(10),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "4 Cara Mencegah Stunting",
                  style: TextStyle(fontSize: 20),
                ),
                Image.asset("assets/lakicewe.png")
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () => _launchURL(urls[0]),
          child: Container(
            padding: EdgeInsets.all(10),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "4 Cara Mencegah Stunting",
                  style: TextStyle(fontSize: 20),
                ),
                Image.asset("assets/lakicewe.png")
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () => _launchURL(urls[0]),
          child: Container(
            padding: EdgeInsets.all(10),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "4 Cara Mencegah Stunting",
                  style: TextStyle(fontSize: 20),
                ),
                Image.asset("assets/lakicewe.png")
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () => _launchURL(urls[0]),
          child: Container(
            padding: EdgeInsets.all(10),
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.black, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "4 Cara Mencegah Stunting",
                  style: TextStyle(fontSize: 20),
                ),
                Image.asset("assets/lakicewe.png")
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
