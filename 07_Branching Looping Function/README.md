# (07) Branching Looping Function
## Data Diri

Nomor Urut : 1_010FLC_34
Nama : Hernan Febri Rahmatullah

## Summary
#### 1. Pengambilan Keputusan
    Pengambilan Keputusan adalah menentukan alur program pada kondisi tertentu. Contohnya :
        a. IF
            - Memerlukan nilai bool(dari operator logical atau comparison)
            - Menjalankan bagian proses jika nilai bool bernilai true
        b. IF-ELSE
            - Berjalan dengan if
            - Menambahkan alternatif jika nilai bool adalah false
        c. Sisipan ELSE-IF
            - Berjalan dengan if
            - Menambah alternatif jika nilai bool adalah false
            - Menambah pengujian nilai bool lain

#### 2. Perulangan
    Perulangan adalah menjalankan proses berulang kali. Contohnya :
        a. For
            - Diketahui beberapa kali perulangan terjadi
            - Memerlukan nilai awal
            - Memerlukan nilai bool, jika true maka perulangan dilanjutkan
            - Memerlukan pengubahan nilai
        b. While
            - Tidak diketahui beberapa kali perulangan terjadi 
            - Memerlukan nilai bool, jika true maka perulangan dilanjutkan
        c. Do-While
            - Mengubah bentuk while
            - Proses dijalankan minimum sekali, akan diteruskan jika nilai bool adalah true
#### 3. Fungsi
    Fungsi adalah kumpulan kode yang dapat digunakan ulang. Contohnya :
        a. Membuat Fungsi
            tipe_data nama_fungsi(){
                // perintah yang dijalankan saat fungsi dipanggil
            }
        b. Memanggil Fungsi
            nama_fungsi();
        c. Fungsi Dengan Parameter
            Mengirim data saat menjalankan fungsi
            tipe_data nama_fungsi(tipe_data nama_parameter){
                // perintah yang dijalankan saat fungsi dipanggil
            }
        d. Fungsi Dengan Return
            Memberi nilai fungsi pada saat dipanggil
            tipe_data nama_fungsi(tipe_data nama_parameter){
                // perintah yang dijalankan saat fungsi dipanggil return nulai;
            }