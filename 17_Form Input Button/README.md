# (17)  Form Input Button
## Data Diri

Nomor Urut : 1_010FLC_34
Nama : Hernan Febri Rahmatullah

## Summary
#### 1. Form
    Form yaitu menerima isian data dari pengguna dan isian data dapat lebih dari satu. Cara membuat form :
    - Menggunakan StatefulWidget
    - Keadaan form disimpan menggunakan GlobalKey<FormState>

    //property
    var formKey = GlobalKey<FormState>();

    //build
    Form(
        key: formKey,
        child: inputWidgets,
    );

#### 2. Input
    Form input di flutter dinamakan dengan textfield,karena sebagai fungsi untuk mengirim data ke database. Cara membuat textfield :
    - Data diambil menggunakan TextEditingController
    - Isian data berupa teks

    //property
    var inputController = TextEditingController();

    //build
    TextField(
        controller: inputController,
    );

#### 3. Button
    Bersifat seperti tombol dan dapat melakukan sesuatu saat ditekan.Seperti :
    - ElevatedButton
        Tombol yang timbul dan jika ditekan akan menjalankan onPressed

        ElevatedButton(
            child: const Text('Submit'),
            onPressed: (){
                //lakukansesuatu
            },
        );

    - IconButton
        Tombol yang hanya menampilkan icon dan jika ditekan akan menjalankan onPressed

        IconButton(
            icon: const Icon(Iconds.add),
            onPressed: (){
                //lakukansesuatu
            },
        ),