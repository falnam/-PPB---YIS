import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WisataPage(),
    );
  }
}

class WisataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rekomendasi Wisata'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Nama Tempat Wisata
            Text(
              'Wisata Pemandian Air Panas Guci',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            // Gambar dari Internet
            Image.network(
              'http://setda.tegalkab.go.id/wp-content/uploads/2024/02/GF.jpeg',
              height: 250,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            // Deskripsi Tempat Wisata
            Text(
              'Guci adalah salah satu destinasi wisata alam yang terkenal di Kabupaten Tegal, Jawa Tengah. Tempat ini terletak di lereng Gunung Slamet pada ketinggian sekitar 1.050 meter di atas permukaan laut, sehingga menawarkan udara yang sejuk dan pemandangan pegunungan yang indah.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            // Tombol Kunjungi Tempat
            ElevatedButton(
              onPressed: () {
                // Aksi saat tombol diklik
              },
              child: Text('Kunjungi Tempat'),
            ),
          ],
        ),
      ),
    );
  }
}
