# (20)  Flutter Navigation
## Data Diri

Nomor Urut : 1_010FLC_34
Nama : Hernan Febri Rahmatullah

## Summary
#### 1. Navigation
    Navigation adalah berpindah dari halaman satu ke halaman lain.

#### 2. Navigation Dasar
- Perpindahan halaman menggunakan Navigator.push()
- Kembali ke halaman sebelumnya menggunakan Navigator.pop()
- Mengirim data ke Halaman baru 
***
    ElevatedButton(
    child: const Text('Go To About Page'),
    onPressed: (){
        //saat tombol ditekan
        //pindah ke halaman AboutScreen dengan parameter
        Navigator.of(context).push(
            MaterialpPageRoute(
                builder: (_) => const AboutScreen(parameter: 'Hore'),
            ),
        );
    },
    );
***
    class AboutScreen extends StatelessWidget {
    //property yang akan menerima parameter
    final String parameter;
    const AboutScreen({Key? key, required this.parameter}) : super(key : key);

    @override
    Widget build(BuildContext context){
        return ...;
    }}

#### 3. Navigation dengan Named Routes
- Perpindahan halaman menggunakan Navigator.pushNamed()
- Kembali ke halaman sebelumnya menggunakan Navigator.pop()
- Mendaftarkan Route
    - Tambahkan intialRoute dan routes pada MaterialApp
    - Tiap route adalah fungsi yang membentuk halaman