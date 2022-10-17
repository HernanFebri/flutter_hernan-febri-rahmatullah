# (27) Finite State Machine & Unit Testing
## Data Diri

Nomor Urut : 1_010FLC_34
Nama : Hernan Febri Rahmatullah

## Summary

#### 1. Apa itu Finite State Machine?
- Mesin yang memiliki sejumlah state
- Tiap state menunjukkan apa yang terjadi sebelumnya
***
Contoh :
Terdapat 3 state yang menunjukkan kejadian dalam suatu proses.
- IDDLE saat tidak terjadi proses
- RUNNING saat proses sedang berjalan
- ERROR saat proses gagal diselesaikan
***
Contoh Sukses :
- IDDLE berubah menjadi RUNNING saat proses berjalan
- RUNNING kembali menjadi IDDLE saat proses selesai
***
Contoh Gagal :
- IDDLE berubah menjadi RUNNING saat proses berjalan
- RUNNING menjadi ERROR saat terjadi kegagalan
- ERROR kembali menjadi IDDLE
***

#### 2. Implementasi pada View-Model
- Menambah Enum
    Membuat enum untuk masing masing state:
    * none saat IDDLE
    * loading saat RUNNING
    * error saat ERROR

- Menambah Getter-Setter
    Membuat getter-setter untuk menyimpan state dari widget
- Gunakan State
    Tiap proses yang perlu state tersebut, dapat memanfaatkannya
***

#### 3. Implementasi pada Widget
- Perbedaan Tampilan Tiap State
    * Informasi finite state dapat berguna untuk menentukan seperti apa tampilan yang dimunculkan
    * Saat state menunjukkan RUNNING, maka ditampilkan progress indicator
    * Saat state menunjukkan IDDLE setelah RUNNING, maka ditampilkan data yang didapatkan
    * Saat state menunjukkan ERROR, maka ditampilkan pesan yang menunjukkan bahwa proses tidak dapat diselesaikan

***

#### 4. Apa itu Unit Test ?
- Salah satu jenis pengujian pada perangkat lunak
- Pengujian dilakukan pada unit dalam perangkat lunak
- Unit yang dimaksud umumnya adalah fungsi atau method

***

#### 5. Tujuan Unit Test
- Memastikan fungsi dapat mengolah berbagai jenis input
- Memastikan hasil dari suatu fungsi atau method sudah sesuai 
- Menjadi dokumentasi

***

#### 6. Apa itu Mocking ?
- Proses yang terikat dengan sistem eskternal dapat mempengaruhi berjalannya pengujian
- Pengaruh tersebut dapat mengganggu proses pengujian
- Dilakukan mocking untuk menghindari masalah-masalah tersebut
***