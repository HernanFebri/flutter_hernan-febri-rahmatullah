# (26) MVVM Architecture
## Data Diri

Nomor Urut : 1_010FLC_34
Nama : Hernan Febri Rahmatullah

## Summary

#### 1. MVVM -> Model-View ViewModel
Memisahkan logic dengan tampilan(View) kedalam ViewModel

- Keuntungan 1 Reusability
    jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa menggunakan ViewModel yang sama

- Keuntungan 2 Maintainability
    mudaha dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic

- Keuntungan 3 Testability
    pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian

***

#### 2. Struktur Direktori
- Model memiliki 2 bagian, yaitu bentuk data yang akan digunakan dan sumber dari data tersebut

- Tiap screen diletakkan dalam sebuah direktori yang di dalamnya terdapat View dan ViewModel

***

#### 3. Model
- Bentuk data yang akan digunakan, dibuat dalam bentuk class

- Data-data yang dimuat, diletakkan pada property

***

#### 4. ViewModel
- Menyimpan data-data dan logic yang diperlukan halaman ContactScreen

- Jika widget lain memerlukan logic yang sama, dapat menggunakan ViewModel ini juga

***

#### 5. Mendaftarkan ViewModel
- Menggunakan MultiProvider agar dapat menggunakan banyak ViewModel

- MaterialApp sebagai child utama

***

#### 6. Menampilkan data di View
- Letakkan pada bagian build

- Menggunakan getters yang ada pada ViewModel

- Data dapat langsung ditampilkan pada widgets

***