void main (){
  int nilai = 0;
  String hasil;

  if(nilai > 70){
    hasil = "A";
  } else if(nilai > 40){
    hasil = "B";
  } else if(nilai > 0){
    hasil = "C";
  } else{
    hasil = " ";
  }
  
  print("Hasil yang anda dapatkan adalah : $hasil");
}