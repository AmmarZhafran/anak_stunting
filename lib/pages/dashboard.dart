import 'package:anak_stunting/app_bar/appbar_inputdata.dart';
import 'package:anak_stunting/package/carausel_baner.dart';
import 'package:anak_stunting/pages/bottom_bar.dart';
import 'package:anak_stunting/pages/data_hasil.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';

class LatestResultPage extends StatefulWidget {
  @override
  _LatestResultPageState createState() => _LatestResultPageState();
}

class _LatestResultPageState extends State<LatestResultPage> {
  String date = '';
  String gender = '';
  String age = '';
  String height = '';
  String resultMessage = '';
  Color resultColor = Colors.white;

  @override
  void initState() {
    super.initState();
    loadLatestResult();
  }

  Future<void> loadLatestResult() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> history = prefs.getStringList('history') ?? [];

    if (history.isNotEmpty) {
      String latestEntry = history.last;
      final entry = latestEntry.split(';');
      date = entry[0];
      gender = entry[1];
      age = entry[2];
      height = entry[3];
      resultMessage = entry[4];
      resultColor = resultMessage == 'Tinggi Badan Sesuai Usia'
          ? Color(0xFFB5E4FF)
          : resultMessage == 'Stunting'
              ? Color.fromARGB(255, 255, 129, 120)
              : const Color.fromARGB(255, 87, 29, 97);
    } else {
      resultMessage = 'Tidak ada data terbaru';
      resultColor = Colors.grey;
    }

    setState(() {});
  }

  String formatDate(String dateString) {
    final parts = dateString.split('-');
    final date =
        DateTime(int.parse(parts[2]), int.parse(parts[1]), int.parse(parts[0]));
    return DateFormat('dd MMMM yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 20),
              CarouselDemo(),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/cekpertumbuhan.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(
                                10), // Tambahkan border radius jika diinginkan
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.5), // Warna bayangan
                                offset: Offset(0,
                                    4), // Offset bayangan (horizontal, vertical)
                                blurRadius: 8, // Radius blur bayangan
                              ),
                            ],
                          ),
                          child: InkWell(
                            onTap: () async {
                              await Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AppBarInputdata()),
                              );
                              // Setelah kembali dari halaman InputData, muat ulang hasil terbaru
                              loadLatestResult();
                            },
                            splashColor: Colors.blue.withOpacity(
                                0.5), // Warna efek splash saat diklik
                            highlightColor: Colors.blue.withOpacity(
                                0.1), // Warna efek highlight saat ditekan,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Cek Pertumbuhan")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/inputdata.jpeg'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(
                                10), // Tambahkan border radius jika diinginkan
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.5), // Warna bayangan
                                offset: Offset(0,
                                    4), // Offset bayangan (horizontal, vertical)
                                blurRadius: 8, // Radius blur bayangan
                              ),
                            ],
                          ),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HistoryDetailPage()),
                              );
                            },
                            splashColor: Colors.blue.withOpacity(
                                0.5), // Warna efek splash saat diklik
                            highlightColor: Colors.blue.withOpacity(
                                0.1), // Warna efek highlight saat ditekan,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Perkembangan Anak")
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: resultMessage == 'Tidak ada data terbaru'
                    ? Text(resultMessage)
                    : Card(
                        color: resultColor,
                        margin:
                            EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                        child: ListTile(
                          contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Tanggal:',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                  Text(
                                    '${formatDate(date)}',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 75,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    padding: EdgeInsets.all(4),
                                    child: Column(
                                      children: [
                                        Image.asset(
                                          "assets/lakicewe.png",
                                          height: 40,
                                        ),
                                        Text(
                                          '$gender',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 75,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              "assets/bayii.png",
                                              height: 20,
                                            ),
                                            Text(
                                              "Umur",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          '$age bln', // Menampilkan umur dengan label
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 75,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    padding: EdgeInsets.all(4),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              "assets/penggaris.png",
                                              height: 20,
                                            ),
                                            Text(
                                              "Tinggi",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '$height cm', // Menampilkan tinggi badan dengan label
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: EdgeInsets.all(4),
                                  child: Text(
                                    '$resultMessage',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
            ],
          ),
          Positioned(bottom: 20, left: 0, right: 0, child: BottomBar()),
        ],
      ),
    );
  }
}
