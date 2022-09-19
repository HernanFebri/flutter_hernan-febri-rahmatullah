# (14)  Flutter Command Line Interface(CLI) and Flutter Package Management
## Data Diri

Nomor Urut : 1_010FLC_34
Nama : Hernan Febri Rahmatullah

## Summary
#### 1. Pengertian Flutter CLI
        Alat yang digunakan berinteraksi dengan Flutter SDK
        Perintah dijalankan dalam terminal contohnya :
        a.Flutter Doctor
            Perintah untuk menampilkan informasi software yang dibutuhkan flutter
        b.Flutter Create
            Perintah untuk membuat project aplikasi flutter baru di directory tertentu
        c.Flutter Run
            Perintah untuk menjalankan project aplikasi di device yang tersedia
        d.Flutter Emulator
            Perintah untuk menampilkan daftar emulator yang terinstall dan menampilkan option untuk membuka emulator atau membuat emulator baru
        e.Flutter Channel
            Perintah untuk menampilkan daftar flutter channel yang tersedia dan menunjukan channel yang digunakan saat ini
        f.Flutter Pub
            Perintah untuk menambahkan package ke dependencies yang ada di pubspec.yaml dan untuk mendownload semua package atau dependencies yang ada di pubspec.yaml
        g.Flutter Build
            Perintah untuk memproduksi sebuah file aplikasi untuk keperluan deploy atau publush ke AppStore,PlayStore,dll
        h.Flutter Clean
            Perintah untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi diemulator
            Perintah ini akan memperkecil ukuran project tersebut

#### 2. Package Management
        Flutter mendukung sharing package,package dibuat developers lain,mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau form scratch, dan mendapatkan package diwebsite pub.dev
#### 3. Cara menambahkan Packages
        a. Cari package di pub.dev
        b. Copy baris dependencies yang ada di bagian installing
        c. Buka pubspec.yaml
        d. Paste barisnya dibawah dependencies pubspec.yaml
        e. Run flutter pub get diterminal
        f. Import package di file dart agar bisa digunakan
        g. Stop atau restart aplikasi jika dibutuhkan