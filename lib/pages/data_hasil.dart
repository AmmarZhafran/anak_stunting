import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HistoryDetailPage extends StatefulWidget {
  @override
  _HistoryDetailPageState createState() => _HistoryDetailPageState();
}

class _HistoryDetailPageState extends State<HistoryDetailPage> {
  List<String> history = [];

  @override
  void initState() {
    super.initState();
    loadHistory();
  }

  Future<void> loadHistory() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      history = prefs.getStringList('history') ?? [];
    });
  }

  Future<void> deleteItem(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> currentHistory = prefs.getStringList('history') ?? [];
    currentHistory.removeAt(index);
    await prefs.setStringList('history', currentHistory);
    setState(() {
      history = currentHistory;
    });
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
      appBar: AppBar(
        title: Text('Detail Riwayat Pengecekan'),
      ),
      body: history.isEmpty
          ? Center(child: Text('Tidak ada data riwayat'))
          : ListView.builder(
              itemCount: history.length,
              itemBuilder: (context, index) {
                // Membalikkan urutan data sehingga data terbaru tampil di atas
                final reversedIndex = history.length - 1 - index;
                final entry = history[reversedIndex].split(';');
                final date = entry[0];
                final gender = entry[1];
                final age = entry[2];
                final height = entry[3];
                final resultMessage = entry[4];
                final resultColor = resultMessage == 'Tinggi Badan Sesuai Usia'
                    ? Color(0xFFB5E4FF)
                    : resultMessage == 'Stunting'
                        ? Color.fromARGB(255, 255, 129, 120)
                        : const Color.fromARGB(255, 87, 29, 97);

                return Card(
                  color: resultColor,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16.0),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tanggal: ${formatDate(date)}',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Jenis Kelamin: $gender',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Umur: $age bulan', // Menampilkan umur dengan label
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Tinggi Badan: $height cm', // Menampilkan tinggi badan dengan label
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '$resultMessage',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(Icons.delete,
                          color: Color.fromARGB(255, 0, 0, 0)),
                      onPressed: () {
                        deleteItem(reversedIndex);
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}
