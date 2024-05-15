import 'dart:io';

void main(List<String> args) {
  int n = 5;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n - i; j++) {
      stdout.write(" ");
    }
    for (int j = 1; j < i; j++) {
      stdout.write(String.fromCharCode(j + 65));
    }
    for (int j = 0; j < i; j++) {
      stdout.write(String.fromCharCode(j + 65));
    }
    print("");
  }
}
