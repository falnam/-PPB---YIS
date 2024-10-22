# Rekomendasi Wisata Banyumas

## Deskripsi Program

Program ini merupakan aplikasi **Flutter** sederhana yang menampilkan daftar rekomendasi tempat wisata di Kabupaten Banyumas, Jawa Tengah. Aplikasi menggunakan **CustomScrollView** yang dilengkapi dengan **SliverAppBar** dan **SliverList** untuk membuat antarmuka pengguna yang dinamis dan interaktif. 

### Fitur Utama:
1. **SliverAppBar**: App bar yang fleksibel dan dapat di-scroll, dengan gambar latar belakang yang menggambarkan suasana wisata Banyumas.
2. **SliverList**: Menampilkan daftar tempat wisata yang berisi:
   - **Nama Tempat Wisata**
   - **Deskripsi singkat tempat wisata**
   - **Gambar tempat wisata**
3. **Tombol Interaktif**: Setiap tempat wisata memiliki tombol "Kunjungi Tempat", yang ketika diklik, menampilkan snackbar notifikasi untuk mengunjungi tempat tersebut.

### Teknologi yang Digunakan:
- **Flutter**: Framework untuk membangun aplikasi mobile.
- **CustomScrollView**: Digunakan untuk membuat antarmuka yang dapat digulir dengan berbagai jenis elemen.
- **SliverAppBar**: App bar dengan gambar latar yang dapat di-scroll.
- **SliverList**: Digunakan untuk menampilkan daftar tempat wisata dalam bentuk kartu.
- **Material Design**: Menyediakan tampilan dan widget interaktif yang responsif.

### Struktur Data:
Aplikasi menyimpan data wisata dalam bentuk daftar objek **Wisata**, yang berisi tiga atribut utama:
- **Nama Wisata**
- **Deskripsi Wisata**
- **URL Gambar** 

### Penggunaan:
Saat pengguna membuka aplikasi, mereka dapat melihat berbagai tempat wisata di Banyumas yang ditampilkan dengan gambar, deskripsi, dan tombol interaksi. Antarmuka mendukung scrolling, sehingga pengguna dapat melihat seluruh daftar tempat wisata yang ada.

