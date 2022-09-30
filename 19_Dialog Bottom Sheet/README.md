# (19)  Dialog Bottom Sheet
## Data Diri

Nomor Urut : 1_010FLC_34
Nama : Hernan Febri Rahmatullah

## Summary
#### 1. Aplikasi Task Management
    Menambahkan dan menghapus kegiatan

- TODO 1 : Membuat model untuk informasi yang mau disimpan, buat folder models dan di dalamnya buat file dart baru task_model.dart
***
- TODO 2 : Membuat Task Screen, buat folder screens di dalamnya buat file dart baru task_screen.dart
***
- TODO 3 : Membuat Empty Screen, buat file dart baru empt_task_screen.dart di folder screens
***
- TODO 4 : Tambahkan package provider di pubspec.yaml
***
- TODO 5 : Membuat Task Manager, buat file dart baru task_manager.dart di dalam folder models. Tambahkan method deletTask dan addTask
***
- TODO 6 : (main.dart) menambahkan TaskManager sebagai provider
***
- TODO 7 : (task_screen.dart) membuat fungsi buildTaskScreen, akan me-return antara Task Screen yang ada data nya atau yang kosong dan panggil fungsi nya di body
***
- TODO 8 : Membuat Task Item Screen, buat file dart baru task_item_screen.dart di dalam folder screens dan tambahkan properti onCreate
***
- TODO 9 : (task_screen.dart) buat FloatingAactionButton, untuk navigasi ke TaskItemScreen
***
- TODO 10 : (task_item_screen.dart) menambahkan state properti, initSTate, dan dispose
***
- TODO 11 : (task_item_screen.dart) membuat buildNameField dan panggil fungsi nya di dalam ListView
***
- TODO 12 : (task_item_screen.dart) membuat buildButtom dan panggil fungsinya di dalam ListView
***
- TODO 13 : Membuat Task Item Card, buat folder baru components lalu didalamnya buat file baru task_item_card.dart
***
- TODO 14 : (task_screen.dart) menambahkan call back handler di ElevatedButton pada buildButton, dan menambahkan package uuid
***
- TODO 15 : Membuat Task List Screen, dalam folder screens buat file dart baru task_list_screen.dart. Dan tambahkan dibuild TaskScreen (task_screen.dart)
***
- TODO 16 : (task_list_screen.dart) menambahkan properti yang dibutuhkan pada TaskItemCard untuk melihat task yang sudah dibuat.

#### 2. AlertDialog
    - Untuk tampilan android dari material design
    - Menginformasikan pengguna tentang situasi tertentu
    - Bisa digunkan untuk mendapatkan input user
    - Membutuhkan helper method showDialog

- TODO 17 : (task_item_card.dart) menambahkan Alert Dialog,memanggil fungsi showDialog,showDialog membutuhkan context dan builder dan di builder yang akan mereturn AlertDialog
***
- TODO 18 : (task_item_card.dart) membuat properti onPressed
***
- TODO 19 : (task_list_screen.dart) menambahkan fungsi onPressed pada TaskItemCard, pada body fungsi nya tambahkan method deleteTask,Navigator.pop(context), dan ScaffoldMessenger 
#### 3. Bottom Sheet
    - Seperti dialog tetapi muncul dari bawah layar aplikasi
    - Menggunakan fungsi bawaan flutter showModalBottomSheet
    - Membutuhkan dua properti, yaitu context dan builder

- TODO 20 : (task_screen.dart) membuat bottom sheet
***
- TODO 21 : Buat file dart baru profile_sheet.dart di dalam folder components dan buat konten-kontennya
***
- TODO 22 : (task_screen.dart) mengganti Container pada builder showModalBottomSheet menjadi ProfileSheet()