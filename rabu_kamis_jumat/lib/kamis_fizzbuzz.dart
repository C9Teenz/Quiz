void main(List<String> args) {
  int i;
  for (i = 1; i >= 1 && i <= 15; i++) {
    if (i % 3 == 0 && i % 5 != 0) {
      print('fizz');
    } else if (i % 3 != 0 && i % 5 == 0) {
      print('buzz');
    } else if (i % 3 == 0 && i % 5 == 0) {
      print('fizzbuzz');
    } else {
      print(i);
    }
  }
}
