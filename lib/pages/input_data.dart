// import 'package:anak_stunting/pages/data_hasil.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class HeightChecker extends StatefulWidget {
//   @override
//   _HeightCheckerState createState() => _HeightCheckerState();
// }

// class _HeightCheckerState extends State<HeightChecker> {
//   final TextEditingController ageController = TextEditingController();
//   final TextEditingController heightController = TextEditingController();
//   String selectedGender = 'Laki-laki';
//   String resultMessage = '';
//   Color resultColor = Colors.white;

//   Map<String, Map<int, Map<String, double>>> heightData = {
//     'Laki-laki': {},
//     'Wanita': {},
//   };

//   @override
//   void initState() {
//     super.initState();
//     loadData();
//   }

//   Future<void> loadData() async {
//     heightData['Laki-laki'] = {
//       0: {'a': 48.0, 'b': 46.1, 'c': 44.2},
//       1: {'a': 52.8, 'b': 50.8, 'c': 48.9},
//       2: {'a': 56.4, 'b': 54.4, 'c': 52.4},
//       3: {'a': 59.4, 'b': 57.3, 'c': 55.3},
//       4: {'a': 61.8, 'b': 59.7, 'c': 57.6},
//       5: {'a': 63.8, 'b': 61.7, 'c': 59.6},
//       6: {'a': 65.5, 'b': 63.3, 'c': 61.2},
//       7: {'a': 67.0, 'b': 64.8, 'c': 62.7},
//       8: {'a': 68.4, 'b': 66.2, 'c': 64.0},
//       9: {'a': 69.7, 'b': 67.5, 'c': 65.2},
//       10: {'a': 71.0, 'b': 68.7, 'c': 66.4},
//       11: {'a': 72.2, 'b': 69.9, 'c': 67.6},
//       12: {'a': 73.4, 'b': 71.0, 'c': 68.6},
//       13: {'a': 74.5, 'b': 72.1, 'c': 69.6},
//       14: {'a': 75.6, 'b': 73.1, 'c': 70.6},
//       15: {'a': 76.6, 'b': 74.1, 'c': 71.6},
//       16: {'a': 77.6, 'b': 75.0, 'c': 72.5},
//       17: {'a': 78.6, 'b': 76.0, 'c': 73.3},
//       18: {'a': 79.6, 'b': 76.9, 'c': 74.2},
//       19: {'a': 80.5, 'b': 77.7, 'c': 75.0},
//       20: {'a': 81.4, 'b': 78.6, 'c': 75.8},
//       21: {'a': 82.3, 'b': 79.4, 'c': 76.5},
//       22: {'a': 83.1, 'b': 80.2, 'c': 77.2},
//       23: {'a': 83.9, 'b': 81.0, 'c': 78.0},
//       24: {'a': 84.8, 'b': 81.7, 'c': 78.7},
//       25: {'a': 84.9, 'b': 81.7, 'c': 78.6},
//       26: {'a': 85.6, 'b': 82.5, 'c': 79.3},
//       27: {'a': 86.4, 'b': 83.1, 'c': 79.9},
//       28: {'a': 87.1, 'b': 83.8, 'c': 80.5},
//       29: {'a': 87.8, 'b': 84.5, 'c': 81.1},
//       30: {'a': 88.5, 'b': 85.1, 'c': 81.7},
//       31: {'a': 89.2, 'b': 85.7, 'c': 82.3},
//       32: {'a': 89.9, 'b': 86.4, 'c': 82.8},
//       33: {'a': 90.5, 'b': 86.9, 'c': 83.4},
//       34: {'a': 91.1, 'b': 87.5, 'c': 83.9},
//       35: {'a': 91.8, 'b': 88.1, 'c': 84.4},
//       36: {'a': 92.4, 'b': 88.7, 'c': 85.0},
//       37: {'a': 93.0, 'b': 89.2, 'c': 85.5},
//       38: {'a': 93.6, 'b': 89.8, 'c': 86.0},
//       39: {'a': 94.2, 'b': 90.3, 'c': 86.5},
//       40: {'a': 94.7, 'b': 90.9, 'c': 87.0},
//       41: {'a': 95.3, 'b': 91.4, 'c': 87.5},
//       42: {'a': 95.9, 'b': 91.9, 'c': 88.0},
//       43: {'a': 96.4, 'b': 92.4, 'c': 88.4},
//       44: {'a': 97.0, 'b': 93.0, 'c': 88.9},
//       45: {'a': 97.5, 'b': 93.5, 'c': 89.4},
//       46: {'a': 98.1, 'b': 94.0, 'c': 89.8},
//       47: {'a': 98.6, 'b': 94.4, 'c': 90.3},
//       48: {'a': 99.1, 'b': 94.9, 'c': 90.7},
//       49: {'a': 99.7, 'b': 95.4, 'c': 91.2},
//       50: {'a': 100.2, 'b': 95.9, 'c': 91.6},
//       51: {'a': 100.7, 'b': 96.4, 'c': 92.1},
//       52: {'a': 101.2, 'b': 96.9, 'c': 92.5},
//       53: {'a': 101.7, 'b': 97.4, 'c': 93.0},
//       54: {'a': 102.3, 'b': 97.8, 'c': 93.4},
//       55: {'a': 102.8, 'b': 98.3, 'c': 93.9},
//       56: {'a': 103.3, 'b': 98.8, 'c': 94.3},
//       57: {'a': 103.8, 'b': 99.3, 'c': 94.7},
//       58: {'a': 104.3, 'b': 99.7, 'c': 95.2},
//       59: {'a': 104.8, 'b': 100.2, 'c': 95.6},
//       60: {'a': 105.3, 'b': 100.7, 'c': 96.1},
//     };
//     heightData['Wanita'] = {
//       0: {'a': 47.3, 'b': 45.4, 'c': 43.6},
//       1: {'a': 51.7, 'b': 49.8, 'c': 47.8},
//       2: {'a': 55.0, 'b': 53.0, 'c': 51.0},
//       3: {'a': 57.7, 'b': 55.6, 'c': 53.5},
//       4: {'a': 59.9, 'b': 57.8, 'c': 55.6},
//       5: {'a': 61.8, 'b': 59.6, 'c': 57.4},
//       6: {'a': 63.5, 'b': 61.2, 'c': 58.9},
//       7: {'a': 65.0, 'b': 62.7, 'c': 60.3},
//       8: {'a': 66.4, 'b': 64.0, 'c': 61.7},
//       9: {'a': 67.7, 'b': 65.3, 'c': 62.9},
//       10: {'a': 69.0, 'b': 66.5, 'c': 64.1},
//       11: {'a': 70.2, 'b': 67.7, 'c': 65.3},
//       12: {'a': 71.3, 'b': 68.9, 'c': 66.4},
//       13: {'a': 72.5, 'b': 70.0, 'c': 67.5},
//       14: {'a': 73.6, 'b': 71.1, 'c': 68.6},
//       15: {'a': 74.7, 'b': 72.1, 'c': 69.6},
//       16: {'a': 75.7, 'b': 73.1, 'c': 70.6},
//       17: {'a': 76.7, 'b': 74.1, 'c': 71.6},
//       18: {'a': 77.7, 'b': 75.0, 'c': 72.5},
//       19: {'a': 78.6, 'b': 76.0, 'c': 73.4},
//       20: {'a': 79.6, 'b': 76.9, 'c': 74.2},
//       21: {'a': 80.5, 'b': 77.7, 'c': 75.1},
//       22: {'a': 81.3, 'b': 78.6, 'c': 75.9},
//       23: {'a': 82.2, 'b': 79.4, 'c': 76.7},
//       24: {'a': 83.0, 'b': 80.2, 'c': 77.4},
//       25: {'a': 83.3, 'b': 80.5, 'c': 77.8},
//       26: {'a': 84.1, 'b': 81.2, 'c': 78.5},
//       27: {'a': 84.9, 'b': 81.9, 'c': 79.2},
//       28: {'a': 85.6, 'b': 82.6, 'c': 79.8},
//       29: {'a': 86.3, 'b': 83.3, 'c': 80.4},
//       30: {'a': 87.0, 'b': 83.9, 'c': 81.0},
//       31: {'a': 87.7, 'b': 84.6, 'c': 81.6},
//       32: {'a': 88.4, 'b': 85.2, 'c': 82.2},
//       33: {'a': 89.0, 'b': 85.8, 'c': 82.7},
//       34: {'a': 89.6, 'b': 86.4, 'c': 83.3},
//       35: {'a': 90.3, 'b': 87.0, 'c': 83.8},
//       36: {'a': 90.9, 'b': 87.6, 'c': 84.3},
//       37: {'a': 91.5, 'b': 88.2, 'c': 84.8},
//       38: {'a': 92.1, 'b': 88.7, 'c': 85.3},
//       39: {'a': 92.7, 'b': 89.3, 'c': 85.8},
//       40: {'a': 93.2, 'b': 89.8, 'c': 86.3},
//       41: {'a': 93.8, 'b': 90.4, 'c': 86.8},
//       42: {'a': 94.4, 'b': 90.9, 'c': 87.3},
//       43: {'a': 94.9, 'b': 91.4, 'c': 87.7},
//       44: {'a': 95.5, 'b': 91.9, 'c': 88.2},
//       45: {'a': 96.0, 'b': 92.4, 'c': 88.6},
//       46: {'a': 96.6, 'b': 92.9, 'c': 89.1},
//       47: {'a': 97.1, 'b': 93.4, 'c': 89.5},
//       48: {'a': 97.6, 'b': 93.9, 'c': 89.9},
//       49: {'a': 98.1, 'b': 94.3, 'c': 90.4},
//       50: {'a': 98.7, 'b': 94.8, 'c': 90.8},
//       51: {'a': 99.2, 'b': 95.3, 'c': 91.2},
//       52: {'a': 99.7, 'b': 95.7, 'c': 91.6},
//       53: {'a': 100.2, 'b': 96.2, 'c': 92.0},
//       54: {'a': 100.7, 'b': 96.6, 'c': 92.4},
//       55: {'a': 101.2, 'b': 97.1, 'c': 92.8},
//       56: {'a': 101.7, 'b': 97.5, 'c': 93.2},
//       57: {'a': 102.2, 'b': 98.0, 'c': 93.6},
//       58: {'a': 102.7, 'b': 98.4, 'c': 94.0},
//       59: {'a': 103.2, 'b': 98.9, 'c': 94.4},
//       60: {'a': 103.7, 'b': 99.3, 'c': 94.8},
//     };
//   }

//   void checkHeight() async {
//     int age = int.tryParse(ageController.text) ?? 0;
//     double height = double.tryParse(heightController.text) ?? 0.0;

//     if (heightData[selectedGender]!.containsKey(age)) {
//       final data = heightData[selectedGender]![age]!;
//       if (height > data['b']!) {
//         setResult(
//           'Tinggi Badan Sesuai Usia',
//           Color.fromARGB(255, 0, 162, 255),
//         );
//       } else if (height <= data['c']!) {
//         setResult(
//             'Stunting Tahap Bahaya', const Color.fromARGB(255, 87, 29, 97));
//       } else if (height <= data['b']!) {
//         setResult('Stunting', Color.fromARGB(255, 255, 129, 120));
//       }
//     } else {
//       setResult('Umur tidak valid atau data tidak tersedia', Colors.grey);
//     }

//     // Save result to SharedPreferences
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     DateTime now = DateTime.now();
//     String formattedDate =
//         '${now.day}-${now.month}-${now.year}'; // Format tanggal
//     String entry = '$formattedDate;$selectedGender;$age;$height;$resultMessage';
//     List<String> currentHistory = prefs.getStringList('history') ?? [];
//     currentHistory.add(entry);
//     await prefs.setStringList('history', currentHistory);
//   }

//   void setResult(String message, Color color) {
//     setState(() {
//       resultMessage = message;
//       resultColor = color;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color(0xFFB5E4FF),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Image.asset(
//               "assets/cekbayi.png",
//               width: 250.0,
//               height: 250.0,
//             ),
//             DropdownButton<String>(
//               value: selectedGender,
//               onChanged: (String? newValue) {
//                 setState(() {
//                   selectedGender = newValue!;
//                 });
//               },
//               items: <String>['Laki-laki', 'Wanita']
//                   .map<DropdownMenuItem<String>>((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),
//             ),
//             TextField(
//               controller: ageController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 labelText: 'Umur (bulan)',
//               ),
//             ),
//             TextField(
//               controller: heightController,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 labelText: 'Tinggi Badan (cm)',
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: checkHeight,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color.fromARGB(
//                     255, 46, 255, 63), // Warna latar belakang tombol
//               ),
//               child: Text(
//                 'Cek Tinggi Badan',
//                 style: TextStyle(
//                   color: Colors.white, // Warna teks
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               decoration: BoxDecoration(
//                   color: resultColor,
//                   borderRadius: BorderRadius.all(Radius.circular(90))),
//               padding: EdgeInsets.all(16.0),
//               child: Text(
//                 resultMessage,
//                 style: TextStyle(color: Colors.white, fontSize: 24),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HeightChecker extends StatefulWidget {
  @override
  _HeightCheckerState createState() => _HeightCheckerState();
}

class _HeightCheckerState extends State<HeightChecker> {
  final TextEditingController ageController = TextEditingController();
  final TextEditingController heightController = TextEditingController();
  String selectedGender = 'Laki-laki';
  String resultMessage = '';
  Color resultColor = Colors.white;

  Map<String, Map<int, Map<String, double>>> heightData = {
    'Laki-laki': {},
    'Wanita': {},
  };

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    heightData['Laki-laki'] = {
      0: {'a': 48.0, 'b': 46.1, 'c': 44.2},
      1: {'a': 52.8, 'b': 50.8, 'c': 48.9},
      2: {'a': 56.4, 'b': 54.4, 'c': 52.4},
      3: {'a': 59.4, 'b': 57.3, 'c': 55.3},
      4: {'a': 61.8, 'b': 59.7, 'c': 57.6},
      5: {'a': 63.8, 'b': 61.7, 'c': 59.6},
      6: {'a': 65.5, 'b': 63.3, 'c': 61.2},
      7: {'a': 67.0, 'b': 64.8, 'c': 62.7},
      8: {'a': 68.4, 'b': 66.2, 'c': 64.0},
      9: {'a': 69.7, 'b': 67.5, 'c': 65.2},
      10: {'a': 71.0, 'b': 68.7, 'c': 66.4},
      11: {'a': 72.2, 'b': 69.9, 'c': 67.6},
      12: {'a': 73.4, 'b': 71.0, 'c': 68.6},
      13: {'a': 74.5, 'b': 72.1, 'c': 69.6},
      14: {'a': 75.6, 'b': 73.1, 'c': 70.6},
      15: {'a': 76.6, 'b': 74.1, 'c': 71.6},
      16: {'a': 77.6, 'b': 75.0, 'c': 72.5},
      17: {'a': 78.6, 'b': 76.0, 'c': 73.3},
      18: {'a': 79.6, 'b': 76.9, 'c': 74.2},
      19: {'a': 80.5, 'b': 77.7, 'c': 75.0},
      20: {'a': 81.4, 'b': 78.6, 'c': 75.8},
      21: {'a': 82.3, 'b': 79.4, 'c': 76.5},
      22: {'a': 83.1, 'b': 80.2, 'c': 77.2},
      23: {'a': 83.9, 'b': 81.0, 'c': 78.0},
      24: {'a': 84.8, 'b': 81.7, 'c': 78.7},
      25: {'a': 84.9, 'b': 81.7, 'c': 78.6},
      26: {'a': 85.6, 'b': 82.5, 'c': 79.3},
      27: {'a': 86.4, 'b': 83.1, 'c': 79.9},
      28: {'a': 87.1, 'b': 83.8, 'c': 80.5},
      29: {'a': 87.8, 'b': 84.5, 'c': 81.1},
      30: {'a': 88.5, 'b': 85.1, 'c': 81.7},
      31: {'a': 89.2, 'b': 85.7, 'c': 82.3},
      32: {'a': 89.9, 'b': 86.4, 'c': 82.8},
      33: {'a': 90.5, 'b': 86.9, 'c': 83.4},
      34: {'a': 91.1, 'b': 87.5, 'c': 83.9},
      35: {'a': 91.8, 'b': 88.1, 'c': 84.4},
      36: {'a': 92.4, 'b': 88.7, 'c': 85.0},
      37: {'a': 93.0, 'b': 89.2, 'c': 85.5},
      38: {'a': 93.6, 'b': 89.8, 'c': 86.0},
      39: {'a': 94.2, 'b': 90.3, 'c': 86.5},
      40: {'a': 94.7, 'b': 90.9, 'c': 87.0},
      41: {'a': 95.3, 'b': 91.4, 'c': 87.5},
      42: {'a': 95.9, 'b': 91.9, 'c': 88.0},
      43: {'a': 96.4, 'b': 92.4, 'c': 88.4},
      44: {'a': 97.0, 'b': 93.0, 'c': 88.9},
      45: {'a': 97.5, 'b': 93.5, 'c': 89.4},
      46: {'a': 98.1, 'b': 94.0, 'c': 89.8},
      47: {'a': 98.6, 'b': 94.4, 'c': 90.3},
      48: {'a': 99.1, 'b': 94.9, 'c': 90.7},
      49: {'a': 99.7, 'b': 95.4, 'c': 91.2},
      50: {'a': 100.2, 'b': 95.9, 'c': 91.6},
      51: {'a': 100.7, 'b': 96.4, 'c': 92.1},
      52: {'a': 101.2, 'b': 96.9, 'c': 92.5},
      53: {'a': 101.7, 'b': 97.4, 'c': 93.0},
      54: {'a': 102.3, 'b': 97.8, 'c': 93.4},
      55: {'a': 102.8, 'b': 98.3, 'c': 93.9},
      56: {'a': 103.3, 'b': 98.8, 'c': 94.3},
      57: {'a': 103.8, 'b': 99.3, 'c': 94.7},
      58: {'a': 104.3, 'b': 99.7, 'c': 95.2},
      59: {'a': 104.8, 'b': 100.2, 'c': 95.6},
      60: {'a': 105.3, 'b': 100.7, 'c': 96.1},
    };
    heightData['Wanita'] = {
      0: {'a': 47.3, 'b': 45.4, 'c': 43.6},
      1: {'a': 51.7, 'b': 49.8, 'c': 47.8},
      2: {'a': 55.0, 'b': 53.0, 'c': 51.0},
      3: {'a': 57.7, 'b': 55.6, 'c': 53.5},
      4: {'a': 59.9, 'b': 57.8, 'c': 55.6},
      5: {'a': 61.8, 'b': 59.6, 'c': 57.4},
      6: {'a': 63.5, 'b': 61.2, 'c': 58.9},
      7: {'a': 65.0, 'b': 62.7, 'c': 60.3},
      8: {'a': 66.4, 'b': 64.0, 'c': 61.7},
      9: {'a': 67.7, 'b': 65.3, 'c': 62.9},
      10: {'a': 69.0, 'b': 66.5, 'c': 64.1},
      11: {'a': 70.2, 'b': 67.7, 'c': 65.3},
      12: {'a': 71.3, 'b': 68.9, 'c': 66.4},
      13: {'a': 72.5, 'b': 70.0, 'c': 67.5},
      14: {'a': 73.6, 'b': 71.1, 'c': 68.6},
      15: {'a': 74.7, 'b': 72.1, 'c': 69.6},
      16: {'a': 75.7, 'b': 73.1, 'c': 70.6},
      17: {'a': 76.7, 'b': 74.1, 'c': 71.6},
      18: {'a': 77.7, 'b': 75.0, 'c': 72.5},
      19: {'a': 78.6, 'b': 76.0, 'c': 73.4},
      20: {'a': 79.6, 'b': 76.9, 'c': 74.2},
      21: {'a': 80.5, 'b': 77.7, 'c': 75.1},
      22: {'a': 81.3, 'b': 78.6, 'c': 75.9},
      23: {'a': 82.2, 'b': 79.4, 'c': 76.7},
      24: {'a': 83.0, 'b': 80.2, 'c': 77.4},
      25: {'a': 83.3, 'b': 80.5, 'c': 77.8},
      26: {'a': 84.1, 'b': 81.2, 'c': 78.5},
      27: {'a': 84.9, 'b': 81.9, 'c': 79.2},
      28: {'a': 85.6, 'b': 82.6, 'c': 79.8},
      29: {'a': 86.3, 'b': 83.3, 'c': 80.4},
      30: {'a': 87.0, 'b': 83.9, 'c': 81.0},
      31: {'a': 87.7, 'b': 84.6, 'c': 81.6},
      32: {'a': 88.4, 'b': 85.2, 'c': 82.2},
      33: {'a': 89.0, 'b': 85.8, 'c': 82.7},
      34: {'a': 89.6, 'b': 86.4, 'c': 83.3},
      35: {'a': 90.3, 'b': 87.0, 'c': 83.8},
      36: {'a': 90.9, 'b': 87.6, 'c': 84.3},
      37: {'a': 91.5, 'b': 88.2, 'c': 84.8},
      38: {'a': 92.1, 'b': 88.7, 'c': 85.3},
      39: {'a': 92.7, 'b': 89.3, 'c': 85.8},
      40: {'a': 93.2, 'b': 89.8, 'c': 86.3},
      41: {'a': 93.8, 'b': 90.4, 'c': 86.8},
      42: {'a': 94.4, 'b': 90.9, 'c': 87.3},
      43: {'a': 94.9, 'b': 91.4, 'c': 87.7},
      44: {'a': 95.5, 'b': 91.9, 'c': 88.2},
      45: {'a': 96.0, 'b': 92.4, 'c': 88.6},
      46: {'a': 96.6, 'b': 92.9, 'c': 89.1},
      47: {'a': 97.1, 'b': 93.4, 'c': 89.5},
      48: {'a': 97.6, 'b': 93.9, 'c': 89.9},
      49: {'a': 98.1, 'b': 94.3, 'c': 90.4},
      50: {'a': 98.7, 'b': 94.8, 'c': 90.8},
      51: {'a': 99.2, 'b': 95.3, 'c': 91.2},
      52: {'a': 99.7, 'b': 95.7, 'c': 91.6},
      53: {'a': 100.2, 'b': 96.2, 'c': 92.0},
      54: {'a': 100.7, 'b': 96.6, 'c': 92.4},
      55: {'a': 101.2, 'b': 97.1, 'c': 92.8},
      56: {'a': 101.7, 'b': 97.5, 'c': 93.2},
      57: {'a': 102.2, 'b': 98.0, 'c': 93.6},
      58: {'a': 102.7, 'b': 98.4, 'c': 94.0},
      59: {'a': 103.2, 'b': 98.9, 'c': 94.4},
      60: {'a': 103.7, 'b': 99.3, 'c': 94.8},
    };
  }

  void checkHeight() async {
    int age = int.tryParse(ageController.text) ?? 0;
    double height = double.tryParse(heightController.text) ?? 0.0;

    if (heightData[selectedGender]!.containsKey(age)) {
      final data = heightData[selectedGender]![age]!;
      if (height > data['b']!) {
        setResult(
          'Tinggi Badan Sesuai Usia',
          Color.fromARGB(255, 0, 162, 255),
        );
      } else if (height <= data['c']!) {
        setResult(
            'Stunting Tahap Bahaya', const Color.fromARGB(255, 87, 29, 97));
      } else if (height <= data['b']!) {
        setResult('Stunting', Color.fromARGB(255, 255, 129, 120));
      }
    } else {
      setResult('Umur tidak valid atau data tidak tersedia', Colors.grey);
    }

    // Save result to SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    DateTime now = DateTime.now();
    String formattedDate =
        '${now.day}-${now.month}-${now.year}'; // Format tanggal
    String entry = '$formattedDate;$selectedGender;$age;$height;$resultMessage';
    List<String> currentHistory = prefs.getStringList('history') ?? [];
    currentHistory.add(entry);
    await prefs.setStringList('history', currentHistory);

    // Tampilkan popup dengan hasil
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          contentPadding: EdgeInsets.all(16.0),
          backgroundColor: resultColor,
          content: Container(
            decoration: BoxDecoration(
              color: resultColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  resultMessage,
                  style: TextStyle(color: Colors.white, fontSize: 24),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16.0),
                if (resultColor == Color.fromARGB(255, 0, 162, 255))
                  Image.asset("assets/tangg.png"),
                if (resultColor == Color.fromARGB(255, 87, 29, 97))
                  Image.asset("assets/warning.png"),
                if (resultColor == Color.fromARGB(255, 255, 129, 120))
                  Image.asset("assets/warning.png"),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: Text("OK", style: TextStyle(color: Colors.white)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void setResult(String message, Color color) {
    setState(() {
      resultMessage = message;
      resultColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: Color(0xFFB5E4FF),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  "assets/cekbayi.png",
                  width: 250.0,
                  height: 250.0,
                ),
                Text("Catatan: "),
                Text("- Usia 0-24 bulan anak diukur dengan posisi telentang."),
                Text("- Usia 24-60 bulan anak diukur dengan posisi berdiri."),
                DropdownButton<String>(
                  value: selectedGender,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedGender = newValue!;
                    });
                  },
                  items: <String>['Laki-laki', 'Wanita']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                Text("Usia Anak (bulan)"),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white, // Warna latar belakang putih
                    border: Border.all(
                        color: Colors.grey), // Warna dan ketebalan garis
                    borderRadius:
                        BorderRadius.circular(10), // Sudut melengkung, opsional
                  ),
                  padding: EdgeInsets.all(4.0), // Padding di dalam Container
                  child: TextField(
                    controller: ageController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'masukan umur (bulan)',
                      border: InputBorder
                          .none, // Menghapus border default dari TextField
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("Tinggi/Panjang Badan (cm)"),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white, // Warna latar belakang putih
                    border: Border.all(
                        color: Colors.grey), // Warna dan ketebalan garis
                    borderRadius:
                        BorderRadius.circular(10), // Sudut melengkung, opsional
                  ),
                  padding: EdgeInsets.all(4.0), // Padding di dalam Container
                  child: TextField(
                    controller: heightController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'masukan tinggi/panjang badan (cm)',
                      border: InputBorder
                          .none, // Menghapus border default dari TextField
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: checkHeight,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(
                        255, 67, 46, 255), // Warna latar belakang tombol
                  ),
                  child: Text(
                    'Cek Tinggi Badan',
                    style: TextStyle(
                      color: Colors.white, // Warna teks
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
