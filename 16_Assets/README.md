# (16)  Assets
## Data Diri

Nomor Urut : 1_010FLC_34
Nama : Hernan Febri Rahmatullah

## Summary
#### 1. Pengertian Assets
Assets adalah file yang dibundel dan di-deploy dengan aplikasi, dan dapat diakses saat runtime. Jenis assets yang umum mencakup data statis (misalnya, file JSON), file konfigurasi, ikon, dan gambar (JPEG, WebP, GIF, WebP/GIF animasi, PNG, BMP, dan WBMP).
#### 2. Image
Gambar dari asset lokal yaitu file gambar yang ditambahkan kedalam folder aplikasi yang nantinya digunakan untuk menampilkan gambar tanpa koneksi internet. Tahapan menampilkan gambar lokal yaitu :

1. buat folder baru assets/images
posisi folder sejajar dengan pubspec.yaml. Untuk penamaan folder bisa apa aja namun sebaiknya gunakan nama yang umum pada istilah pemrograman. Hal tersebut berguna untuk membantu orang lain apabila bekerja sebagai tim.
2. Masukan gambar ke dalam folder tersebut
3. Registrasikan image / gambar yang tadi kita masukan dengan cara edit file pubspec.yaml.

        flutter:   
            assets:     
            - assets/images/paddy-field.jpg

Jika memiliki beberapa gambar yang ingin di import maka kita dapat menggunakan cara yang lebih sederhana yaitu hanya menggunakan nama direktori saja.

        flutter:   
            assets:     
            - assets/images/
    
#### 3. Font
1. Penggunaan font dengan style tertentu akan menjadikan keunikan pada aplikasi
2. Penentuan font yang mau dipakai biasanya oleh UI designer
3. Penerapan font menggunakan custom font atau dari package