// 1. Tugas Percabangan (Branching )
// Soal:
// Buatlah sebuah fungsi dalam Dart yang menerima sebuah nilai dari user, lalu melakukan 
// percabangan untuk memberikan output berdasarkan kondisi berikut:
// Deskripsi :
// a. Jika nilai lebih besar dari 70, program harus mereturn "Nilai A".
// b. Jika nilai lebih besar dari 40 tetapi kurang atau sama dengan 70, program harus 
// mereturn "Nilai B".
// c. Jika nilai lebih besar dari 0 tetapi kurang atau sama dengan 40, program harus 
// mereturn "Nilai C".
// d. Jika nilai tidak memenuhi semua kondisi di atas, program harus mereturn teks 
// kosong.
// Sampel Input: 80
// Sampel Output: 80 merupakan Nilai A
// Sampel Input: 5
// Sampel Output: 50 merupakan Nilai 

import 'dart:io';

String cekNilai(int nilai) {
  if (nilai > 70) {
    return "Nilai A";
  } else if (nilai > 40 && nilai <= 70) {
    return "Nilai B";
  } else if (nilai > 0 && nilai <= 40) {
    return "Nilai C";
  } else {
    return "";
  }
}

void main() {
  stdout.write('Masukkan nilai: ');
  int nilai = int.parse(stdin.readLineSync()!);
  String hasil = cekNilai(nilai);
  if (hasil.isNotEmpty) {
    print('$nilai merupakan $hasil');
  } else {
    print('Nilai tidak valid');
  }
}


// 2. Tugas Looping (Perulangan)
// Soal:
// Buatlah sebuah program dalam Dart yang menampilkan piramida bintang dengan 
// menggunakan for loop. Panjang piramida ditentukan oleh input dari user.

import 'dart:io';

void cetakPiramida(int tinggi) {
  for (int i = 1; i <= tinggi; i++) {
    // Menampilkan spasi
    for (int j = 1; j <= tinggi - i; j++) {
      stdout.write(' ');
    }
    // Menampilkan bintang
    for (int k = 1; k <= 2 * i - 1; k++) {
      stdout.write('*');
    }
    print('');
  }
}

void main() {
  stdout.write('Masukkan tinggi piramida: ');
  int tinggi = int.parse(stdin.readLineSync()!);
  cetakPiramida(tinggi);
}


// 3. Tugas Function
// Soal:
// Buatlah program Dart yang meminta input berupa sebuah bilangan bulat dari user, 
// kemudian program akan mengecek apakah bilangan tersebut merupakan bilangan 
// prima atau bukan.
// Sampel Input: 23
// Sampel Output: bilangan prima
// Sampel Input: 12
// Sampel Output: bukan bilangan prima

import 'dart:io';

bool cekPrima(int bilangan) {
  if (bilangan < 2) {
    return false;
  }
  for (int i = 2; i <= bilangan ~/ 2; i++) {
    if (bilangan % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  stdout.write('Masukkan bilangan: ');
  int bilangan = int.parse(stdin.readLineSync()!);
  if (cekPrima(bilangan)) {
    print('$bilangan adalah bilangan prima');
  } else {
    print('$bilangan bukan bilangan prima');
  }
}

