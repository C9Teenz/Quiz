import 'dart:math';

void main(List<String> args) {
  List<int> nList = [1, 5, 3, 7, 9, 2, 6];
  print('nilai tertinggi dari list diatas adalah: ${nList.reduce(max)}');
  print('nilai tertinggi dari list diatas adalah: ${nList.reduce(min)}');
}
