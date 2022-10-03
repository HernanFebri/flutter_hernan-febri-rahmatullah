# (21)  Flutter State Management (Provider)
## Data Diri

Nomor Urut : 1_010FLC_34
Nama : Hernan Febri Rahmatullah

## Summary
#### 1. Pengertian State
- Data yang dapat dibaca saat pembuatan widget
- Dapat berubah saat widget sedang aktif
- Hanya dimiliki oleh StatefullWidget
***

#### 2. Kenapa Perlu Global State?
- Agar antara widget dapat memanfaatkan state yang sama dengan mudah.
- Memanfaatkan State : 
    * Dibuat sebagai property dari class
    * Digunakan pada widget saat build
- Mengubah State :
    * Menggunakan method setState
***
#### 3. Global State
    State biasa yang dapat digunakan pada seluruh widget
- Provider :
    * State Management
    * Perlu di install agar dapat digunakan
