# (22)  Flutter State Management (BloC)
## Data Diri

Nomor Urut : 1_010FLC_34
Nama : Hernan Febri Rahmatullah

## Summary
#### 1. Declarative UI
Flutter memiliki sifat declarative yang artinya flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini.
***
#####State
- State adalah ketika widget sedang aktif dan widget tersebut menyimpan data di memori.
- Flutter akan membangun ulang UI nya ketika ada state atau data yang berubah
- Ada 2 jenis state dalam flutter , ephemeral state dan app state
***
#####Ephemerah State
- Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widget nya, contohnya:
    * PageView
    * BottomNavigationBar
    * Switch Button.
- Tidak perlu state management yang kompleks
- Hanya membutuhkan StatefullWidget dengan menggunakan fungsi setState()
***
#####AppState
- Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, contohnya:
    * Login info
    * Pengaturan preferensi pengguna
    * Keranjang belanja, dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda
***
#### 2. setState
setState fungsinya untuk memberitahu framework bahwa ada object yang berubah pada State, kemudian akan melakukan build ulang pada Widget tersebut.
***
#### 3. Provider
Provider merupakan state management yang paling sederhana dan mudah digunakan. Provider menyediakan sebuah teknik mengolah state yang dapat digunakan untuk memanage data didalam aplikasi.
***
#### 4. BloC
BloC yaitu memisahkan antara business logic dengan UI. Lalu Cara kerja BloC:
- Menerima event sebagai input
- Dianalisa dan Dikelola di dalam BloC
- Menghasil State sebagai Output
