# (18)  Form Picker
## Data Diri

Nomor Urut : 1_010FLC_34
Nama : Hernan Febri Rahmatullah

## Summary
###-- Basic Layout --
#### 1. Row dan Column Classes
Row dan Column adalah kelas yang berisi dan meletakkan widget. Row menata widgetnya secara horizontal, dan Column menata widgetnya secara vertikal.
#### 2. MainAxisAlignment Property
Property berperan untuk mengatur aligment pada main axis. Pada widget column, main axis berarti sumbu vertical. Karena widget ini memang memiliki peran untuk menyusun childnya secara vertical.

Terdapat beberapa value yang bisa dipakai pada property ini, seperti berikut:

- MainAxisAlignment.start, value ini akan membuat child tersusun dari bagian atas parent widget
- MainAxisAlignment.center, value ini akan membuat child tersusun dan berkumpul pada bagian tengah vertical dari parent widget
- MainAxisAlignment.end, value ini akan membuat child tersusun dan berkumpul pada bagian bawah parent widget
- MainAxisAlignment.spaceBetween, value ini akan memberikan space atau jarak yang sama di antara setiap widget. Tidak ada space dari child ke parent widget
- MainAxisAlignment.spaceAround, value ini akan memberikan space atau jarak yang sama di antara setiap widget dan setengah space untuk bagian atas dan bawah widget.
- MainAxisAlignment.spaceEvenly, value ini akan memberikan space atau jarak yang sama baik pada bagian atas, bawah, maupun di antara widget.
#### 3. MainAxisSize
Sesuai dengan penjelasan sebelumnya, main axis berarti sumbu vertical.

- MainAxisSize.min, akan membuat widget column memiliki ketinggian minimal.
- MainAxisSize.max, akan membuat widget column memiliki ketinggian maximal sesuai dengan parent widgetnya.
#### 4. CrossAxisAlignment
Jika main axis memiliki makna untuk sumbu vertical, cross axis berarti kebalikannya, yaitu sumbu horizontal. Terdapat beberapa value yang bisa digunakan untuk properti ini, seperti berikut:

- CrossAxisAlignment.start, value ini akan membuat child ditampilkan mulai dari sisi bagian kiri parent widget
- CrossAxisAlignment.end, value ini akan membuat child ditampilkan mulai dari sisi bagian kanan parent widget
- CrossAxisAlignment.center, value ini akan child berada pada bagian tengah horizontal dari parent widget
- CrossAxisAlignment.baseline, value ini akan menyesuaikan lebar yang dimiliki oleh child
- CrossAxisAlignment.stretch, value ini akan memaksa child memiliki lebar dari sisi kiri hingga sisi kanan widget
#### 5. Flexible Widget
Membungkus widget lain sehingga child dari flexible widget menjadi flexibble atau resizable.
Sangat berguna untuk membuat aplikasi yang responsif.
#### 6. Expanded Widget
Membungkus widget lain sehingga ukuran dari child Expanded widget akan dipaksa untuk memenuhi ruang yang tersedia.
Sangat berguna untuk membuat aplikasi yang responsif.

### -- Advance Form Input --
#### 1. Date Picker
Widget dimana user bisa memasukan tanggal seperti tanggal kelahiran, waktu pemesanan tiket , waktu reservasi restoran,jadwal meeting,dll.

Cara Membuat Date Picker :
- Menggunakan fungsi bawaan flutter showDatePicker
- Fungsi showDate Picker memiliki tipe data future
- Menampilkan dialog material design date picker

#### 2. Color Picker
Widget dimana user bisa memilih color dan penggunaan color picker bisa digunakan untuk berbagai macam kondisi.
Cara Membuat Color Picker :

- Menggunakan packages flutter_collorpicker
- Menambahkan packages flutter_colorpicker di pubspec.yaml
- Mempersiapkan variable
- Membangun UI
- Menambahkan fungsi showDialog di dalam onPressed dengan return widget AlertDialog
- Import packages flutter_colorpicker dalam file dart
- Membuat kode untuk penggunaan packages flutter_colorpicker.

#### 3. Flie Picker
Kemampuan widget untuk mengakses storage dan memilih serta membuka flie.

Cara Membuat File Picker :

- Menggunakan packages file_picker dan open_file
- Menambahkan packages file_picker dan open_file di pubspec.yaml
- Import packages file_picker dan open_file dalam file dart
- Membangun UI
- Membuat fungsi untuk mengexplore dan memilih files dari storage
- Memanggil fungsi _pickFile di dalam onPressed
- Membuat fungsi untuk membuka files yang telah dipilih
- Mengambil file dari object result dan Memanggil fungsi _openFile dalam fungsi _pickFile