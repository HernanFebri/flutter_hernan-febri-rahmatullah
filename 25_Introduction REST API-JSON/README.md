
# (25) Introduction REST API-JSON serialization/deserialization
## Data Diri

Nomor Urut : 1_010FLC_34
Nama : Hernan Febri Rahmatullah

## Summary
#### 1. REST API
- Arsitektural yang memisahkan tampilan dengan proses bisnis
- Bagian tampilan dengan proses bisnis berkirim data melalui HTTP Request

***

#### 2. HTTP
Protokol yang di gunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web.

- Pola Komunikasi
    * Client mengirim request
    * Server mengolah dan membalas dengan memberi response

***

#### 3. DIO
Sebagai HTTP Client lalu dio di manfaatkan untuk melakukan REST API

***

#### 4. Serialisasi JSON
- Mengubah struktur data ke bentuk JSON
    menggunakan fungsi jsonEncoded dari package dart:convert
- Mengubah bentuk JSON ke struktur data
    menggunakan fungsi jsonDecode dari package dart:convert