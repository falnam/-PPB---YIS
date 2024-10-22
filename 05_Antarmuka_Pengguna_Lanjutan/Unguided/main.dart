import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata Banyumas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WisataPage(),
    );
  }
}

// Data Wisata
class Wisata {
  final String nama;
  final String deskripsi;
  final String imageUrl;

  Wisata({
    required this.nama,
    required this.deskripsi,
    required this.imageUrl,
  });
}

// Halaman Utama
class WisataPage extends StatelessWidget {
  final List<Wisata> wisataList = [
    Wisata(
      nama: 'Curug Gomblang',
      deskripsi:
          'Curug Gomblang merupakan salah satu curug yang terdapat di wilayah Kabupaten Banyumas. Wisata alam Curug Gomblang dapat digunakan untuk mengisi liburan untuk merehatkan diri dari aktivitas keseharian.',
      imageUrl:
          'https://asset.kompas.com/crops/JU1-auJOFFWK0Lc7qytSGqHtaAU=/0x199:564x575/750x500/data/photo/2022/06/02/629808c5b746d.jpg',
    ),
    Wisata(
      nama: 'Caub Baturaden',
      deskripsi:
          'Dengan latar belakang pemandangan gunung Slamet yang gagah serta panorama Kota Purwokerto, Kabupaten Banyumas, dan sekitarnya, Caub Baturaden menjadi pilihan yang sempurna bagi para pencinta alam dan petualang.',
      imageUrl:
          'https://radarbanyumas.disway.id/upload/f90e17dc227e3ba1d816a2e3676a52e7.jpg',
    ),
    Wisata(
      nama: 'Desa Wisata Melung',
      deskripsi:
          'Desa Wisata Melung memiliki keunikan yang sangat berbeda dengan Desa Wisata lainya, keunikan tersebut diantarnya adalah warga masyarakat masih tetap memegang teguh adat istiadat jawa kuno, tidak hanya itu Desa Wisata Melung juga memiliki keunggulan yang juga tidak kalah dengan desa wisata lainya.',
      imageUrl:
          'https://assets.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2023/08/01/pemandangan-di-Pagubugan-Desa-Wisata-Melung-Banyumas-4122245336.jpg',
    ),
    Wisata(
      nama: 'Kota Lama Banyumas',
      deskripsi:
          'Kota Lama Banyumas memiliki sejumlah cagar budaya yang memikat, termasuk gedung balai kota, sumur tua, museum wayang, Masjid Agung Nur Sulaiman hingga Kelenteng Boen Tek Bio. Wisatawan dapat merasakan atmosfer bersejarah serta menikmati kemewahan arsitektur zaman dulu yang menawan.',
      imageUrl:
          'https://cdn.rri.co.id/berita/47/images/1708562572095-f/q7azb3oqukpe80y.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Wisata Banyumas'),
              background: Image.network(
                'https://cdn.rri.co.id/berita/47/images/1708562572095-f/q7azb3oqukpe80y.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final wisata = wisataList[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          wisata.nama,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Image.network(
                          wisata.imageUrl,
                          height: 180,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 10),
                        Text(
                          wisata.deskripsi,
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: ElevatedButton(
                            onPressed: () {
                              // Aksi ketika tombol diklik
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Kunjungi ${wisata.nama}'),
                              ));
                            },
                            child: Text('Kunjungi Tempat'),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: wisataList.length,
            ),
          ),
        ],
      ),
    );
  }
}
