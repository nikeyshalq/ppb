import 'package:flutter/material.dart';

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  TeksUtama({required this.teks1, required this.teks2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Agar teks diatur ke kiri
      children: [
        Text(
          teks1,
          textDirection: TextDirection.ltr,
        ),
        Text(
          teks2,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        SizedBox(height: 20), // Menambahkan jarak antara elemen
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Halo Dunia',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Halo Dunia'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              TeksUtama(
                teks1: 'Halo',
                teks2: 'Dunia',
              ),
              TeksUtama(
                teks1: 'Apa kabar',
                teks2: 'Budi',
              ),
              TeksUtama(
                teks1: 'Apa kabar',
                teks2: 'Andi',
              ),
              TeksUtama(
                teks1: 'Apa kabar',
                teks2: 'Santi',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Refresh',
        child: Icon(Icons.refresh),
        onPressed: () {
          // Tambahkan fungsi yang sesuai atau hapus `onPressed` jika tidak digunakan
          print('Tombol refresh ditekan');
        },
      ),
    ),
  ));
}
