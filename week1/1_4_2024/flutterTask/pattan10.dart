import 'dart:io';

void main(List<String> args) {
  int n = 5;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n - i; j++) {
      stdout.write(" ");
    }
    for (int j = i; j >= 0; j--) {
      stdout.write(j);
    }
    for (int j = i; j > 0; j--) {
      stdout.write(j);
    }
    print("");
  }
}
