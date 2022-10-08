import 'dart:io';

void main(List<String> args) {
  print('Masukkan angka: ');
  String? a = stdin.readLineSync();
  if (a != null) {
    int i = int.parse(a);
    print('nilai dactorial dari $i adalah ${functionFactorial(i)}');
  }
}

functionFactorial(int i) {
  if (i == 1) {
    return 1;
  }
  return i * functionFactorial(i - 1);
}
